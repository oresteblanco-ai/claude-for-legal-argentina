# CHANGELOG · claude-for-legal Argentina

> Historial de cambios del repositorio.
> Formato: fecha · archivo(s) afectado(s) · descripción del cambio · motivo.
> Las entradas más recientes van primero.
>
> Cuándo actualizar este archivo:
> - Cambio de norma listada en una sección "## Alerta normativa"
> - Modificación de un marcador o de una regla operativa
> - Agregado o eliminación de un archivo del repositorio
> - Corrección de un error normativo
> - Incorporación de un nuevo perfil de área o archivo de ejemplos
>
> Cuándo NO es necesario actualizar:
> - Correcciones tipográficas menores sin impacto en comportamiento del sistema
> - Actualizaciones de estilo sin cambio de contenido normativo

---

## Instrucción de urgencia

Cuando cambia una norma que afecta a múltiples consultas diarias (un tope indemnizatorio,
una tasa de interés, un umbral de punibilidad), actualizar primero la sección
`## Alerta normativa` del perfil afectado y registrar el cambio aquí.
No esperar a la revisión periódica.

---

## 2026

### Mayo 2026 - Skill de telegramas laborales + correcciones normativas Ley 27.742 y Ley 27.802

**Archivos nuevos:**
- `argentina/laboral/telegrama/telegramas-SKILL.md` - instrucciones operativas del skill de telegramas laborales y cartas documento; incluye proceso de tres pasos (recolección de datos, verificación normativa, consulta de modelos), formato de salida en dos bloques (texto del telegrama + referencias legales), tabla de racionalizaciones comunes con rebuttals, señales de alerta pre-entrega, y checklist de verificación al cierre; frontmatter con `name` y `description` para triggering automático
- `argentina/laboral/telegrama/tipos-de-telegrama.md` - clasificación de telegramas por grupo (1-10) con notas críticas de derogación y condiciones temporales; Grupo 7 actualizado con alertas de derogación de multas Ley 24.013 y Ley 25.345 arts. 43-48
- `argentina/laboral/telegrama/reglas-normativas.md` - 12 reglas de validación normativa post-reforma; corregidas: Regla 2 (Ley 25.323 derogada por art. 100 Ley 27.742 desde 9/7/2024, no por Ley 27.802), Regla 3 (arts. 43-48 Ley 25.345 derogados por art. 99 Ley 27.742, no solo la multa del art. 45), Regla 5 (art. 245 con tres tramos temporales: pre-30/12/2023, 30/12/2023-5/3/2026, desde 6/3/2026)
- `argentina/laboral/telegrama/modelos/bloque-01-registro.md` - modelos de registro de relación laboral; art. 11 Ley 24.013 reemplazado por arts. 7 y 7 bis como fundamento vigente de intimación
- `argentina/laboral/telegrama/modelos/bloque-02-estabilidad-despido.md` - modelos de estabilidad y despido; art. 45 Ley 25.345 marcado como derogado; modelo de multa por certificados reencuadrado como histórico (solo para extinciones pre-9/7/2024); nota general del art. 245 con tres tramos temporales
- `argentina/laboral/telegrama/modelos/bloque-03-salarios.md` - modelos de pago de salarios y remuneraciones; nota de horas extras corregida de "contratos iniciados desde 6/3/2026" a "actos extintivos desde 6/3/2026"
- `argentina/laboral/telegrama/modelos/bloque-04-ius-variandi.md` - modelos de modificaciones contractuales e ius variandi
- `argentina/laboral/telegrama/modelos/bloque-05-renuncia.md` - modelos de renuncia
- `argentina/laboral/telegrama/modelos/bloque-06-vacaciones-licencias.md` - modelos de vacaciones y licencias; referencia a "LCT art. 41 Ley 27.802" corregida a "Art. 41 Ley 27.802 (modifica régimen de vacaciones LCT)"
- `argentina/laboral/telegrama/modelos/bloque-07-salud-hostigamiento.md` - modelos de seguridad y salud laboral, hostigamiento y discriminación
- `argentina/laboral/telegrama/modelos/bloque-08-construccion.md` - modelos de industria de la construcción (Ley 22.250)

