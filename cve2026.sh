#!/bin/bash
# cve2026.sh - lista los CVE de las vulnerabilidades 2026 con gravedad ALTA y CRITICA (NVD)
# Compatible con Bash 1.x. Requiere: curl, jq

API="https://services.nvd.nist.gov/rest/json/cves/2.0"

for SEV in CRITICAL HIGH
do
  for M in 01:31 02:28 03:31 04:30 05:31 06:30 07:31 08:31 09:30 10:31 11:30 12:31
  do
    MES=`echo $M | cut -d: -f1`
    DIA=`echo $M | cut -d: -f2`

    curl -s "${API}?cvssV3Severity=${SEV}&pubStartDate=2026-${MES}-01T00:00:00.000&pubEndDate=2026-${MES}-${DIA}T23:59:59.999&resultsPerPage=2000" |
    jq -r --arg s "$SEV" '.vulnerabilities[].cve | "\(.id) | \($s) | \([.descriptions[] | select(.lang=="en") | .value][0] | gsub("[\r\n]+";" ") | .[0:150])"'

    sleep 7
  done
done
