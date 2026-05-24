# Perfil de práctica · Derecho administrativo · Provincia de Salta

> Archivo de configuración para el sistema claude-for-legal.
> Complementa el perfil general (argentina/CLAUDE.md) y el perfil administrativo nacional (administrativo-CLAUDE.md) con lógica específica del fuero contencioso administrativo de Salta.
> Cargar junto con administrativo-CLAUDE.md en el Project. Este archivo no reemplaza al nacional - lo extiende.
> **Configuración inicial obligatoria:** completar las variables de la sección siguiente antes de usar.

---

## Configuración inicial - completar antes de usar

**PROVINCIA:** Provincia de Salta

**FUERO_HABITUAL:** [COMPLETAR: denominación exacta. Ej: "Juzgado de Primera Instancia en lo Contencioso Administrativo de 1ª (o 2ª) Nominación, Salta Capital" / "Corte de Justicia de Salta (alzada contencioso administrativa)". Hay 2 Juzgados de Primera Instancia en lo Contencioso Administrativo (1ª y 2ª Nominación), con asiento en la Capital y jurisdicción en toda la Provincia (Ley 6569). La Corte de Justicia de Salta actúa como alzada y sus decisiones son definitivas (art. 153 ap. III Constitución Salta).]

**AREAS_PRACTICA:** [COMPLETAR: áreas de mayor volumen. Ej: "Responsabilidad del Estado provincial, empleo público, sanciones administrativas, contratación pública, habilitaciones municipales".]

**ORGANISMO_CONTRALOR_HABITUAL:** [COMPLETAR: ej. "Ministerio de Salud Pública de Salta, IPSAS, APROSS no - SALTA-, Municipalidad de Salta, DGR Salta".]

---

## Identidad y alcance

Este perfil cubre práctica de derecho administrativo en la Provincia de Salta: procedimiento administrativo ante la Administración provincial y municipal (Ley 5348), recursos administrativos en sede provincial, proceso contencioso administrativo ante los Juzgados de Primera Instancia en lo Contencioso Administrativo y la Corte de Justicia de Salta (Ley 793 modificada por Ley 6569), responsabilidad del Estado provincial, empleo público y contratación pública.

**Estructura judicial:** Salta tiene un fuero contencioso administrativo con primera instancia especializada (2 Juzgados de 1ª Instancia CA, Capital) y la Corte de Justicia como alzada definitiva. En el interior de la provincia, verificar si la jurisdicción corresponde a los mismos juzgados capitalinos o si hay tribunales con competencia delegada.

**Articulación con el perfil nacional:** cuando actúa un organismo federal con sede en Salta (ARCA/ex AFIP, ANSES), aplica el régimen federal (LNPA + RLNPA). Cuando actúa la Administración provincial o municipal salteña, aplica este perfil. No transpolar plazos ni institutos.

**Tercer nivel - organismos municipales:** la Ley 793 incluye a las Municipalidades como autoridades cuyos actos son impugnables ante el fuero contencioso administrativo (art. 1 Ley 793). La Ley 6569 dispone que los Juzgados de Primera Instancia CA entienden también en procesos contra Municipalidades (art. 2 Ley 6569). Verificar si el municipio tiene ordenanza de procedimiento propio que regule el agotamiento de la vía antes de ocurrir al fuero judicial.

---

## Normativa de procedimiento administrativo provincial

### Ley de procedimiento administrativo Salta

- **Norma principal:** Ley 5348 (Ley de Procedimientos Administrativos para la Provincia de Salta), promulgada el 05/12/1978. Texto ordenado: Ley 5348/78 con modificaciones introducidas por Ley 5552/80.
- **Ámbito (art. 1 Ley 5348):** rige toda la actividad administrativa estatal provincial y municipal, y la de entidades descentralizadas. Excepción: organismos de seguridad y los que tengan régimen especial por ley (en estos casos aplica como supletoria). También aplica supletoriamente a entes públicos no estatales que ejerzan función administrativa.
- **Texto vigente:** consultar el Boletín Oficial de Salta: https://boletinoficialsalta.gob.ar y SAIJ.
- **Articulado clave:** arts. 25-80 (acto administrativo), arts. 155-162 (plazos), arts. 177-188 (recursos: revocatoria, jerárquico, alzada, revisión), art. 81 (suspensión de ejecutoriedad en sede administrativa).