**Archivos modificados:**
- `argentina/laboral-CLAUDE.md` - sección "Normativa de referencia": Ley 24.013 actualizada (arts. 8-17 DEROGADOS por Ley 27.742, art. 11 DEROGADO, fundamento vigente arts. 7 y 7 bis), Ley 25.323 marcada como DEROGADA íntegramente, Ley 25.345 arts. 43-48 marcados como DEROGADOS; sección "Registración del contrato": tabla de consecuencias convertida a doble régimen temporal; art. 245 expandido a TRES regímenes (pre-30/12/2023, 30/12/2023-5/3/2026, desde 6/3/2026); sección "Certificados de trabajo": multa art. 45 Ley 25.345 marcada como DEROGADA con fecha de corte; sección "Presunciones procesales": "libro del art. 52" reemplazado por "registro de ARCA"; renuncia art. 240 actualizada con modalidad digital; licencia por maternidad art. 177 actualizada (mínimo 10 días previos, "persona gestante"); art. 80 LCT plazo corregido a 45 días hábiles; alerta normativa: cuatro tramos temporales, Ley 27.802 incorporada; módulo empleador: referencias a ARCA, diagnóstico actualizado; referencias a `ejemplos-laboral.md` eliminadas
- `argentina/CLAUDE.md` - sección "Normativa de referencia laboral": derogaciones de Ley 24.013, 25.323 y 25.345 con fecha y norma derogante; sección "employment-legal": agravantes marcados como DEROGADOS con fecha; referencia a `ejemplos-laboral.md` eliminada; tabla de routing: fila de telegramas incorporada (`laboral-CLAUDE.md` + `laboral/telegrama/telegramas-SKILL.md`); árbol del repo actualizado con `laboral/telegrama/` y eliminación de `ejemplos-laboral.md` y `evals/laboral-prescripcion-suspension-concurrente/`; AFIP reemplazado por ARCA en marcadores tributarios
- `argentina/README.md` - árbol de estructura: `laboral/telegrama/` incorporada, `ejemplos-laboral.md` eliminado, `evals/laboral-prescripcion-suspension-concurrente/` eliminado; tabla "Perfiles por área": complemento de laboral actualizado a `laboral/telegrama/`, alertas actualizadas con Ley 27.742 y Ley 27.802; instalación Paso 4 Opción A: instrucción genérica de skills para laboral; instalación Paso 6 Opción B: instrucción de Cowork con aclaración del flujo `.skill` vs `.md`; sección "Lo que podés hacer - Laboral": agravantes derogados eliminados, tres regímenes del art. 245 incorporados; sección "Contribuciones": "prescripción laboral" eliminada de áreas prioritarias de evals; encabezado `### Fuentes primarias` incorporado

**Archivos eliminados:**
- `argentina/ejemplos-laboral.md` - casos de liquidación con agravantes Ley 24.013/25.323; retirado por incompatibilidad con el régimen post-9/7/2024 (agravantes derogados); reemplazar cuando se disponga de casos actualizados al régimen vigente
- `argentina/evals/laboral-prescripcion-suspension-concurrente/` - caso de verificación de prescripción bienal y suspensiones concurrentes; retirado para revisión

