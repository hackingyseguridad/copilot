#!/bin/sh
# cve_anyo.sh - CVE por año y gravedad (NVD)
# Compatible con sh y Bash 1.x. Requiere: curl, jq

ANYO=2026
SEVERIDADES="CRITICAL HIGH MEDIUM LOW"

API="https://services.nvd.nist.gov/rest/json/cves/2.0"
TMP=/tmp/cve$$.json

# Febrero: 28 o 29 dias segun año bisiesto
FEB=28
R4=`expr $ANYO % 4`
R100=`expr $ANYO % 100`
R400=`expr $ANYO % 400`
if [ $R4 -eq 0 ]
then
  if [ $R100 -ne 0 ]
  then
    FEB=29
  fi
  if [ $R400 -eq 0 ]
  then
    FEB=29
  fi
fi

for SEV in $SEVERIDADES
do
  for M in 01:31 02:$FEB 03:31 04:30 05:31 06:30 07:31 08:31 09:30 10:31 11:30 12:31
  do
    MES=`echo $M | cut -d: -f1`
    DIA=`echo $M | cut -d: -f2`
    IDX=0
    TOTAL=1

    while [ $IDX -lt $TOTAL ]
    do
      curl -s "${API}?cvssV3Severity=${SEV}&pubStartDate=${ANYO}-${MES}-01T00:00:00.000&pubEndDate=${ANYO}-${MES}-${DIA}T23:59:59.999&resultsPerPage=2000&startIndex=${IDX}" > $TMP

      TOTAL=`jq '.totalResults' $TMP 2>/dev/null`
      if [ -z "$TOTAL" ]
      then
        TOTAL=0
      fi
      if [ "$TOTAL" = "null" ]
      then
        TOTAL=0
      fi

      jq -r --arg s "$SEV" '.vulnerabilities[].cve | "\(.id) | \($s) | \([.descriptions[] | select(.lang=="en") | .value][0] | gsub("[\r\n]+";" ") | .[0:150])"' $TMP 2>/dev/null

      IDX=`expr $IDX + 2000`
      sleep 7
    done
  done
done

rm -f $TMP

