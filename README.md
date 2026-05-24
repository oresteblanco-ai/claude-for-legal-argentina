# claude-for-legal · Adaptación Argentina

Configuración de Claude para práctica legal argentina. El material está construido
sobre derecho argentino: CCCN, LCT, LDC, LGS, CPCCN/CPCCBA, y normas especiales.
No requiere ningún repositorio externo para funcionar; puede usarse de forma
autónoma desde Claude.ai Projects o Claude Code.

---

## Estructura

```
argentina/
  CLAUDE.md                         # Perfil general - cargar en todo Project
  CHANGELOG.md                      # Historial de cambios normativos y del sistema
  marcadores-GLOSARIO.md            # Glosario canónico de marcadores (fuente de verdad)
  setup-interview.md                # Entrevista de configuración inicial
  setup-output-TEMPLATE.md          # Template de output de la entrevista
  diagnostico-SKILL.md              # Skill de diagnóstico previo (transversal)
  plazos-SKILL.md                   # Skill de cómputo de plazos procesales y administrativos
  diagnostico-casos-prueba.md       # Casos de prueba para verificar el skill
  red-flags-contratos.md            # Alertas para revisión de contratos (activ. automática)
  contratos-CLAUDE.md               # Perfil unificado para revisión y redacción de contratos
  administrativo-CLAUDE.md          # Perfil derecho administrativo
  civil-CLAUDE.md                   # Perfil derecho civil (CCCN)
  concursos-CLAUDE.md               # Perfil concursos y quiebras (LCQ)
  familia-CLAUDE.md                 # Perfil derecho de familia
  laboral-CLAUDE.md                 # Perfil derecho del trabajo (LCT)
  penal-CLAUDE.md                   # Perfil derecho penal
  societario-CLAUDE.md              # Perfil derecho societario (LGS)
  tributario-CLAUDE.md              # Perfil derecho tributario
  ejemplos-civil.md                 # Casos de daños y responsabilidad civil
  ejemplos-laboral.md               # Casos de liquidación con checklist de rubros
  ejemplos-societario.md            # Due diligence y pactos de accionistas
  fuentes.md                        # Conectores MCP y fuentes primarias
  macos-automation.md               # Módulo opcional - automatización de escritorio macOS (Claude Code)
  legal.local.md.template           # Template de configuración local del estudio (por rama del derecho)
  evals/                            # Casos de control para verificar perfiles de área
    README.md                       # Formato estándar y áreas prioritarias
```

---

## Qué hace este sistema

**Opera bajo:**
- CCCN (Ley 26.994) para contratos y obligaciones
- LCT (Ley 20.744) y modificatorias para materia laboral
- Ley 25.326 y disposiciones AAIP para privacidad y datos personales
- CPCCN para fueros nacionales y federales / CPCCBA para PBA
- LDC (Ley 24.240) para contratos de consumo
- LGS para societario

**Reemplaza la lógica de common law en tres áreas críticas:**
- Contratos: análisis bajo CCCN (no bajo consideration ni indemnification caps)
- Laboral: modelo de despido con indemnización obligatoria art. 245 LCT (no at-will)
- Privacidad: habeas data bajo Ley 25.326 (no GDPR/DSAR)

**Agrega:**
- Red flags específicas del derecho argentino para revisión automática de contratos
- Glosario canónico de marcadores estandarizados para señalar vacíos e inconsistencias
- Protocolo de alucinación normativa: el sistema detiene la redacción si detecta que citó una norma sin respaldo
- Routing automático hacia perfiles de área según la rama del derecho de la consulta
- Alertas de normas inestables integradas en cada perfil con fecha de última verificación
- Casos de prueba para verificar que el skill de diagnóstico funciona correctamente
- Skill de cómputo de plazos procesales y administrativos: días hábiles judiciales y administrativos, días corridos, meses y años, con suspensiones por feria judicial, mediación prejudicial y SECLO

---

## Lo que necesitás

Hay dos formas de instalarlo. El plan gratuito es suficiente para evaluar el sistema sin costo. El plan pago agrega automatización, acceso directo a archivos locales y tareas largas sin supervisión.