**Normas afectadas:**
- Ley 27.742 (Ley de Bases, BO 8/7/2024, vigente desde 9/7/2024): arts. 99 (derogación arts. 8-17 Ley 24.013, arts. 43-48 Ley 25.345) y 100 (derogación íntegra Ley 25.323); arts. 82-83 (incorporación arts. 7 y 7 bis Ley 24.013 como fundamento vigente de intimación de registro)
- Ley 27.802 (Ley de Modernización Laboral, BO 6/3/2026): art. 51 (reforma art. 245 LCT - exclusión de vacaciones no gozadas y horas extras de la base; nuevo tope); art. 25 (reforma art. 80 LCT - tres vías de cumplimiento, plazo 45 días hábiles); art. 40 (reforma arts. 231 y 240 LCT - renuncia digital); art. 45 (reforma art. 210 LCT - certificados médicos digitales); art. 19 (reforma art. 31 LCT - solidaridad limitada a fraude); art. 9 (reforma art. 18 LCT - antigüedad en reingreso); art. 10 (reforma art. 20 LCT - pluspetición con costas solidarias)
- DNU 70/2023 (BO 30/12/2023): reforma art. 245 LCT en su primer tramo (exclusión de SAC y bonificaciones semestrales/anuales)

**Impacto en marcadores:**
- Sin cambios en marcadores canónicos. Todos los modelos de telegramas usan `[VERIFICAR CCT APLICABLE]`, `[DATO A COMPLETAR]` y `[AVANCE BAJO RESERVA]` conforme al glosario

**Normas de alta volatilidad - tabla actualizada:**
- Art. 245 LCT: entrada actualizada para reflejar los tres regímenes temporales (ver tabla al pie)

---

### Mayo 2026 - Incorporación perfil medicina legal y pericia médica forense

**Archivos nuevos:**
- `argentina/especialidades/medicina-legal-CLAUDE.md` - perfil de disciplina auxiliar para redacción y análisis de informes médico-legales periciales; cubre los fueros penal (CPPN y CPPF), civil (CPCCN) y seguridad social (Ley 24.655); adaptable a fueros provinciales con ajuste de normativa procesal local; incluye estructura estándar del informe médico-legal, lógica de análisis por institución (lesiones, imputabilidad, incapacidad, invalidez, praxis médica, amparo de salud, casos federales especiales), checklist de cierre y reglas de citación propias; colaboración técnica: Dr. Alberto Miceli - Médico Forense

**Archivos modificados:**
- `argentina/README.md` - agregada subcarpeta `especialidades/` en la tabla de estructura; agregado bloque "Medicina legal y pericia médica forense" en la sección "Lo que podés hacer desde el día uno"; agregada fila `especialidades/medicina-legal-CLAUDE.md` en tabla "Perfiles por área"; agregada fila correspondiente en tabla "Alertas de normas inestables"
- `argentina/CLAUDE.md` - estructura del repo sincronizada con README (agregados `administrativo-caba-CLAUDE.md`, `administrativo-PBA-CLAUDE.md`, `administrativo-SALTA-CLAUDE.md`, `especialidades/`, `legal.local.md.template`, `evals/`; descripción `administrativo-CLAUDE.md` actualizada a "federal"; `diagnostico-SKILL.md` actualizado a "transversal"); agregada fila `especialidades/medicina-legal-CLAUDE.md` en tabla de routing
- `argentina/setup-interview.md` - agregado Bloque 2-ter (P5-ter, P6-ter, P7-ter): configuración de organismo/rol pericial, fueros y especialidad, organismo requirente habitual
- `argentina/setup-output-TEMPLATE.md` - agregadas variables `[ORGANISMO_PERICIAL]`, `[FUEROS_PERICIAL]`, `[ESPECIALIDAD_PERICIAL]`, `[ORGANISMO_REQUIRENTE]` en tabla de variables; agregada sección condicional "Configuración medicina legal y pericia médica forense" en template de CLAUDE.md personalizado
- `argentina/fuentes.md` - agregadas tres entradas en tabla de fuentes primarias oficiales: Cuerpo Médico Forense CSJN (`csjn.gov.ar/cmfcs`), Protocolo de Estambul ONU (`ohchr.org`), ANSES normativa previsional (`anses.gob.ar`)

**Normas afectadas:** ninguna. Archivo nuevo que aplica normativa ya existente (CPPN Ley 23.984, CPPF Ley 27.063, CPCCN Ley 17.454, CP Ley 11.179, Ley 24.241, Ley 24.660, Ley 26.529, Protocolo de Estambul ONU 1999).