```
[VERIFICAR VIGENCIA: Ley 5348 LPA Salta (mod. Ley 5552/80 y otras) - consultar https://boletinoficialsalta.gob.ar - verificar modificaciones posteriores a mayo 2026]
```

### Régimen de silencio administrativo Salta

- **Regla general:** silencio negativo. El art. 25 in fine Ley 5348 establece que el silencio solo vale como acto administrativo cuando el orden normativo expresamente dispone que ante el silencio del órgano, transcurrido cierto plazo, se considerará la petición denegada o aceptada.
- **Retardación como causal de acción judicial (art. 6 Ley 793):** cuando transcurrieron 3 meses desde que el asunto está en estado de dictar resolución definitiva sin que se produzca, el interesado debe solicitar por escrito la resolución; si transcurren otros 3 meses sin resolución definitiva, queda habilitada la acción contencioso administrativa por retardación. También procede cuando la administración no dicta providencias de trámite en los plazos fijados por decretos o reglamentos.
- **Sin reforma análoga al Dec 971/2024 nacional:** Salta no adoptó el régimen de silencio positivo de la Ley 27.742 nacional. El silencio positivo aplica solo ante la Administración nacional.

```
[VERIFICAR SILENCIO SALTA: Ley 5348 art. 25 + Ley 793 art. 6 - silencio negativo por regla general - retardación: 3 meses en estado de resolver + 3 meses desde solicitud de resolución = habilita acción por retardación]
```

### Elementos esenciales del acto administrativo Salta

La Ley 5348 regula exhaustivamente el acto administrativo (arts. 25-80). Elementos:
1. Competencia: irrenunciable e improrrogable (art. 2 Ley 5348)
2. Causa (objeto): no debe estar prohibido por el orden normativo, ni ser impreciso, absurdo o imposible de hecho (arts. 27-28)
3. Voluntad: libre de vicios (dolo, error, violencia, simulación)
4. Forma: debe exteriorizarse por escrito (salvo urgencia), con lugar y fecha, indicación del órgano y firma de la autoridad; debe ser motivado en los casos del art. 42

**Motivación (art. 42 Ley 5348):** el acto debe motivarse cuando: (a) decide sobre derechos subjetivos, concursos, licitaciones y contrataciones directas; (b) resuelve recursos; (c) se aparta del criterio anterior o del dictamen del órgano consultivo; (d) lo disponen otras normas legales o reglamentarias.

**Suspensión de ejecutoriedad en sede administrativa (art. 81 Ley 5348):** la interposición de recursos administrativos NO suspende la ejecución del acto impugnado. La autoridad puede disponer la suspensión de oficio o a pedido de parte cuando: (a) la ejecución cause daño de difícil o imposible reparación al recurrente, o un daño proporcionalmente mayor que los perjuicios de la suspensión para el ente estatal; (b) se alegue fundadamente un vicio grave en el acto; (c) por razones de interés público.

**Vicios del acto:** la Ley 5348 regula nulidades absolutas y relativas con estructura análoga al régimen federal. Verificar articulado específico.

### Recursos administrativos Salta (Ley 5348)

**Recurso de revocatoria o reconsideración (art. 177 Ley 5348):**
- Plazo: 10 días hábiles administrativos desde la notificación del acto
- Ante: el mismo órgano que emanó la declaración
- Se resuelve sin sustanciación (salvo medidas para mejor proveer) dentro de los 10 días de estar el expediente en estado
- Es el recurso de primera impugnación ante el mismo órgano emisor

**Recurso jerárquico (arts. 179-183 Ley 5348):**
- Procede contra declaraciones definitivas, o que impongan trabas al ejercicio de derechos o intereses legítimos del recurrente
- Plazo: verificar plazo específico del articulado (arts. 179-180 Ley 5348). Puede interponerse subsidiariamente con la revocatoria o independientemente de ella.
- Ante: el órgano inmediatamente superior al que dictó el acto (art. 180)
- Si no considera satisfecho su derecho luego del jerárquico: puede reproducirlo ante el superior jerárquico del órgano que resolvió, recorriendo así todos los grados de la línea jerárquica hasta el Gobernador (art. 182)
- Agota la vía: sí, cuando es resuelto por el Gobernador o la autoridad superior del organismo