| Característica | Plan gratuito + Git Bash | Plan pago + Claude Desktop + Cowork |
|---|---|---|
| Costo | $0 | u$s 20/mes (Pro) |
| Activación de perfiles | Manual (copiar y pegar) | Automática según la rama del derecho del caso |
| Actualizaciones del repo | Manual (git pull) | Automática |
| Acceso a archivos locales | No | Sí (directo, sin copiar archivos) |
| Tareas largas sin supervisión | No | Sí |
| Capacidades normativas | Completas | Completas |

---

## Instalación

### Opción A: Plan gratuito + Git Bash

**Lo que necesitás:** cuenta Claude gratuita y Git. Instalá Git desde [git-scm.com](https://git-scm.com) con las opciones por defecto. No necesitás cuenta de GitHub para descargar y usar el sistema.

#### Paso 1: Clonar el repositorio

Abrí Git Bash desde el menú inicio y ejecutá:

```bash
git clone https://github.com/cristianaboitiz-eng/claude-for-legal-argentina.git
cd claude-for-legal-argentina
git pull
```

El `git pull` trae los cambios más recientes. Si dice "Already up to date" ya tenés la versión actual.

#### Paso 2: Configurar el perfil del estudio

El archivo `argentina/legal.local.md.template` tiene campos para todos los datos de tu práctica: jurisdicción, fueros, departamentos judiciales, CCT habitual, sistema de gestión, tasa de interés por materia, formato de firma, estilo de citas. Lo copiás y abrís:

```bash
cp argentina/legal.local.md.template argentina/legal.local.md
notepad argentina/legal.local.md
```

Completás lo que aplica y borrás lo que no usás. Después lo protegés para que no se suba al repositorio por error:

```bash
echo "legal.local.md" >> .gitignore
```

#### Paso 3: Usar el sistema

Abrís el archivo de área que corresponde a tu caso, copiás todo el contenido y lo pegás al inicio de una conversación nueva en Claude. Los perfiles disponibles están en la tabla de la sección [Perfiles por área](#perfiles-por-área).

Pegás el perfil, describís el caso, subís los documentos y trabajás. El sistema opera con todas sus capacidades sustantivas: diagnóstico previo del material, detección de argumentos sin norma de respaldo, alertas de normas inestables, marcadores para vacíos probatorios y jurisprudencia no aportada.

#### Paso 4: Mantener el sistema actualizado

El repositorio no se actualiza solo con el plan gratuito. Cada vez que haya cambios - perfiles de área, alertas normativas, correcciones - los bajás con un solo comando:

```bash
cd claude-for-legal-argentina
git pull
```

Hacelo antes de cada sesión de trabajo, o cuando veas un aviso de actualización en el repositorio. El pull es instantáneo y nunca pisa tu `legal.local.md` porque ese archivo está protegido por el `.gitignore`.

---

### Opción B: Plan pago + Claude Desktop + Cowork

**Lo que necesitás:** Plan Pro (u$s 20/mes), Max, Team o Enterprise, y la aplicación de escritorio Claude.

#### Paso 1: Descargá la aplicación de escritorio

Entrá a [claude.ai/download](https://claude.ai/download) y bajá la app para Windows o Mac. Instalala como cualquier otro programa.

#### Paso 2: Abrí Cowork

Una vez abierta la app, vas a ver una barra en la parte superior con distintas pestañas. Hacé clic en "Cowork".

Cowork es el entorno de trabajo avanzado donde viven los plugins. La primera vez te va a pedir que configures acceso a una carpeta de tu computadora - dáselo a una carpeta donde tengas documentos de trabajo (contratos, escritos, lo que sea). Claude va a poder leer los archivos de esa carpeta.

#### Paso 3: Instalá el plugin legal

Dentro de Cowork, hacé clic en "Customize" (Personalizar) en la barra lateral izquierda. Eso abre el menú de plugins, skills y conectores. [Más información](https://support.claude.com/en/articles/13837440-use-plugins-in-claude-cowork)

Desde ahí:

1. Clic en "Browse plugins" (Explorar plugins).
2. Buscá Legal en la lista.
3. Clic en Install.

Después de instalarlo, el plugin ejecuta automáticamente una entrevista inicial. Te pregunta sobre tu práctica: jurisdicción, tipo de trabajo habitual, a quién escalás, etc. Con esas respuestas arma tu perfil de práctica, y de ahí en más todos los flujos de trabajo corren contra ese contexto, no contra una plantilla genérica. Eso es lo que diferencia esta herramienta de un chat común.

#### Paso 4: Configurar el perfil argentino

Dentro de Cowork, cargás el contenido de `argentina/CLAUDE.md` como perfil base. Ese archivo reemplaza la lógica norteamericana del plugin original con configuración argentina. La primera vez que usás un plugin de área, el sistema corre la entrevista de configuración; cuando te pida el perfil de práctica, usás el contenido de `argentina/legal.local.md` que ya completaste.

#### Paso 5: Elegí qué plugins instalar

Instalá los que correspondan a tu práctica. Podés instalar varios.

#### Paso 6: Empezar a usarlo

Las skills se activan automáticamente cuando son relevantes. También podés invocarlas manualmente escribiendo "/" para ver la lista de comandos disponibles. Claude accede a tu carpeta de trabajo, lee los archivos directamente y ejecuta tareas largas sin supervisión: liquidaciones sobre varios expedientes, revisión de contratos en lote, matrices de riesgo, cronologías. Las actualizaciones del repositorio se incorporan automáticamente la próxima vez que usás el sistema.

---

## Perfiles por área

Los plugins disponibles corresponden a las áreas de práctica cubiertas por este sistema:

| Archivo de perfil | Área | Complementos | Alertas |
|---|---|---|---|
| `laboral-CLAUDE.md` | Derecho del trabajo (LCT) | `ejemplos-laboral.md` | DNU 70/2023, topes art. 245, tasas CNAT |
| `administrativo-CLAUDE.md` | Derecho administrativo | - | Plazos de caducidad, contratación pública |
| `civil-CLAUDE.md` | Derecho civil (CCCN) | `ejemplos-civil.md` | Tasas de interés, fórmulas de daños por fuero |
| `penal-CLAUDE.md` | Derecho penal | - | Umbrales penales, código procesal vigente |
| `familia-CLAUDE.md` | Derecho de familia | - | Cuotas alimentarias, régimen de alquileres |
| `societario-CLAUDE.md` | Societario y M&A | `ejemplos-societario.md` | Resoluciones IGJ/DPPJ, capital mínimo |
| `tributario-CLAUDE.md` | Derecho tributario | - | Alícuotas, MNI, umbrales de punibilidad |
| `concursos-CLAUDE.md` | Concursos y quiebras (LCQ) | - | Tasas post-concursales, reformas LCQ |
| `contratos-CLAUDE.md` | Revisión y redacción de contratos | `red-flags-contratos.md` | Régimen cambiario, locaciones, intertemporalidad |

---

## Alertas de normas inestables

Cada perfil de área incluye una sección `## Alerta normativa` con las normas de mayor
volatilidad para esa materia. La sección está ubicada antes de las instrucciones operativas
de cada perfil para que el sistema la procese con prioridad.

| Perfil | Sección de alerta | Normas cubiertas |
|---|---|---|
| `laboral-CLAUDE.md` | `## Alerta normativa - Decreto 70/2023 y modificaciones posteriores` | DNU 70/2023 (período de prueba, art. 245, negociación colectiva) |
| `civil-CLAUDE.md` | `## Alerta normativa - normas de vigencia variable` | Tasas de interés por fuero, fórmulas de cuantificación de daños, art. 52 bis LDC |
| `administrativo-CLAUDE.md` | `## Alerta normativa - normas de vigencia variable` | Plazos de caducidad art. 25 LNPA, contratación pública, normativa provincial |
| `concursos-CLAUDE.md` | `## Alerta normativa - normas de vigencia variable` | Tasas post-concursales, período de sospecha, reformas LCQ |
| `tributario-CLAUDE.md` | `## Alerta normativa - normas de vigencia variable` | Ganancias/MNI, Bienes Personales, umbrales penales Ley 27.430, monto mínimo TFN |
| `familia-CLAUDE.md` | `## Alerta normativa - normas de vigencia variable` | Cuotas alimentarias, locaciones con destino habitacional |
| `penal-CLAUDE.md` | `## Alerta normativa - normas de vigencia variable` | Umbrales de punibilidad, códigos procesales en transición |
| `societario-CLAUDE.md` | `## Alerta normativa - normas de vigencia variable` | Resoluciones IGJ/DPPJ, capital mínimo, sindicatura |



---

## Fuentes normativas (fase 2)

Conectores de la comunidad que apuntan directamente a las fuentes oficiales argentinas:

### Conectores MCP disponibles

| # | Repositorio / Endpoint | Fuente | Función | Requisito |
|---|---|---|---|---|
| 1 | [Ansvar-Systems/argentine-law-mcp](https://github.com/Ansvar-Systems/argentine-law-mcp) | InfoLEG / SAIJ | Texto literal de normas nacionales | Gratuito |
| 2 | [voftec/normativapba-mcp](https://github.com/voftec/normativapba-mcp) · URL directa: `https://normativapba-mcp.vercel.app/api/mcp/sse` | normas.gba.gob.ar | Legislación provincial PBA: búsqueda, vigencia, articulado, árbol de dependencias normativas. Conexión directa vía URL en Claude.ai sin instalación local. Ver nota de limitación abajo. | Gratuito |
| 3 | [voftec/InfoLeg-MCP](https://github.com/voftec/InfoLeg-MCP) · URL directa: `https://infoleg-mcp.vercel.app/api/mcp/sse` | infoleg.gob.ar | Texto oficial de normas nacionales. Complementa o reemplaza el conector 1. Conexión directa vía URL en Claude.ai sin instalación local. | Gratuito |
| 4 | [voftec/juba-mcp](https://github.com/voftec/juba-mcp) · URL directa: `https://juba-mcp.vercel.app/api/mcp/sse` | JUBA / SCBA | Jurisprudencia SCBA y cámaras de apelación PBA. 21 herramientas especializadas por fuero, campo y tipo de voto. Cubre primera instancia desde junio 2025. Conexión directa vía URL en Claude.ai sin instalación local. | Gratuito |
| 5 | `claude mcp add saij-mcp -- uvx saij-mcp` | SAIJ | Jurisprudencia, legislación, doctrina y dictámenes. Más de 330.000 documentos. | Gratuito |
| 6 | `claude mcp add csjn-mcp -- uvx csjn-mcp` | CSJN | Fallos de la Corte Suprema de Justicia de la Nación | Gratuito |
| 7 | `claude mcp add juscaba-mcp -- uvx juscaba-mcp` | Poder Judicial CABA / fueros nacionales | Jurisprudencia de fueros nacionales y locales con sede en CABA | Gratuito |
| 8 | [joaquinescalante23/saij-mcp](https://github.com/joaquinescalante23/saij-mcp) | SAIJ | Investigación profunda: jurisprudencia, legislación, doctrina y dictámenes; grafo legal; OCR para PDFs históricos; resolución de citas textuales. Opera sobre API no oficial de SAIJ - verificar estado antes de usar. | Gratuito |
| 9 | [Psflores/Legal-MCP-Server-](https://github.com/Psflores/Legal-MCP-Server-) | PJN / CABA | Jurisprudencia fueros nacionales. Proyecto de la comunidad - verificar estado antes de usar. | Gratuito |
| 10 | [guidobonomini/argentina-law-mcp-server](https://github.com/guidobonomini/argentina-law-mcp-server) | Praxis local | Análisis semántico, glosario judicial argentino, detección de riesgos calibrada para praxis local | Gratuito |
| 11 | [datos-justicia-argentina/Tesauro-Saij](https://github.com/datos-justicia-argentina/Tesauro-Saij-de-Derecho-Argentino) | SAIJ | Vocabulario controlado para búsqueda jurídica | Gratuito |
| 12 | [voftec/bora-mcp](https://github.com/voftec/bora-mcp) · URL directa: `https://bora-mcp.vercel.app/api/mcp/sse` | Boletín Oficial de la República Argentina | Portada del día, sumario por fecha, texto verbatim de avisos, nuevas sociedades (2da Sección), licitaciones (3ra Sección). Conexión directa en Claude.ai sin instalación local. | Gratuito |
| 13 | [voftec/bopba-mcp](https://github.com/voftec/bopba-mcp) · URL directa: `https://bopba-mcp.vercel.app/api/mcp/sse` | Boletín Oficial de la Provincia de Buenos Aires | Texto de normas publicadas en el BOPBA, sumario por fecha, búsqueda por número y año. Conexión directa en Claude.ai sin instalación local. | Gratuito |
| 14 | [voftec/pjn-consulta-mcp](https://github.com/voftec/pjn-consulta-mcp) · URL directa: `https://pjn-consulta-mcp.vercel.app/api/mcp/sse` | Poder Judicial de la Nación | Consulta de expedientes PJN: estado, movimientos, carátula. Conexión directa en Claude.ai sin instalación local. | Gratuito |
| 15 | [voftec/ptn-mcp](https://github.com/voftec/ptn-mcp) · URL directa: `https://ptn-mcp.vercel.app/api/mcp/sse` | Procuración del Tesoro de la Nación | Dictámenes PTN: búsqueda por tema, número y año. Responsabilidad del Estado, empleo público, contratos administrativos. Conexión directa en Claude.ai sin instalación local. | Gratuito |

#### Como conectar los servidores MCP por URL en Claude.ai (sin instalacion)

Para los conectores marcados "URL directa" (2, 3, 4, 12, 13, 14 y 15), el proceso es identico para todos:

1. Entrá a [claude.ai/settings/integrations](https://claude.ai/settings/integrations) o desde Claude.ai: **Settings → Integrations → Add integration**.
2. En el campo **URL** pegá la URL del conector (por ejemplo `https://juba-mcp.vercel.app/api/mcp/sse`).
3. Poné un nombre descriptivo (por ejemplo `JUBA - Jurisprudencia PBA`).
4. Guardá. El conector queda disponible en todos tus Projects.

No requiere instalar Node.js, npm ni ningun programa adicional.

#### Nota sobre el conector 2 (voftec/normativapba-mcp) - `verificar_vigencia`

La herramienta `verificar_vigencia` consulta en tiempo real los metadatos de `normas.gba.gob.ar` y reproduce su estado tal como está cargado en el portal. El portal puede contener errores en las relaciones de derogación. Caso conocido: la Ley 11.922 (CPP Bonaerense, 1997) figura en el portal como derogada por la Ley/Decreto-ley 9032 (1978), cuando la relación es inversa: la 11.922 deroga a la 9032 y está plenamente vigente con modificatorias.

Regla de uso: `verificar_vigencia` es un primer filtro, no una fuente definitiva. Ante cualquier resultado de derogación que parezca anómalo, verificar contra el Boletín Oficial PBA o el texto actualizado disponible en el propio portal. El error fue reportado al mantenedor del conector y a la Subsecretaría Legal y Técnica de PBA para corrección en la fuente.

### Tabla de decisión rápida

| Necesidad | Conector recomendado | Fallback manual |
|---|---|---|
| Texto de norma nacional | 3 (voftec/InfoLeg-MCP) o 1 (Ansvar) | infoleg.gob.ar |
| Texto de norma provincial PBA | 2 (voftec/normativapba-mcp) | normas.gba.gob.ar |
| Boletín Oficial nacional (normas, sociedades, licitaciones) | 12 (voftec/bora-mcp) | boletinoficial.gob.ar |
| Boletín Oficial PBA | 13 (voftec/bopba-mcp) | boletinoficial.gba.gob.ar |
| Jurisprudencia PBA (SCBA y cámaras) | 4 (voftec/juba-mcp) | juba.scba.gov.ar |
| Jurisprudencia SAIJ (todas las instancias) | 5 (saij-mcp) | saij.gob.ar |
| Jurisprudencia CSJN | 6 (csjn-mcp) | sj.csjn.gov.ar |
| Jurisprudencia CABA / fueros nacionales | 7 (juscaba-mcp) | jusbaires.gob.ar |
| Grafo legal / navegación de citas / OCR histórico | 8 (joaquinescalante23/saij-mcp) | saij.gob.ar |
| Jurisprudencia PJN alternativa | 9 (Psflores) | pjn.gov.ar |
| Consulta de expedientes PJN | 14 (voftec/pjn-consulta-mcp) | pjn.gov.ar |
| Dictámenes PTN | 15 (voftec/ptn-mcp) | ptn.gov.ar |
| Doctrina y dictámenes | 5 (saij-mcp) o 8 (joaquinescalante23) | saij.gob.ar |
| Análisis semántico / terminología | 10 (guidobonomini) | Glosario del CLAUDE.md |
| Mejora de búsquedas jurisprudenciales | 11 (Tesauro SAIJ) | saij.gob.ar |

### Fuentes primarias sin conector MCP

Acceso directo por el abogado para verificación manual. Son la fuente de verdad ante cualquier discrepancia con un conector.

| Fuente | URL | Uso principal |
|---|---|---|
| PJN | pjn.gov.ar | Acordadas y jurisprudencia federal |
| CNACAF | cnacaf.gov.ar | Jurisprudencia contencioso administrativo federal y alzada tributaria |
| SCBA | scba.gov.ar | Jurisprudencia PBA - fuente primaria bonaerense |
| JUBA | juba.scba.gov.ar | Consulta de jurisprudencia PBA (SCBA + cámaras + primera instancia desde 2025) |
| Poder Judicial CABA | buenosaires.gob.ar/jusbaires | Jurisprudencia fuero local CABA |
| PTN | ptn.gov.ar | Dictámenes - responsabilidad del Estado y empleo público |
| AAIP | argentina.gob.ar/aaip | Disposiciones de datos personales |
| IGJ | igj.gob.ar | Resoluciones societarias CABA |
| DPPJ | gba.gob.ar/dppj | Resoluciones societarias PBA |
| TFN | tfnacional.gov.ar | Jurisprudencia tributaria |
| BCRA | bcra.gov.ar | Normativa cambiaria y financiera |

No son necesarios para empezar. Los perfiles funcionan solos como única configuración.
Los conectores son la segunda capa: permiten que el sistema consulte fuentes primarias
automáticamente sin que el abogado tenga que pegar el texto en la sesión. Los conectores
4 a 7 (Caravario) se instalan vía `uvx`; los conectores 2, 3, 4, 12, 13, 14 y 15 (voftec)
tienen conexión directa por URL en Claude.ai sin instalación local. Ver `fuentes.md`
para instrucciones completas de verificación de estado, fallback y combinaciones recomendadas.

### Paso 8 (opcional): Automatización de escritorio macOS

Si usás Claude Code en Mac y tu flujo incluye portales judiciales o sistemas de gestión
de estudio sin API (PJN, MEJ, SCBA, IGJ, AFIP desktop), podés agregar `macos-use`
para automatizar esa capa:

```bash
claude mcp add macos-use -- npx -y mcp-server-macos-use
```

Requiere macOS 13+ y permiso de Accesibilidad en el terminal. Solo aplica a Claude Code;
no funciona en Claude.ai web. Proyecto de [@m13v_](https://x.com/m13v_). Ver `argentina/macos-automation.md` para casos de uso
jurídicos, requisitos y limitaciones.

---

## Lo que podés hacer desde el día uno

**Plazos procesales y administrativos:**
- Calcular plazos en días hábiles judiciales o administrativos, días corridos, meses y años
- Aplicar suspensiones por feria judicial, mediación prejudicial obligatoria y SECLO
- Verificar vencimientos de prescripción y caducidad en materia civil, laboral y administrativa
- Activación automática ante consultas de prescripción o caducidad cuando se usa junto con `civil-CLAUDE.md`, `laboral-CLAUDE.md` o `administrativo-CLAUDE.md`; también invocable directamente con `/argentina:plazos`

**Contratos:**
- Revisar contratos contra la lista de red flags argentina, con referencia a norma aplicable (CCCN, LCT, LDC)
- Redactar borradores de contratos tipo (NDA, prestación de servicios, compraventa) con CCCN como base
- Detectar cláusulas abusivas en contratos de adhesión y consumo

**Societario y M&A:**
- Preparar briefings de due diligence con checklist adaptado a LGS y normativa IGJ/DPPJ
- Armar pactos de accionistas con análisis de ejecutabilidad en Argentina
- Verificar requisitos de notificación a la CNDC en operaciones de concentración

**Laboral:**
- Calcular liquidaciones finales (art. 245 LCT + agravantes Ley 24.013 / Ley 25.323 / art. 80)
- Analizar estrategia desde el trabajador o el empleador con carga probatoria invertida
- Redactar telegramas y cartas documento laborales

**Administrativo:**
- Verificar agotamiento de la vía administrativa y plazos de caducidad (art. 25 LNPA)
- Analizar recursos administrativos y acciones contenciosas en los tres fueros (federal, CABA, PBA)

**Penal:**
- Analizar estrategia de defensa por etapa procesal y código aplicable (CPPN / CPPF / CPPCABA / CPPBA)
- Evaluar procedencia de colaboración eficaz (Ley 27.304) y proceso de flagrancia (Ley 27.272)

**Familia:**
- Armar convenios reguladores de divorcio con todos los institutos del CCCN
- Analizar alimentos, cuidado personal y régimen comunicacional con jurisprudencia del fuero

**Tributario:**
- Analizar recursos ante el TFN y la CNACAF
- Revisar compliance bajo Ley 25.326 (habeas data) con vocabulario argentino nativo

**Concursal:**
- Verificar privilegios de créditos y estrategia de verificación
- Analizar acciones de recomposición patrimonial (período de sospecha, arts. 118-119 LCQ)

---

## Lo que no reemplaza

El criterio del abogado. La responsabilidad profesional. La firma.

Todo output del sistema es un borrador. No sabe qué pasó en la negociación, no conoce la relación con la contraparte, no tiene el expediente completo. Acelera la parte mecánica. Las decisiones son siempre del abogado.

---

## Actualización del sistema

El sistema tiene dos ciclos de actualización con distinta frecuencia:

**Perfiles de área (`*-CLAUDE.md`):** actualizar cuando cambia un instituto central
del área (nueva ley, reforma procesal, cambio de criterio CSJN en un tema estructural)
o cuando cambia una norma listada en la sección `## Alerta normativa` de ese perfil.
Frecuencia orientativa: continua para alertas normativas; semestral para el resto.

Para actualizaciones urgentes (nueva tasa CNAT, cambio de tope art. 245, reforma
procesal): modificar directamente la sección `## Alerta normativa` del perfil
afectado y registrar el cambio en `CHANGELOG.md`. Esa sección tiene el impacto
más inmediato en los marcadores que el sistema emite.

La tabla de normas de alta volatilidad del `CHANGELOG.md` lista los datos con
mayor frecuencia de cambio y la fecha de última verificación de cada uno.



---

## Contribuciones

El proyecto sigue en desarrollo para adaptar completamente Claude for Legal al derecho argentino.

Si hay abogados argentinos interesados en colaborar, la idea es dividir áreas de trabajo para coordinar esfuerzos, evitar duplicar trabajo y avanzar más rápido.

**Para reportar un error normativo**, abrí un issue indicando:
- la norma correcta y la fuente oficial
- el archivo y sección afectada
- el texto actual que considerás incorrecto

**Para proponer mejoras o nuevas áreas**, abrí un issue describiendo qué querés sumar y con qué alcance. Si querés adaptar el perfil para otra jurisdicción (Uruguay, Chile, Colombia), forkéalo y avisame.

**Para contribuir directamente**, editá el archivo en tu fork y abrí un Pull Request describiendo el cambio. Si no sabés cómo, mandame el texto por mensaje y lo incorporo yo con la atribución correspondiente. Los cambios con fuente normativa citada se procesan primero.

**Para aportar un caso de verificación**, el sistema incluye una carpeta `evals/` con casos de prueba que permiten comprobar que los perfiles de área detectan vicios y vulnerabilidades procesales de forma consistente. La idea es la misma que un caso de control en la práctica: una pieza procesal con solución conocida que se usa para verificar que la herramienta funciona antes de usarla en un expediente real. Cada caso tiene tres archivos: la pieza anonimizada, la rúbrica con los puntos que el sistema debe identificar, y la solución esperada. Las áreas prioritarias son nulidades procesales penales, prescripción laboral y vicios formales en contratos. Ver `evals/README.md` para el formato completo.

---

## Autor

Dr. Cristian Aboitiz · [@abogadoaboitiz](https://x.com/abogadoaboitiz)  
Abogado (CPACF) · CABA y GBA · Legal tech & IA aplicada a práctica jurídica argentina

*Última actualización: mayo 2026*