**Nota de implementación:** el perfil verifica el estado de implementación del CPPF distrito por distrito antes de aplicar normativa procesal; vigente desde abril 2026 en Cámaras Federales CABA y Penal Económico y en varios distritos federales del interior; pendientes Córdoba, Posadas, La Plata y justicia nacional ordinaria CABA.

---

### Mayo 2026 - Feriados trasladables 2026 y Decreto 614/2025 [URGENTE]

**Archivos modificados:**
- `argentina/plazos-SKILL.md` - incorporación del Decreto 614/2025 sobre feriados trasladables;
  traslados concretos para 2026: Día de Güemes (17/6, feriado nacional) trasladado al lunes 15/6;
  Día de la Soberanía Nacional (20/11) trasladado al lunes 23/11; impacto directo en cómputo
  de plazos procesales y administrativos durante el segundo semestre 2026

**Normas afectadas:**
- Decreto 614/2025 (BO N° 35737, 28/08/2025): incorporado con traslados de feriados para 2026

**Impacto en marcadores:**
- `[ALERTA PLAZO FATAL]`: considerar traslados del Decreto 614/2025 al computar plazos
  con vencimiento próximo al 17/6 (Güemes, corre el 15/6) y al 20/11 (Soberanía, corre el 23/11)

**Fuente:**
- Decreto 614/2025 - BO N° 35737, 28/08/2025

---

### Mayo 2026 - Tasas de interés post-Acta CNAT 2788/2024

**Archivos modificados:**
- `argentina/laboral-CLAUDE.md` - sección de tasas de interés actualizada: incorporación de la
  situación post-Acta CNAT 2788/2024; el acta deja sin efecto la recomendación del Acta
  2783/2024 y la Resolución de Cámara N° 3 del 14/03/2024, sin establecer un nuevo mecanismo
  unificado de actualización de intereses; criterio por sala: no unificado; la definición
  queda remitida al criterio de cada tribunal/sala; instrucción operativa: verificar criterio
  de la sala actuante antes de cuantificar intereses en cualquier escrito laboral

**Normas afectadas:**
- Acta CNAT 2788/2024: deroga Acta 2783/2024 y Resolución de Cámara N° 3 (14/03/2024);
  sin nuevo mecanismo unificado; criterio fragmentado por sala

**Impacto en marcadores:**
- `[VERIFICAR CRITERIO DEL FUERO: tasa de interés - post-Acta CNAT 2788/2024 - sala actuante]`:
  usar en todo escrito laboral que cuantifique intereses

**Fuente:**
- Acta CNAT 2788/2024

---

### Mayo 2026 - Cambio de denominación ARCA / Decreto 953/2024

**Archivos modificados:**
- `argentina/tributario-CLAUDE.md` - nota sobre cambio de denominación del organismo recaudador:
  la AFIP fue reemplazada por la Agencia de Recaudación y Control Aduanero (ARCA) mediante
  Decreto 953/2024 (BO 25/08/2025, vigente desde su publicación); instrucción operativa:
  usar "ARCA" en escritos y presentaciones; verificar período de transición del acto
  administrativo específico ante el que se actúa antes de adoptar la nueva denominación;
  mantener "AFIP" solo en referencias a actos, resoluciones y procedimientos anteriores
  a la fecha de publicación

**Normas afectadas:**
- Decreto 953/2024 (BO 25/08/2025): transformación de AFIP en ARCA

**Impacto en marcadores:**
- Sin cambio de marcadores. Regla operativa: ARCA para actos posteriores al 25/08/2025;
  AFIP para referencias históricas; verificar transición en cada acto administrativo concreto

**Fuente:**
- Decreto 953/2024 - BO 25/08/2025

---

### Mayo 2026 - Sincronización README con fuentes.md (Etapa 9)

