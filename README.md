### Copilot Office 365: uso básico y demostración práctica

> Explicación y uso fácil de **Copilot en Office 365 (Copilot Chat), sin licencia PRO**.

| | |
|---|---|
| **Duración** | 30 min (mínimo) – 45 min (máximo) |
| **Formato** | Explicación breve + demostración  |
| **Nivel** | Básico |
| **Requisitos** | Cuenta corporativa de Office 365 y acceso a OneDrive |

---

<img align="left" alt="hackingyseguridad.com" src="https://github.com/hackingyseguridad/copilot/blob/main/copilot.png" style="margin-bottom: 20px;">


### Índice

1. [Trabajar con archivos en Copilot](#1-trabajar-con-archivos-en-copilot)
   - [1.0 Cargar ficheros desde OneDrive](#10-cargar-ficheros-desde-onedrive-paquete-office)
   - [1.1 Prompts básicos](#11-prompts-básicos-analizar-extraer-informes-resúmenes)
   - [1.2 Prompts e instrucciones reutilizables](#12-prompts-e-instrucciones-reutilizables)
   - [1.3 SKILL.md y AGENTS.md para automatizar tareas](#13-skillmd-y-agentsmd-para-automatizar-tareas)
   - [1.4 Plantilla de instrucciones para informes](#14-plantilla-de-instrucciones-para-obtener-un-informe--formato-de-documento)
2. [Seguridad y revisión de resultados](#2-seguridad-y-revisión-de-resultados)
   - [2.0 Cuenta y herramientas autorizadas](#20-utilizar-la-cuenta-y-las-herramientas-autorizadas-por-la-empresa)
   - [2.1 Clasificación de la información](#21-comprobar-qué-información-se-puede-cargar-según-su-clasificación)
   - [2.2 Revisar antes de compartir](#22-revisar-cifras-interpretaciones-y-referencias-antes-de-compartir-un-informe)
   - [2.3 Detectar errores e información inventada](#23-detectar-posibles-errores-o-información-inventada)

---

### Agenda

| Bloque | Contenido | Tiempo |
|---|---|---|
| Introducción | Qué es Copilot sin licencia PRO y qué puede hacer | 2 min |
| 1.0 | Cargar ficheros desde OneDrive | 5 min |
| 1.1 | Prompts básicos | 7 min |
| 1.2 | Prompts reutilizables | 5 min |
| 1.3 | SKILL.md / AGENTS.md | 7 min |
| 1.4 | Plantilla de informe | 5 min |
| 2.0 | Seguridad y revisión de resultados | 8 min |
| Cierre | Resumen y preguntas | 5 min |
| | **Total** | **≈ 45 min** |


---

### Introduccion:

**Microsoft 365 Copilot básico (sin licencia):** permite utilizar inteligencia artificial para realizar tareas habituales de oficina, como responder preguntas, resolver dudas, explicar conceptos, buscar información, redactar, corregir y traducir textos, resumir documentos, analizar archivos Word, Excel, PDF y PowerPoint (cuando esté habilitado), extraer información, generar informes, tablas, conclusiones y recomendaciones, utilizar prompts e instrucciones reutilizables para estandarizar tareas y formatos de respuesta, así como comparar documentos, identificar diferencias y extraer los puntos más relevantes.

Podremos utilizar ficheros de instrucciones en Microsoft 365 Copilot básico, como AGENTS.md (convención abierta para definir instrucciones de trabajo dirigidas a agentes de IA), SKILL.md (convención para describir habilidades o procedimientos específicos). Aunque Copilot básico no interpreta estos archivos automáticamente como configuraciones de agentes, podemos adjuntarlos como documentos de referencia e indicarle que siga sus instrucciones. Como demostración práctica, cargaremos un archivo Excel con datos y un fichero AGENTS.md con las especificaciones de trabajo, solicitando a Copilot: «Analiza el Excel siguiendo las instrucciones de AGENTS.md y genera un informe con la estructura, los criterios y el formato especificados». De esta forma, podremos demostrar cómo utilizar instrucciones reutilizables para automatizar parcialmente tareas de análisis y generación de informes, sin necesidad de una licencia adicional de Copilot, siempre que la configuración de la empresa permita adjuntar estos archivos.

### 1. Trabajar con archivos en Copilot

### 1.0 Cargar ficheros desde OneDrive (paquete Office)

- Qué formatos se pueden usar: Word, Excel, PowerPoint, PDF, TXT/MD.
- Cómo adjuntar un fichero desde OneDrive a la conversación de Copilot.
- Diferencia entre adjuntar un fichero y pegar texto en el chat.
- Límites habituales: tamaño y número de ficheros por conversación.
- **Demo:** cargar un documento Word y un Excel de ejemplo.

### 1.1 Prompts básicos (analizar, extraer, informes, resúmenes)

Estructura recomendada de un buen prompt: **rol + tarea + contexto + formato de salida**.

```text
Resume el documento adjunto en 5 puntos clave para un directivo.
```

```text
Extrae del Excel adjunto las 10 filas con mayor importe y preséntalas en una tabla.
```

```text
Analiza el informe adjunto: identifica riesgos, conclusiones y acciones pendientes.
```

- **Demo:** mismo fichero, tres prompts distintos (resumen, extracción, análisis).

### 1.2 Prompts e instrucciones reutilizables

- Guardar los prompts que funcionan en un fichero propio (`prompts.md`) para reutilizarlos.
- Usar marcadores sustituibles: `[DOCUMENTO]`, `[AUDIENCIA]`, `[LONGITUD]`.
- Opciones de reutilización en Copilot: biblioteca de prompts y copiar/pegar desde fichero.

```text
Actúa como analista. Con el documento [DOCUMENTO], redacta un resumen para [AUDIENCIA]
en un máximo de [LONGITUD] palabras, con un tono formal y sin tecnicismos.
```

- **Demo:** reutilizar un mismo prompt con dos documentos diferentes.

### 1.3 SKILL.md y AGENTS.md para automatizar tareas

- Qué es un `SKILL.md`: instrucciones paso a paso para una tarea concreta.
- Qué es un `AGENTS.md`: reglas generales y comportamiento esperado del asistente.
- Cómo usarlos en Copilot sin licencia PRO: adjuntar el fichero y pedir que siga sus instrucciones.
- Ejecutar varias tareas encadenadas y obtener un informe con formato fijo.

```text
Lee el fichero SKILL.md adjunto y aplica sus instrucciones al documento [DOCUMENTO].
Entrega el resultado con el formato de informe indicado.
```

- **Demo:** un `SKILL.md` sencillo que realiza varias tareas y genera un informe.

### 1.4 Plantilla de instrucciones para obtener un informe / formato de documento

Plantilla base reutilizable:

```markdown
# Informe: [TÍTULO]

## 1. Resumen ejecutivo
(máx. 5 líneas)

## 2. Hallazgos principales
(lista numerada)

## 3. Datos y cifras clave
(tabla)

## 4. Riesgos y recomendaciones
(lista priorizada)

## 5. Próximos pasos
(responsable y fecha)
```

- Pedir a Copilot que rellene esta plantilla con el contenido del fichero cargado.
- Exportar el resultado a Word o a PowerPoint.
- **Demo:** generar un informe completo a partir de un fichero con esta plantilla.

---

### 2. Seguridad y revisión de resultados

### 2.0 Utilizar la cuenta y las herramientas autorizadas por la empresa

- Usar siempre la cuenta corporativa de Office 365, nunca cuentas personales.
- Usar solo las herramientas de IA aprobadas por la organización.
- Comprobar que la sesión muestra la protección de datos corporativa activa.

### 2.1 Comprobar qué información se puede cargar según su clasificación

- Revisar la política de clasificación de la empresa (pública, interna, confidencial, restringida).
- No cargar datos personales, credenciales, secretos ni información sensible no autorizada.
- Ante la duda, anonimizar o consultar con el responsable de seguridad.

### 2.2 Revisar cifras, interpretaciones y referencias antes de compartir un informe

- Contrastar las cifras con el fichero original.
- Verificar que la interpretación se corresponde con el contenido real del documento.
- Comprobar que las referencias y citas existen y dicen lo que Copilot afirma.
- Revisión humana siempre antes de enviar o publicar.

### 2.3 Detectar posibles errores o información inventada

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