**Recurso de alzada (arts. 184-185 Ley 5348):**
- Procede contra decisiones definitivas de la autoridad superior de las entidades descentralizadas
- Se presenta directamente ante el Poder Ejecutivo (art. 185), sin necesidad de agotar previamente el recurso jerárquico dentro del ente
- Plazo: verificar articulado específico
- Solo control de legitimidad (no oportunidad, mérito o conveniencia): verificar si la Ley 5348 establece igual restricción que la Ley 5348 de Tucumán (Ley 4537, art. 68)

**Reclamo administrativo previo (Ley 5018):** Salta tiene una ley específica de reclamo administrativo previo (Ley 5018) que regula los requisitos de la reclamación previa a la acción judicial en ciertos supuestos. Verificar texto de la Ley 5018 y en qué casos se aplica conjuntamente con la Ley 793.

**Sin reforma análoga al Decreto 695/2024 nacional:** Salta no duplicó los plazos de recursos administrativos. El plazo de la Ley 5348 para la revocatoria es de 10 días hábiles administrativos. No aplicar los plazos federales reformados.

```
[ALERTA PLAZO FATAL: recurso de revocatoria - Ley 5348 art. 177 - 10 días hábiles administrativos desde notificación - vencimiento: calcular]
[ALERTA PLAZO FATAL: recurso jerárquico - Ley 5348 arts. 179-183 - verificar plazo específico en el articulado - vencimiento: calcular]
[VERIFICAR: Ley 5018 (reclamo administrativo previo Salta) - determinar si aplica al caso concreto antes de la acción judicial]
```

### Agotamiento de la vía administrativa Salta

- **Regla general:** la acción contencioso administrativa requiere que la resolución sea definitiva y que no haya recurso administrativo alguno contra ella (art. 26 inc. 1 Ley 793).
- **Cadena recursiva:** revocatoria ante el órgano emisor → jerárquico recorriendo la línea hasta el Gobernador. Para entes descentralizados: alzada ante el PE (Ley 5348 arts. 184-185).
- **Reclamo previo por retardación (art. 6 Ley 793):** cuando hay mora, el interesado debe solicitar por escrito la resolución (pronto despacho) y esperar 3 meses antes de iniciar la acción contencioso administrativa.
- **Reclamo administrativo previo (Ley 5018):** verificar si la Ley 5018 exige un reclamo administrativo previo específico antes de iniciar la acción judicial por daños u otras pretensiones.
- **Fiscal General:** en los juicios contencioso administrativos, el Fiscal General interviene como representante de la Administración General de la Provincia (art. 7 Ley 793). Las notificaciones al Fiscal General se hacen en su despacho (art. 10 Ley 793). Si el cargo está vacante, se notifica al Agente Fiscal o al abogado que designe el PE.

```
[VERIFICAR AGOTAMIENTO DE VÍA SALTA: Ley 5348 arts. 177-185 + Ley 793 art. 26 - resolución definitiva sin recurso administrativo disponible - para entes descentralizados: alzada ante PE - verificar también Ley 5018]
```

---

## Control judicial contencioso administrativo

### Código de Procedimiento Contencioso Administrativo Salta

- **Normas:** Ley 793 (Código de Procedimientos en lo Contencioso Administrativo de la Provincia de Salta, sancionada el 13/02/1908) modificada por Ley 6569 (Juzgados de Primera Instancia en lo Contencioso Administrativo, 1989, modificada por Leyes 7822 y 7913)
- **Texto vigente:** consultar SAIJ y Boletín Oficial de Salta. La Ley 793 es uno de los códigos procesales contencioso administrativos más antiguos del país (1908). La Ley 6569 incorporó los Juzgados de Primera Instancia (antes solo existía competencia originaria del Superior Tribunal).
- **Subsidiariedad (art. 23 Ley 793):** el Código de Procedimientos en lo Civil y Comercial de Salta se aplica supletoriamente en todo lo que no tenga tramitación o términos especiales señalados en la Ley 793.

### Plazo de caducidad para accionar judicialmente

**Este es el dato más crítico del perfil.**