**Archivos modificados:**
- `argentina/README.md` - sección "Fuentes normativas (fase 2)" reescrita para reflejar el estado actual de `fuentes.md`: tabla de conectores expandida de 4 a 6 entradas (agregados FalloBot como conector 5 y SCBA/JUBA como conector 6); agregada tabla de decisión rápida por necesidad; agregada tabla de fuentes primarias sin conector MCP (InfoLEG, normas.gba.gob.ar, SAIJ, PJN, CNACAF, SCBA, JUBA, PTN, AAIP, IGJ, DPPJ, TFN, BCRA); párrafo de cierre actualizado con referencia a `fuentes.md` para instrucciones completas

**Normas afectadas:** ninguna. Cambio de documentación.

**Impacto en conectores:** ninguno. El cambio es de visibilidad: FalloBot y normas.gba.gob.ar ya estaban en `fuentes.md`; ahora también figuran en el README.

---

### Mayo 2026 - Actualización de fuentes y conectores (Etapa 8)

**Archivos modificados:**
- `argentina/fuentes.md` - agregado conector 5 (FalloBot, `https://api.fallobot.com/mcp`): conector MCP disponible con cobertura simultánea de CSJN, SAIJ, JUBA y SCBA en tiempo real; requiere plan Pro; tabla de decisión actualizada para incluirlo como opción principal para jurisprudencia CSJN y PBA; actualizada la entrada SCBA con nota sobre expansión de cobertura JUBA (Acuerdo 4011 / Resolución RP 1651/24: Cámaras PBA desde marzo 2025, primera instancia desde junio 2025); agregado `normas.gba.gob.ar` en tabla de fuentes primarias como equivalente bonaerense de InfoLEG para normativa provincial PBA (leyes, decretos, códigos provinciales - sin API pública, acceso por fallback manual; aclaración: "Malvinas Argentinas" es el nombre del sistema, no la jurisdicción; la fuente es del Gobierno de la Provincia de Buenos Aires); agregado JUBA como entrada independiente en la tabla de fuentes primarias; numeración de conectores actualizada (SCBA pasa a ser conector 6)

**Normas afectadas:** ninguna. Los cambios son de conectores y fuentes de referencia.

**Impacto en conectores:**
- FalloBot: nuevo conector disponible (plan Pro) - cubre CSJN y PBA que antes no tenían conector MCP
- normas.gba.gob.ar: nueva fuente primaria de fallback para normativa provincial PBA
- SCBA/JUBA: cobertura ampliada a partir de 2025 por el Acuerdo 4011

---

### Mayo 2026 - Correcciones segunda auditoría (Etapa 6)

**Archivos modificados:**
- `argentina/ejemplos-civil.md` - marcador `[VERIFICAR CRITERIO VIGENTE DE LA SALA]` reemplazado por `[VERIFICAR CRITERIO DEL FUERO: ratio daño punitivo art. 52 bis LDC - sala actuante]`
- `argentina/ejemplos-laboral.md` - marcador `[VERIFICAR FÓRMULA VIGENTE]` reemplazado por `[VERIFICAR CRITERIO DEL FUERO: fórmula de cuantificación LRT vigente - resolución SRT y jurisprudencia aplicable]`
- `argentina/ejemplos-societario.md` - marcador `[VERIFICAR]` (forma corta) reemplazado por `[VERIFICAR RESOLUCIÓN REGISTRAL VIGENTE: IGJ/DPPJ - parámetros de activación de sindicatura obligatoria]`
- `argentina/tributario-CLAUDE.md` - marcador `[VERIFICAR MONTO ACTUALIZADO]` sin detalle completado: `[VERIFICAR MONTO ACTUALIZADO: multa art. 39 LPT - RG AFIP vigente]`
- `argentina/penal-CLAUDE.md` - instrucción de plazo fatal en instrucciones operativas: agregada referencia explícita al marcador A10 `[ALERTA PLAZO FATAL]` para prescripción de la acción y de la pena
- `argentina/laboral-CLAUDE.md` - instrucción de prescripción en instrucciones operativas: agregada referencia explícita al marcador A10 con ejemplo concreto art. 258 LCT
- `argentina/CLAUDE.md` - tabla de routing: agregada fila `contratos-CLAUDE.md` + `red-flags-contratos.md`; eliminada fila redundante de `red-flags-contratos.md` solo
- `argentina/diagnostico-SKILL.md` - sección 7 "Normas con verificación pendiente": agregada instrucción de emitir `[ALERTA PLAZO FATAL]` cuando el escrito involucra acción sujeta a plazo fatal, con cuatro ejemplos de uso
- `argentina/setup-output-TEMPLATE.md` - sección final: agregada nota con ejemplo de CLAUDE.md personalizado que incluye configuración administrativa

