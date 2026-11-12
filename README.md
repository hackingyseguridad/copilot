### Copilot Office 365: uso básico y demostración práctica

#

<img style="float:left" alt="http://hackingyseguridad.com/" src="https://github.com/hackingyseguridad/copilot/blob/main/copilot.png">

#

> Explicación y uso fácil de **Copilot en Office 365 (Copilot Chat), sin licencia PRO**.


### Índice

1. [Trabajar con archivos en Copilot](#1-trabajar-con-archivos-en-copilot)
   - [1.0 Cargar ficheros desde OneDrive](#10-cargar-ficheros-desde-onedrive-paquete-office)
   - [1.1 Prompts básicos](#11-prompts-básicos-analizar-extraer-informes-resúmenes)
   - [1.2 Prompts e instrucciones reutilizables](#12-prompts-e-instrucciones-reutilizables)
   - [1.3 SKILL.md y AGENTS.md para automatizar tareas](#13-skillmd-y-agentsmd-para-automatizar-tareas)
   - [1.4 Plantilla de instrucciones para informes](#14-plantilla-de-instrucciones-para-obtener-un-informe--formato-de-documento)
   - [1.5 Agentes instalados ya en Copilot](#15-agentes-instalados-ya-en-copilot)
2. [Seguridad y revisión de resultados](#2-seguridad-y-revisión-de-resultados)
   - [2.1 Detectar errores e información inventada](#21-detectar-posibles-errores-o-información-inventada)

---

### Agenda

| Bloque | Contenido | Tiempo |
|---|---|---|
| Introducción | Qué es Copilot sin licencia PRO y qué puede hacer | 5 min |
| 1.0 | Cargar ficheros desde OneDrive | 5 min |
| 1.1 | Prompts básicos | 7 min |
| 1.2 | Prompts reutilizables | 5 min |
| 1.3 | PROMPT.txt / AGENTS.docx / SKILL.docx | 10 min |
| 1.4 | Plantilla de informe | 5 min |
| 2.0 | Seguridad y revisión de resultados | 8 min |
| Cierre | Resumen y preguntas | 5 min |
| | **Total** | **≈ 50 min** |


---

### Introducción:

### Introducción: Microsoft 365 Copilot Básico corporativo

**Microsoft 365 Copilot Chat Básico (sin licencia adicional de Microsoft 365 Copilot)** permite utilizar inteligencia artificial en tareas habituales de oficina, siempre dentro de las funcionalidades habilitadas por la empresa:  
[PROMPT.txt](https://github.com/hackingyseguridad/copilot/blob/main/PROMPT.txt)
con respuesta rápida: 
1. **Consultas y búsquedas:** responder preguntas, resolver dudas, explicar conceptos y buscar información en Internet.
2. **Redacción y creación de contenido:** elaborar, corregir, resumir y traducir textos, correos, informes, propuestas y presentaciones.
3. **Análisis de documentos:** trabajar con archivos Word, Excel, PDF y PowerPoint adjuntos, extraer información, comparar documentos e identificar diferencias.
4. **Análisis de datos:** interpretar tablas, identificar tendencias, obtener conclusiones y elaborar recomendaciones.
5. **Prompts e instrucciones reutilizables:** utilizar plantillas, documentos de contexto y criterios predefinidos para estandarizar tareas y formatos de respuesta.
6. **OneDrive:** utilizar archivos corporativos accesibles, según los permisos y las funcionalidades habilitadas.

con razonamiento profundo:
1. **Seguridad corporativa:** aplicar las políticas de protección de datos, acceso y seguridad establecidas por la organización.
2. Programación y scripts: generar, corregir, optimizar y explicar código en Python, Bash, PowerShell, JavaScript, SQL, etc.
3. Ciberseguridad y vulnerabilidades: analizar CVE, resultados de Nmap, Nessus y OpenVAS, identificar riesgos y proponer mitigaciones.
4. Configuraciones de equipos: revisar configuraciones de routers, switches, firewalls, VPN y servidores, detectando errores y problemas de seguridad.
5. Archivos de configuración: validar, corregir y generar JSON, YAML, XML, CSV, INI y otros formatos.
6. Redes y protocolos: analizar configuraciones de DNS, BGP, TLS, IPsec, HTTP, APIs y reglas de firewall.
7. Logs y bases de datos: analizar registros, detectar anomalías, generar consultas SQL y extraer información.
8. Automatización y documentación: crear procedimientos, informes técnicos, comparar configuraciones y reutilizar instrucciones mediante prompts.
9. Imágenes y gráficos: crea imágenes, mejor seleccionando el modelo GPT 5.6 Sol en modo razonamiento profundo.
10. Presentaciones PowerPoint, mejor seleccionando el modelo GPT 5.6 Sol en modo pensar razonamiento profundo.

**Limitaciones:** sin la licencia completa de Microsoft 365 Copilot, no se dispone de integración avanzada generalizada con Word, Excel, Outlook, Teams y SharePoint, ni de acceso automático a toda la información corporativa. Algunas funciones dependen de la configuración empresarial.

### Uso de archivos de instrucciones: AGENTS.docx y SKILL.docx

| # | Nombre de fichero | Descripción |
|---|---|---|
| 1 | `AGENTS.doc` | Documento con definición/configuración de agentes (prompts o roles) para usar con Copilot. |
| 2 | `PROMPT.txt` | Fichero de texto con los PROMPTs (instrucciones guardadas) utilizados en el proyecto. |
| 3 | `SKILL.doc` | Documento que define una "skill" (habilidad) de Copilot, orientada a la generación de informes de pentest. |
| 4 | `cifrados.pdf` | Documento PDF sobre cifrados (algoritmos, técnicas o apuntes de criptografía). |
| 5 | `cve2026.txt` | Listado en texto de CVEs (entradas del año 2026 u origen del script). |
| 6 | `cve2026.xls` | Hoja de cálculo con datos de CVEs (tabla estructurada para análisis). |
| 7 | `hallazgos.xml` | Fichero XML con hallazgos de seguridad (resultados de análisis/pentest fqdn). |
| 8 | `hallazgos2.xml` | Versión alternativa/actualizada de los hallazgos (resultados de análisis/pentest web). |
| 9 | `informe.doc` | Documento de informe (plantilla o ejemplo de informe de seguridad/pentest). |

Podremos utilizar ficheros de instrucciones en Microsoft 365 Copilot básico: 

1. AGENTS.docx: define instrucciones generales de trabajo para agentes de IA.
2. SKILL.docx: describe habilidades, tareas y procedimientos específicos.

Aunque Copilot básico no interpreta ni guarda estos archivos como configuraciones de agentes, podemos adjuntarlos como documentos de referencia e indicarle que siga sus instrucciones en la sesión actual. ( permite anexar y usar tres archicos maximo, por instruccion)

Como demostración práctica, cargaremos un archivo Excel con datos y un fichero AGENTS.doc con las especificaciones de trabajo, solicitando a Copilot: «Analiza el Excel siguiendo las instrucciones de AGENTS.doc y genera un informe con la estructura, los criterios y el formato especificados». De esta forma, podremos demostrar cómo utilizar instrucciones reutilizables para automatizar parcialmente tareas de análisis y generación de informes, le sacaremos el máximo posible, sin necesidad de una licencia adicional de Copilot, siempre que la configuración de la empresa permita adjuntar estos archivos.

### 1. Trabajar con archivos en Copilot

SharePoint: es la nube, para poder compartir datos en la empresa

OneDrive: es la nube, para "one", para guardar datos personales

### 1.0 Cargar ficheros desde OneDrive (paquete Office)

- Qué formatos se pueden usar: Word, Excel, PowerPoint, PDF, .TXT.
- Cómo adjuntar un fichero desde OneDrive a la conversación de Copilot, carpeta /Home.
- Diferencia entre adjuntar un fichero o arrastrarlo y pegar texto en el chat.
- Límites habituales: tamaño y número de ficheros por conversación.
- **Demo:** cargar un documento Word y un Excel de ejemplo.

### 1.1 Prompts básicos (analizar, extraer, informes, resúmenes)

Estructura recomendada de un buen prompt: **rol + tarea + contexto + formato de salida**.

```text
Word: informe.doc, Analiza este documento y genera un resumen ejecutivo, en un párrafo muy breve y usa para ello lenguaje profesional orientado a dirección.
```

```text
Excel: cve2026.xls, filtra las vulnerabilidades para SSH en 2026 de gravedad crítica; Genera una tabla de dos columnas, una con el CVE y la otra columna con la descripción.
```

```text
pdf: cifrados.pdf,  analiza el informe y haz una tabla como resumen ejecutivo con los protocolos y cifrados recomendados / seguros, para HTTPS.
```

### 1.2 Prompts e instrucciones reutilizables

- Guardar los prompts que funcionan en un fichero propio (`PROMPT.txt`) para reutilizarlos.
- Usar marcadores sustituibles: `[pdf]`, `[Word]`, `[Excel]`...
- Opciones de reutilización en Copilot: biblioteca de prompts y copiar/pegar desde fichero.

[PROMPT.txt](https://github.com/hackingyseguridad/copilot/blob/main/PROMPT.txt)

```text
Copia y reutiliza en Copilot el PROMPT : 
```




### 1.3 SKILL.md y AGENTS.md para automatizar tareas

- Qué es un `SKILL.doc`: instrucciones paso a paso para una tarea concreta.
- Qué es un `AGENTS.doc`: premisas, reglas generales y comportamiento esperado del asistente.
- Cómo usarlos en Copilot sin licencia PRO: adjuntar el fichero y pedir que siga sus instrucciones.
- Ejecutar varias tareas encadenadas y obtener un informe con formato fijo.

```text
Lee el fichero AGENTS.doc adjunto y aplica para esta sesión sus instrucciones ahí descritas.
Lee el fichero SKILL.doc adjunto y entrega el informe resultado con el formato de informe indicado.
```

### 1.4 Plantilla de instrucciones para obtener un informe / formato de documento

Plantilla base reutilizable:

```text
con el fichero de hallazgos.xml y sobre cada caso de vulnerabilidad, rellena esta plantilla: 
```

```markdown
# Informe: [TÍTULO]

## 1. Resumen ejecutivo
(máx. 5 líneas)

## 2. Hallazgos principales
(lista numerada)

## 3. Descripción y datos de la vulnerabilidad y cifras clave
(tabla)

## 4. Riesgos y recomendaciones
(lista priorizada)

## 5. Próximos pasos
(responsable y fecha)
```

- Pedir a Copilot que rellene esta plantilla con el contenido del fichero cargado.
- Exportar el resultado a Word, PDF o a PowerPoint.
- **Demo:** generar un informe completo a partir de un fichero con esta plantilla.

---


Seleccionamos GPT 5.6 Sol en modo razonamiento profundo, anexamos/subimos los ficheros de hallazgos y la SKILL.doc

```text
analiza los ficheros hallazgos.xml y hallazgos2.xml ; Lee y usa las especificaciones y habilidades dadas en el fichero SKILL.doc y genera los informes finales, guárdalos en formato Word, con todas las evidencias, detalle y descripciones necesarias disponibles
```

### 1.5 Agentes instalados ya en Copilot

Agentes declarativos, especializados disponibles en la licencia actual de Copilot:

| Agente | Qué hace |
|---|---|
| Workflows (Frontier) | Crea flujos de trabajo automatizados mediante lenguaje natural, sin programar. |
| Learning | Recomienda formación personalizada en IA y otras competencias profesionales. |
| Workforce Insights (Frontier) | Analiza información organizativa, equipos, empleados y competencias profesionales. |
| SharePoint list agent | Convierte información de conversaciones de Copilot en listas estructuradas de SharePoint. |
| Prompt Coach | Ayuda a redactar, corregir y optimizar prompts para obtener mejores resultados. |
| Idea Coach | Facilita lluvias de ideas, desarrolla propuestas y ayuda a planificar proyectos. |
| Writing Coach | Mejora la redacción, claridad, estructura y tono de textos y documentos. |
| Learning Coach | Actúa como tutor interactivo pa |


### 2. Seguridad y revisión de resultados

### 2.1 Detectar posibles errores o información inventada

- Qué son las "alucinaciones": respuestas plausibles pero falsas.
- Señales de alerta: datos demasiado exactos, fuentes que no se pueden localizar, afirmaciones sin respaldo en el fichero.
- Técnicas de control:

```text
Indica en qué página o sección del documento se apoya cada afirmación.
Si algo no aparece en el documento, dilo explícitamente en lugar de suponerlo.
```

- **Demo:** pedir a Copilot que cite la fuente de cada dato y verificar uno de ellos.

---

### Resumen final

1. Cargar el fichero desde OneDrive (carpeta /home).
2. Pedir con un prompt claro: rol, tarea, contexto y formato.
3. Reutilizar prompts, `SKILL.md` y plantillas.
4. Usar solo herramientas autorizadas y respetar la clasificación de la información.
5. Revisar siempre el resultado antes de compartirlo.


#
http://www.hackingyseguridad.com/
#