- **Plazo:** 30 días desde la notificación personal, por cédula o por edicto de la resolución administrativa que motiva la demanda (art. 12 Ley 793)
- **Consentimiento:** el consentimiento tácito o expreso de la resolución administrativa, manifestado por actos posteriores a la notificación, quita el derecho a deducir la acción (art. 12 in fine Ley 793)
- **Cómputo:** días hábiles (art. 16 Ley 793: "solo se computarán en ellos los días hábiles")
- **Naturaleza:** caducidad - el consentimiento o el vencimiento del plazo extinguen la acción
- **¿Declarable de oficio?:** sí; el tribunal puede desechar in límine la demanda presentada fuera de plazo (art. 27 inc. 1 Ley 793: incompetencia fundada en que "la demanda ha sido presentada fuera de término")

```
[ALERTA PLAZO FATAL: art. 12 Ley 793 CCA Salta - 30 días hábiles - desde notificación personal/cédula/edicto de la resolución administrativa - consentimiento tácito también extingue la acción - vencimiento: calcular]
```

**Diferencia con otros regímenes:**
- Federal: 180 días hábiles judiciales (actos post-9-jul-2024)
- PBA: 90 días hábiles judiciales
- Tucumán ordinario: 90 días hábiles judiciales
- Córdoba: 30 días hábiles judiciales
- Santa Fe: 30 días
- **Salta: 30 días hábiles** (igual a Córdoba y Santa Fe)

**Consentimiento tácito:** la particularidad de Salta es que el consentimiento tácito manifestado por actos posteriores también extingue la acción, independientemente del plazo de 30 días. Si el administrado realizó actos que impliquen aceptación de la resolución después de notificada (ej. ejecutar la obligación, aceptar beneficios del acto), puede perder el derecho aunque no haya transcurrido el plazo.

### Órganos jurisdiccionales

**Primera instancia:**
- **Juzgados de Primera Instancia en lo Contencioso Administrativo:** 2 juzgados (1ª y 2ª Nominación), con asiento en Salta Capital y jurisdicción en toda la Provincia (art. 1 Ley 6569). Expediente digital implementado desde 2022 (Acordada 13665).
- **Competencia material (art. 2 Ley 6569):** procesos contencioso administrativos contra la Provincia, sus reparticiones descentralizadas (cualquiera sea la modalidad de organización) y Municipalidades, reclamando por la vulneración de derechos subjetivos e intereses legítimos. También en juicios de expropiación.

**Alzada:**
- **Corte de Justicia de Salta:** sus decisiones son definitivas en materia contencioso administrativa (art. 153 ap. III Constitución Salta; art. 3 Ley 6569). Es el tribunal de última instancia ordinaria en el fuero.
- **Representación ante la Corte:** el Fiscal de Estado actúa como representante de la Administración Provincial ante la Corte de Justicia (art. 5 Ley 6569 in fine). Ante los Juzgados de Primera Instancia actúan los Fiscales de Primera Instancia en lo Civil, Comercial y del Trabajo del Distrito Judicial del Centro.

**Acción contencioso administrativa - requisitos de procedencia (art. 26 Ley 793):**
1. La resolución sea definitiva y no haya recurso administrativo contra ella (o se configure retardación)
2. La resolución verse sobre asuntos en que la autoridad actuó en ejercicio de facultades reglamentadas
3. La resolución vulnere un derecho de carácter administrativo, establecido anteriormente en favor del demandante
4. No exista en otro fuero juicio pendiente sobre los mismos derechos

**Exclusiones de la vía contencioso administrativa (art. 27 Ley 793):**
- Cuestiones en que la autoridad actuó en ejercicio de facultades discrecionales
- Cuestiones en que el derecho vulnerado sea de orden civil o en que la autoridad haya actuado como persona jurídica
- Resoluciones que sean reproducción de otras no reclamadas en término por el mismo demandante
- Asuntos en que alguna ley haya declarado expresamente la exclusión

**Pago previo en materia tributaria (art. 28 Ley 793):** cuando la resolución ordene el pago de una suma de dinero proveniente de liquidación de cuentas o impuestos, el demandante no puede promover la acción sin abonar previamente esa suma.

### Medidas cautelares (arts. 20-21 Ley 793)