**Normas afectadas:** ninguna. Los cambios son de marcadores y referencias cruzadas.

**Impacto en marcadores:**
- `[VERIFICAR CRITERIO VIGENTE DE LA SALA]`: eliminado del repo; forma no canónica confirmada en tabla de equivalencias del glosario
- `[VERIFICAR FÓRMULA VIGENTE]`: ídem
- `[VERIFICAR]` (forma corta): ídem

---

### Mayo 2026 - Mejoras post-análisis: administrativo y glosario (Etapa 5)

**Archivos modificados:**
- `argentina/administrativo-CLAUDE.md` - sección "Configuración inicial" reescrita: variables `FUERO_HABITUAL` y `AREAS_PRACTICA_ADMINISTRATIVO` ahora usan marcador `[PENDIENTE]` con instrucción explícita y ejemplo, en lugar de texto libre sin valor asignado; marcador no canónico `[ALERTA DE PLAZO]` reemplazado por `[ALERTA PLAZO FATAL]` en sección de reglas de citación, alerta normativa e instrucciones operativas; sección "Identidad y alcance" restaurada como sección independiente
- `argentina/marcadores-GLOSARIO.md` - agregado marcador A10 `[ALERTA PLAZO FATAL]` con sintaxis, cuatro ejemplos de uso (administrativo, amparo federal, prescripción LCT, responsabilidad del Estado) y regla de uso negativa; tabla de equivalencias: agregada entrada `[ALERTA DE PLAZO]` → `[ALERTA PLAZO FATAL]`; versión actualizada a 1.1
- `argentina/CHANGELOG.md` - agregadas dos filas en tabla de normas de alta volatilidad: Decreto 1030/16 + resoluciones ONC (administrativo) y Ley 12.008 PBA (administrativo)
- `argentina/setup-interview.md` - agregado Bloque 2-bis de configuración administrativa (P5-bis a P7-bis): fuero habitual, áreas dentro de administrativo, y rol predominante (actor/demandado)
- `argentina/setup-output-TEMPLATE.md` - agregada variable `[FUERO_ADMINISTRATIVO]`, `[AREAS_ADMINISTRATIVO]` y `[ROL_ADMINISTRATIVO]` en tabla de variables; agregada sección "Configuración administrativa" en el template (análoga a la laboral y societaria); agregado ejemplo en el output mínimo
- `argentina/fuentes.md` - agregadas dos entradas en tabla de fuentes primarias oficiales: CNACAF (`cnacaf.gov.ar`) y PTN (`ptn.gov.ar`)

**Normas afectadas:** ninguna. Los cambios son de estructura, marcadores y referencias cruzadas.

**Impacto en marcadores:**
- `[ALERTA DE PLAZO]`: eliminado del repo; reemplazar por `[ALERTA PLAZO FATAL: norma - plazo - fecha de inicio del cómputo - vencimiento estimado]`
- `[ALERTA PLAZO FATAL]`: nuevo marcador canónico A10; usar en administrativo, amparo, laboral y cualquier plazo fatal

---

### Mayo 2026 - Limpieza final y sincronización (Etapa 4)

