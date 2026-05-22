# Casos de verificación del sistema

Esta carpeta contiene casos de prueba que permiten verificar que los perfiles
de área del sistema funcionan correctamente. La idea es simple: si un abogado
sabe que un acta de allanamiento tiene una nulidad evidente por falta de
testigos, puede comprobar que el sistema también la detecta. Si no la detecta,
hay un problema en el perfil que hay que corregir.

En el mundo del desarrollo de software esto se llama "eval" (abreviatura de
"evaluation"). En la práctica jurídica es lo mismo que un caso de control:
un expediente o pieza procesal con solución conocida que se usa para verificar
que una herramienta funciona antes de usarla en un caso real.

No es automatización. No corre solo. El abogado pega el caso en el sistema,
lee el análisis que produce y lo compara contra la solución esperada.

---

## Estructura de un caso de verificación

Cada caso es una carpeta con tres archivos:

```
evals/
  penal-nulidad-allanamiento/
    caso.md       # Pieza procesal anonimizada
    rubrica.md    # Puntos que el sistema debe identificar
    resultado.md  # Solución esperada o criterios de aprobación
```

### caso.md

Pieza procesal anonimizada que se pega en el contexto del sistema. Puede ser
un acta, un escrito, un contrato, una resolución o cualquier documento
relevante para el caso. Debe estar completamente anonimizado según el
protocolo de `SECURITY.md`.

Encabezado obligatorio:

```
---
area: penal | laboral | civil | familia | administrativo | tributario | societario | concursal | contratos
perfil: nombre del archivo CLAUDE.md que corresponde a este caso
fuero: CPPN | CPPF | CPPCABA | CPPBA | CNAT | Nacional Civil | otro
problema: descripción breve del vicio o vulnerabilidad que contiene el caso
---
```

### rubrica.md

Lista de puntos que el análisis del sistema debe cubrir para considerar
el caso aprobado. Cada punto es binario: el sistema lo identifica o no.

Formato:

```
## Rúbrica · [nombre del caso]

### Obligatorios (el sistema debe identificar todos)
- [ ] Punto 1
- [ ] Punto 2

### Deseables (mejoran el análisis pero no son bloqueantes)
- [ ] Punto 3
- [ ] Punto 4

### Ausentes esperados (el sistema no debe mencionar esto)
- [ ] Punto 5
```

### resultado.md

Solución de referencia. Puede ser:

- El análisis completo generado por el sistema en un momento en que
  funcionaba correctamente, o
- Una descripción de los criterios mínimos que debe cumplir cualquier
  análisis válido.

Si es un análisis de referencia, agregar en el encabezado la fecha y
el modelo usado.

---

## Cómo usar un caso de verificación

1. Abrí una sesión nueva con el perfil correspondiente cargado en el
   Project o en Claude Code.
2. Pegá el contenido de `caso.md` como primer mensaje.
3. Pedile al sistema que analice el documento según su perfil de área.
4. Comparé el análisis contra `rubrica.md`. Marcá los puntos cubiertos.
5. Si todos los obligatorios están cubiertos: caso aprobado.
6. Si falla algún obligatorio: el perfil tiene un problema en esa área
   que hay que reportar o corregir.

---

## Casos prioritarios para contribución

| Área | Caso sugerido | Estado |
|---|---|---|
| Penal | Nulidad de allanamiento por falta de testigos | Pendiente |
| Penal | Nulidad de detención por ausencia de flagrancia | Pendiente |
| Laboral | Prescripción bienal art. 256 LCT | Pendiente |
| Laboral | Telegrama de renuncia con vicio de voluntad | Pendiente |
| Civil | Caducidad de instancia | Pendiente |
| Contratos | Cláusula abusiva en contrato de adhesión | Pendiente |
| Administrativo | Caducidad art. 25 LNPA | Pendiente |

---

## Cómo aportar un caso

1. Creá una carpeta en `evals/` con el formato `area-descripcion-breve`
   (todo en minúsculas, sin espacios, por ejemplo: `penal-nulidad-allanamiento`).
2. Agregá los tres archivos (`caso.md`, `rubrica.md`, `resultado.md`)
   siguiendo el formato de esta guía.
3. La pieza procesal debe estar completamente anonimizada. No se aceptan
   casos con datos reales de partes, causas o expedientes.
4. Abrí un pull request describiendo qué problema detecta el caso y por
   qué es relevante para la práctica argentina.

Si tenés dudas sobre el formato o querés discutir un caso antes de armarlo,
abrí un issue o escribí por mensaje directo.