- **Suspensión de la ejecución:** el Tribunal puede acordar la suspensión de la ejecución de las resoluciones administrativas impugnadas cuando su cumplimiento pudiere producir perjuicios irreparables. El peticionante debe dar fianza bastante (art. 20 Ley 793).
- **Levantamiento por interés público:** cuando la autoridad administrativa demandada manifieste que la suspensión produce perjuicios al servicio público o que es urgente cumplir la resolución, el tribunal deja sin efecto la suspensión pero declara a cargo de la autoridad demandada (o personalmente de quienes la desempeñen) la responsabilidad por los perjuicios que la ejecución produzca (art. 21 Ley 793).
- **No aplica Ley 26.854 nacional.**
- **Otras cautelares:** verificar aplicación del CPCC Salta supletoriamente (art. 23 Ley 793).

```
[VERIFICAR RÉGIMEN CAUTELAR SALTA: Ley 793 arts. 20-21 - suspensión requiere fianza - levantamiento por interés público con responsabilidad de los funcionarios que la ejecuten - CPCC Salta supletorio]
```

### Caducidad de la instancia (arts. 18-19 Ley 793)

- Se tiene por desistido todo juicio contencioso administrativo abandonado por el demandante durante **6 meses** (por omisión de actos que le correspondan o por no urgir para que el demandado los produzca) - art. 18 Ley 793.
- Contra el auto de caducidad puede pedirse reposición dentro de los 5 días, fundada exclusivamente en error sobre el cómputo del término.

### Amparo Salta

- **Norma:** art. 87 Constitución Salta (2003) + Ley 7319 (Régimen de Amparo de Salta) y modificatorias
- **Plazo:** verificar plazo de caducidad en la Ley 7319 desde que el afectado conoció o pudo conocer el acto lesivo
- **Competencia:** verificar si en materia administrativa el amparo tramita ante los Juzgados CA o ante otro fuero. La Constitución salteña tiene disposiciones específicas sobre el amparo.
- **Subsidiariedad:** procede cuando no existe otro remedio judicial más idóneo. El proceso contencioso administrativo de la Ley 793 y la Ley 6569 es en muchos casos la vía idónea.

```
[VERIFICAR AMPARO SALTA: Ley 7319 - plazo de caducidad - competencia (Juzgados CA o fuero civil según la materia) - consultar jurisprudencia de la Corte de Justicia de Salta]
```

---

## Normativa de referencia Salta

### Responsabilidad del Estado provincial

- **Sin ley propia equivalente a Ley 26.944 nacional:** Salta no sancionó una ley de responsabilidad del Estado equivalente a la Ley 26.944. Ésta no aplica a demandas contra el Estado provincial salteño.
- **Competencia de los Juzgados CA:** los Juzgados de Primera Instancia CA entienden en procesos contra la Provincia y sus reparticiones por vulneración de derechos subjetivos e intereses legítimos (art. 2 Ley 6569). La pretensión resarcitoria puede plantearse en el proceso contencioso administrativo.
- **Régimen sustantivo:** principios generales del derecho administrativo y jurisprudencia de la Corte de Justicia de Salta.
- **Reclamo administrativo previo:** verificar si la Ley 5018 establece requisito de reclamo previo para la pretensión resarcitoria.
- **No aplicar CCCN:** no invocar arts. 1757, 1741 ni otros del CCCN en demandas contra el Estado provincial sin verificar criterio de la Corte de Justicia de Salta.
- **Prescripción de la acción:** verificar criterio de la Corte de Justicia de Salta.

```
[VERIFICAR RÉGIMEN DE RESPONSABILIDAD SALTA: sin ley propia - principios generales + jurisprudencia Corte de Justicia de Salta - verificar Ley 5018 (reclamo previo) - no aplicar Ley 26.944 ni CCCN sin verificar]
```

### Empleo público Salta

- **Estatuto general:** Ley 5546 (Estatuto del Empleado Público de la Provincia de Salta, 1980) y modificatorias. Texto ordenado por Ley 7913 (Digesto Jurídico, actualizado hasta 31/07/2015). Regula el personal permanente y no permanente del PE provincial y organismos autárquicos que así lo dispongan.
- **Escalafón:** Decreto Ley 1178/96 (Régimen Escalafonario del Personal de la Administración General).
- **Régimen disciplinario:** Ley 5546 + Decreto 2734/2007 (Reglamento General de Investigaciones Administrativas de la Provincia de Salta). Sumario administrativo con garantías de debido proceso.
- **Opción empleo público en la vía contencioso administrativa (art. 50 Ley 5546):** cuando en caso de medidas segregativas el agente va a la vía contencioso administrativa y el pronunciamiento judicial resulta contrario a la medida disciplinaria, el Estado debe reincorporar al empleado en cargo de idénticas condiciones o, a opción del agente, pagar la indemnización que establezca la reglamentación.
- **Estatutos sectoriales principales:**
  - Docentes: Ley 6830 (Estatuto del Educador de la Provincia de Salta) y modificatorias
  - Policía: verificar Ley Orgánica de la Policía de Salta vigente
  - Personal de salud: verificar norma sectorial vigente
  - Personal municipal: verificar si el municipio tiene estatuto propio o remite a la Ley 5546 supletoriamente
  - [COMPLETAR: otros estatutos sectoriales según las áreas de práctica habituales]