**Archivos modificados:**
- `argentina/fuentes.md` - agregada sección "Cómo verificar que un conector está activo" con instrucciones de verificación en Cowork y Claude Code, tabla de fallback por conector con URL y consecuencia, campo "Estado al mayo 2026" en cada entrada; marcador `[DISCREPANCIA ENTRE CONECTORES]` reemplazado por `[DISCREPANCIA ENTRE FUENTES]`
- `argentina/ejemplos-civil.md` - bloque de fórmulas genérico reemplazado por tabla por fuero (CNAC, civil y comercial federal, CABA local, PBA departamental, CNAT) con fórmula predominante, descripción técnica y ejemplo numérico; cuatro marcadores no canónicos corregidos
- `argentina/README.md` - referencia al repositorio base eliminada; estructura de archivos sincronizada con los 22 archivos reales; sección de instalación actualizada con referencias a `setup-output-TEMPLATE.md` y `diagnostico-casos-prueba.md`; tabla de perfiles con columna "Complementos"; referencias a "plugins" corregidas

**Normas afectadas:** ninguna. Los cambios son de estructura y documentación.

---

### Mayo 2026 - Gaps de cobertura (Etapa 3)

**Archivos nuevos:**
- `argentina/contratos-CLAUDE.md` - perfil unificado para revisión y redacción de contratos bajo derecho argentino; cubre flujo de revisión (clasificación + red-flags + análisis por tipo), flujo de redacción con preguntas de diagnóstico previo, y 7 tipos contractuales con lógica específica (servicios profesionales, SaaS, compraventa, locación, NDA, mutuo, agencia/concesión/franquicia)
- `argentina/diagnostico-casos-prueba.md` - tres casos ficticios con diagnóstico esperado completo para verificar el skill: demanda laboral por despido (9 marcadores esperados), demanda civil por mala praxis (14 marcadores), revisión de cláusulas de pacto de accionistas (10 marcadores)

**Normas afectadas:** ninguna. Los archivos nuevos aplican normativa ya incluida en los perfiles de área.

---

### Mayo 2026 - Integración interna (Etapa 2)

**Archivos modificados:**
- `argentina/CLAUDE.md` - agregados bloques "Protocolo ante alucinación normativa" y "Routing hacia perfiles de área"; estructura del repo actualizada con archivos nuevos de Etapa 1
- `argentina/civil-CLAUDE.md` - agregado bloque "Archivos complementarios"; marcadores `[VACÍO CUANTIFICATIVO]` y `[VERIFICAR CRITERIO DE LA SALA]` reemplazados por formas canónicas; fecha de verificación en alertas normativas
- `argentina/societario-CLAUDE.md` - agregado bloque "Archivos complementarios"; marcadores `[VERIFICAR RESOLUCIÓN IGJ/DPPJ VIGENTE]`, `[VACÍO DOCUMENTAL]` y `[VERIFICAR UMBRAL CNDC VIGENTE]` reemplazados; fecha de verificación en alertas normativas
- `argentina/laboral-CLAUDE.md` - agregado bloque "Archivos complementarios"; fecha de verificación en alerta DNU
- `argentina/administrativo-CLAUDE.md`, `argentina/tributario-CLAUDE.md`, `argentina/penal-CLAUDE.md`, `argentina/familia-CLAUDE.md`, `argentina/concursos-CLAUDE.md` - fecha de verificación agregada en cada sección "## Alerta normativa"

**Normas afectadas:** ninguna. Los cambios son de estructura, marcadores y referencias cruzadas.

---

### Mayo 2026 - Reorganización y estandarización inicial (Etapa 1)

**Archivos nuevos:**
- `argentina/marcadores-GLOSARIO.md` - glosario canónico con 15 formas canónicas en 4 categorías; tabla de equivalencias que mapea los 40+ marcadores anteriores a su forma canónica
- `argentina/setup-output-TEMPLATE.md` - template con variables mapeadas a cada pregunta de la entrevista, instrucciones de generación para el sistema, y ejemplo de output completo
- `argentina/CHANGELOG.md` - este archivo; incluye tabla de normas de alta volatilidad con fecha de última verificación

**Archivos modificados:**
- `argentina/setup-interview.md` - agregada referencia a `setup-output-TEMPLATE.md` en el flujo de output
- `argentina/CLAUDE.md` - agregada referencia al glosario de marcadores