```
[VERIFICAR ESTATUTO APLICABLE SALTA: Ley 5546 general (TO Ley 7913) o estatuto sectorial según el organismo - docentes: Ley 6830 / régimen disciplinario: Decreto 2734/2007]
```

### Contratación pública Salta

- **Norma general:** Ley 8072 (Sistema de Contrataciones de la Provincia de Salta) + Decreto Reglamentario 1319/18 y modificatorias
- **Organismo rector:** verificar denominación actual del organismo rector de contrataciones en Salta (Dirección General de Contrataciones o equivalente)
- **Plataforma de compras:** verificar sistema electrónico de contrataciones vigente en Salta
- **Obra pública provincial:** verificar ley de obras públicas provincial vigente. La Ley 13.064 (obra pública nacional) no aplica supletoriamente salvo remisión contractual expresa.
- **Impugnación de licitaciones:** los plazos para impugnar pliegos y preadjudicación están fijados en la Ley 8072 y en cada pliego.

```
[VERIFICAR VIGENCIA: Ley 8072 Salta (contrataciones) + Decreto 1319/18 - los montos de licitación pública/privada/contratación directa se actualizan - verificar antes de encuadrar el procedimiento]
```

### Organismos de control Salta

**Tribunal de Cuentas de Salta:**
- Control externo del Estado provincial. Tiene función jurisdiccional. Sus resoluciones definitivas son impugnables ante el fuero contencioso administrativo.
- El Tribunal de Cuentas de la Municipalidad de Salta tiene competencia sobre la hacienda municipal.

**Fiscal General de Salta:**
- Interviene en los juicios contencioso administrativos como demandante representando a la Administración General de la Provincia cuando impugna resoluciones de otra autoridad administrativa que afecte el patrimonio o los derechos de la Provincia (art. 7 Ley 793) o como defensor cuando el demandado es el Poder Ejecutivo.
- Ante los Juzgados de Primera Instancia CA: Fiscales de Primera Instancia en lo Civil, Comercial y del Trabajo del Distrito Judicial del Centro (art. 5 Ley 6569).
- Las notificaciones al Fiscal General se hacen en su despacho (art. 10 Ley 793).

**IPSAS (Instituto Provincial de Salud de Salta):**
- Ente autárquico de obra social provincial. Sus resoluciones son impugnables ante el fuero contencioso administrativo.

**Defensor del Pueblo de Salta:**
- Constitución Salta. Legitimación para actuar en defensa de derechos colectivos.

---

## Alerta normativa - normas de vigencia variable

*Última verificación de esta sección: mayo 2026. Actualizar cuando cambie alguna de las normas listadas.*

### Plazo de caducidad CCA Salta

```
[ALERTA PLAZO FATAL: art. 12 Ley 793 CCA Salta - 30 días hábiles - desde notificación personal/cédula/edicto de la resolución administrativa - consentimiento tácito posterior también extingue la acción - vencimiento: calcular]
```

### Normas de vigencia variable a verificar en cada consulta

- **Montos de contratación pública (Ley 8072 + Dec 1319/18):** los umbrales se actualizan. Verificar antes de encuadrar el procedimiento.
- **Escala salarial empleo público Salta:** se modifica por paritarias. Verificar resolución de homologación vigente.
- **Habilitaciones municipales:** el régimen varía por municipio. Verificar norma vigente al momento del acto.
- **Digesto Jurídico (Ley 7913):** el texto ordenado de las normas por Ley 7913 está actualizado hasta julio 2015. Para verificar modificaciones posteriores, consultar el Boletín Oficial.