**Motivo:** estandarización de marcadores (existían más de 40 variantes equivalentes distribuidas entre archivos); formalización del output de la entrevista; trazabilidad de cambios normativos.

**Normas afectadas:** ninguna. Los cambios son de forma, no de contenido normativo.

---

## Plantilla de entrada

Copiar y completar para cada cambio:

```
### [Mes Año]

**Archivos afectados:**
- `ruta/archivo.md` - sección afectada

**Cambio:**
[descripción del cambio]

**Motivo:**
[norma modificada / error detectado / nueva funcionalidad]

**Normas vigentes actualizadas:**
- [norma]: [cambio concreto]

**Impacto en marcadores:**
- [marcador afectado]: [cambio en comportamiento]

**Fuente:**
- [URL o referencia de la norma que motivó el cambio]
```

---

## Normas de alta volatilidad · estado al momento de la última revisión

Esta tabla recoge las normas con mayor frecuencia de cambio. Verificar antes de aconsejar.
Actualizar la columna "Última verificación" cuando se confirme la vigencia.

| Norma | Área | Dato volátil | Última verificación |
|---|---|---|---|
| Art. 245 LCT - tope indemnizatorio y base | Laboral | TRES regímenes según fecha del acto extintivo: (1) pre-30/12/2023: base incluye SAC; (2) 30/12/2023-5/3/2026: base excluye SAC y bonificaciones semestrales/anuales (DNU 70/2023); (3) desde 6/3/2026: base excluye además vacaciones no gozadas y horas extras; tope = 3x promedio CCT (Ley 27.802). Verificar fecha del acto extintivo antes de calcular | Mayo 2026 - verificar por CCT y fecha del acto extintivo |
| Acta CNAT - tasa de interés | Laboral | Criterio por sala; sin unificación post-Acta 2788/2024; no hay criterio único vigente; revisar pronunciamiento de cada sala | Mayo 2026 - verificar acta vigente |
| Resolución SRT - prestaciones LRT | Laboral / LRT | Montos de prestaciones | Mayo 2026 - verificar RG vigente |
| DNU 70/2023 - modificaciones LCT | Laboral | Estado judicial de cada modificación | Mayo 2026 - algunas suspendidas, verificar |
| Ley 27.430 art. 1 - umbral penal tributario | Tributario | Monto de punibilidad | Mayo 2026 - verificar si fue actualizado |
| Monto mínimo recurso TFN | Tributario | Monto habilitante | Mayo 2026 - verificar norma vigente |
| Capital mínimo IGJ/DPPJ | Societario | Monto actualizado por resolución | Mayo 2026 - verificar resolución vigente |
| Sindicatura obligatoria SA - parámetros | Societario | Parámetros de activación | Mayo 2026 - verificar resolución IGJ/DPPJ |
| Régimen cambiario BCRA | Contratos / M&A | Restricciones al giro de divisas | Mayo 2026 - verificar comunicaciones BCRA |
| Decreto 1030/16 + resoluciones ONC | Administrativo | Umbrales, procedimientos y formularios de contratación pública | Mayo 2026 - verificar ONC antes de asesorar |
| Ley 12.008 PBA - plazos CCA | Administrativo | Plazos de caducidad contencioso administrativo PBA | Mayo 2026 - verificar norma y jurisprudencia SCBA |
| Ley 27.551 - locaciones urbanas | Familia / Civil | Modalidad de actualización del alquiler | Mayo 2026 - verificar estado de modificaciones |
| Tasas de interés fueros civiles y comerciales | Civil / Comercial | Tasa activa BNA, variantes por sala | Mayo 2026 - verificar actas CNAC / CNACOM |
| Prestaciones alimentarias - fórmulas | Familia | Criterio por fuero | Mayo 2026 - verificar criterio sala actuante |

---

*Última actualización: mayo 2026*
*Autor: Dr. Cristian Aboitiz · [@abogadoaboitiz](https://x.com/abogadoaboitiz)*