```
[VERIFICAR VIGENCIA: norma Salta - [materia] - consultar Boletín Oficial Salta (https://boletinoficialsalta.gob.ar) antes de aplicar]
```

---

## Fuentes primarias

- **Boletín Oficial Salta:** https://boletinoficialsalta.gob.ar
- **Poder Judicial Salta (jurisprudencia y normativa):** https://www.justiciasalta.gov.ar
- **Portal del Empleado Público Salta:** https://empleopublico.salta.gob.ar
- **Tribunal de Cuentas Salta:** verificar URL vigente
- **IPSAS:** verificar URL vigente

---

## Reglas de citación - administrativo Salta

Las reglas generales del CLAUDE.md argentino y del administrativo-CLAUDE.md nacional aplican íntegramente. Específicas para el fuero contencioso administrativo Salta:

**Jurisprudencia:** nunca citar expediente o carátula sin material aportado. La Corte de Justicia de Salta actúa como alzada definitiva; su jurisprudencia es la referencia principal. Usar:
```
[INSERTAR FALLO VERIFICADO: Corte de Justicia de Salta / Juzgado CA [1ª o 2ª Nominación] - doctrina requerida]
```

**Actos administrativos Salta:** no asumir el contenido de resoluciones, dictámenes del Fiscal General o actos impugnados sin que el abogado los aporte. Usar:
```
[VACÍO PROBATORIO: texto del acto administrativo provincial/municipal no aportado - aportar copia del acto impugnado con sello de notificación]
```

**Plazos CCA Salta:** no transpolar plazos del régimen federal ni de otras provincias. Usar:
```
[ALERTA PLAZO FATAL: art. 12 Ley 793 CCA Salta - 30 días hábiles desde notificación de la resolución administrativa - verificar consentimiento tácito posterior - vencimiento: calcular]
```

---

## Lógica de análisis por institución

### Acto administrativo provincial/municipal - elementos y vicios

Aplicar Ley 5348. Elementos: competencia, objeto, voluntad, forma (art. 42: motivación en casos específicos). Verificar suspensión de ejecutoriedad: la interposición de recursos NO suspende la ejecución del acto (art. 81 Ley 5348); hay que pedirla expresamente.

Preguntas de diagnóstico:
1. ¿Qué acto se impugna? ¿Es definitivo y sin recurso administrativo disponible?
2. ¿El acto fue notificado? ¿En qué fecha? (inicio del cómputo del art. 12 Ley 793 - 30 días)
3. ¿El administrado realizó actos posteriores que puedan interpretarse como consentimiento tácito?
4. ¿Hay expediente administrativo que lo respalda?
5. ¿Se interpusieron los recursos de la Ley 5348 (revocatoria + jerárquico) en plazo?
6. ¿Para entes descentralizados: se interpuso alzada ante el PE?
7. ¿Intervino el Fiscal General cuando era preceptivo?
8. ¿Aplica la Ley 5018 (reclamo previo)?

### Recursos administrativos Salta

Aplicar Ley 5348 arts. 177-185. Verificar siempre:
- Plazo en días hábiles administrativos: revocatoria 10 días
- Cadena: revocatoria → jerárquico (recorriendo la línea) → alzada ante PE (entes descentralizados)
- La interposición de recursos NO suspende la ejecución (art. 81 Ley 5348): pedir suspensión expresamente si se necesita

```
[ALERTA PLAZO FATAL: recurso de revocatoria - Ley 5348 art. 177 - 10 días hábiles administrativos desde notificación - vencimiento: calcular]
```

### Agotamiento de la vía y proceso contencioso administrativo

1. Verificar si la resolución es definitiva y no hay recurso administrativo disponible
2. Verificar que no haya consentimiento tácito del acto (art. 12 in fine Ley 793)
3. Calcular el plazo de 30 días hábiles desde la notificación
4. Verificar si aplica la Ley 5018 (reclamo previo)
5. Verificar cumplimiento del art. 26 Ley 793 (requisitos de procedencia de la demanda)
6. Si hay retardación: verificar los 3 + 3 meses del art. 6 Ley 793

### Responsabilidad del Estado Salta

- No aplicar Ley 26.944 ni CCCN sin verificar criterio de la Corte de Justicia de Salta
- Verificar si aplica reclamo previo (Ley 5018)
- Verificar si la pretensión resarcitoria corresponde al fuero contencioso administrativo (art. 2 Ley 6569)

### Empleo público Salta

Verificar siempre:
- Encuadre en Ley 5546 (TO Ley 7913) o estatuto sectorial (Ley 6830 docentes)
- Régimen disciplinario: Decreto 2734/2007
- Opción del agente entre reincorporación e indemnización si la sentencia resulta favorable (art. 50 Ley 5546)
- La interposición de recursos administrativos no suspende la ejecución del acto de cesantía (art. 81 Ley 5348)

### Contratación pública Salta

Verificar siempre:
- Encuadre según Ley 8072 + Dec 1319/18 y montos vigentes
- Plazos de impugnación de pliegos y preadjudicación
- Para obra pública: verificar ley provincial, no Ley 13.064 nacional

---

## Instrucciones operativas específicas - Salta

### Alerta crítica - plazo de caducidad

El plazo del art. 12 Ley 793 es de caducidad:
- 30 días hábiles desde la notificación personal, por cédula o por edicto
- El consentimiento tácito manifestado por actos posteriores también extingue la acción
- El tribunal puede desechar in límine la demanda presentada fuera de término

Antes de analizar cualquier otra cuestión, emitir:
```
[ALERTA PLAZO FATAL: art. 12 Ley 793 CCA Salta - 30 días hábiles desde notificación - verificar también si hay consentimiento tácito posterior que extinga la acción - vencimiento: calcular]
```

### Alerta sobre la suspensión de los recursos

A diferencia del régimen federal (donde la interposición de recursos administrativos sí suspende la ejecución), en Salta **la interposición de recursos administrativos NO suspende la ejecución del acto impugnado** (art. 81 Ley 5348). Si el cliente necesita la suspensión del acto mientras tramita el recurso administrativo, debe pedirla expresamente invocando alguno de los supuestos del art. 81 inc. a, b o c.

---

- Identificar si el acto es del Estado provincial salteño, de un municipio o de un organismo federal antes de aplicar este perfil o el nacional.
- Verificar agotamiento de la vía (Ley 5348: revocatoria + jerárquico + alzada para entes descentralizados) antes de analizar la acción. Verificar también Ley 5018.
- Plazos en sede administrativa: revocatoria 10 días hábiles administrativos. La interposición NO suspende la ejecución del acto.
- El plazo judicial es de 30 días hábiles desde la notificación. Verificar consentimiento tácito posterior.
- El consentimiento tácito extingue la acción independientemente del plazo (art. 12 in fine Ley 793).
- En empleo público: la reincorporación o la indemnización son opciones del agente, no de la Administración (art. 50 Ley 5546).
- Para pretensiones resarcitorias: verificar si aplica reclamo previo (Ley 5018) y si el fuero CA tiene competencia.
- Verificar intervención preceptiva del Fiscal General (Juzgados CA: Fiscales de 1ª Instancia; Corte de Justicia: Fiscal de Estado).
- No aplicar Ley 26.944 ni CCCN sin verificar criterio de la Corte de Justicia de Salta.
- No asumir el contenido de actos, expedientes ni dictámenes sin que el abogado los aporte.
- Todo escrito ante el fuero contencioso administrativo salteño cierra con "Estado del escrito" estándar más: juzgado nominación y estado del agotamiento de la vía, **plazo art. 12 Ley 793 (verificado / pendiente / vencido)**, verificación de consentimiento tácito posterior, verificación de requisitos del art. 26 Ley 793, intervención del Fiscal General/Fiscal de 1ª Instancia (sí / no / a verificar), próximo plazo procesal.

---

*Última actualización: mayo 2026*
*Normativa base: Ley 5348 LPA Salta (mod. Ley 5552/80), Ley 793 CCA Salta (mod. Ley 6569, Leyes 7822 y 7913), Ley 5018 (reclamo administrativo previo), Ley 7319 (amparo Salta), Ley 5546 (estatuto empleado público, TO Ley 7913), Ley 6830 (estatuto docente), Decreto 2734/2007 (investigaciones administrativas), Ley 8072 + Decreto 1319/18 (contrataciones), Constitución de Salta (2003) arts. 87, 153*
*Autor: Dr. Cristian Aboitiz · [@abogadoaboitiz](https://x.com/abogadoaboitiz)*
