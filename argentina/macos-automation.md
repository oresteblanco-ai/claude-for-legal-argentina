# Módulo opcional · Automatización de escritorio macOS

> Módulo de integración con `macos-use`: control nativo de aplicaciones macOS
> desde Claude Code. No aplica a Claude.ai web ni a entornos Windows/Linux.
>
> Activación: opt-in manual. Ver sección "Requisitos" antes de instalar.
>
> Repo macos-use: https://github.com/mediar-ai/mcp-server-macos-use

---

## Para quién aplica

Este módulo es útil si:

- Usás Claude Code (CLI) en una Mac con macOS 13 o superior.
- Tu flujo de trabajo incluye apps de escritorio que no tienen API ni integración
  nativa con el sistema (portales judiciales, sistemas de gestión de estudio,
  formularios de organismos administrativos).
- Querés automatizar pasos manuales repetitivos que hoy hacés vos entre que
  Claude genera un documento y ese documento llega a destino.

No aplica si:

- Usás claude.ai web (Projects): macos-use requiere un cliente MCP local.
- Tu sistema operativo es Windows o Linux.
- Todo tu flujo es API/web sin interacción con apps de escritorio.

---

## Qué hace

`macos-use` es un servidor MCP escrito en Swift que le da a Claude Code acceso
al árbol de accesibilidad nativo de macOS (el mismo que usa VoiceOver). Esto le
permite a Claude clickear botones, tipear en campos, navegar menús y leer el
estado de cualquier app del sistema, sin AppleScript y sin capturas de pantalla.

Cada acción devuelve solo lo que cambió en la interfaz (diff del árbol), no la
pantalla completa. El resultado es que Claude opera con datos estructurados y
precisos, no con OCR sobre pixels.

---

## Casos de uso jurídicos concretos

### Portales judiciales sin API

Muchos portales del PJN, MEJ, SCBA y organismos administrativos no tienen API
pública. macos-use puede navegar esos portales desde el navegador desktop (Safari,
Chrome) con las mismas credenciales que usás vos.

Ejemplos de prompts:

```
Abrí Chrome, ingresá al portal MEJ con mis credenciales, buscá la causa
[número de expediente] y traeme el último movimiento.
```

```
Ingresá al sistema de consulta del PJN, buscá todas las causas activas
del estudio y listame las que tienen vencimiento esta semana.
```

```
Abrí el portal de AFIP, entrá a Mis Facilidades y traeme el estado
actual del plan de pagos de CUIT [número].
```

### Carga de escritos y formularios

Cuando el sistema genera un escrito o formulario, macos-use puede encargarse
de copiarlo al sistema de gestión o portal correspondiente.

```
Tomá el escrito que generamos, abrí [sistema de gestión], creá un
expediente nuevo con los datos del encabezado y pegá el texto en el
campo de descripción.
```

```
Abrí el formulario de habilitación de IGJ para constitución de SAS,
completá los campos con los datos del acta que tenemos en el contexto
y guardá el borrador.
```

### Extracción de datos de sistemas sin exportación

Algunos sistemas de gestión de estudio (Lexis, Estudio, otros) no permiten
exportar datos en forma estructurada. macos-use puede leer esos datos directamente
del árbol de accesibilidad.

```
Abrí Lexis, buscá todas las causas activas con vencimiento en los
próximos 10 días hábiles y traeme la lista en formato texto.
```

### Adjuntar y enviar documentos

```
Tomá el PDF generado, abrí Mail, creá un nuevo mensaje para
[destinatario], adjuntá el PDF y esperá mi confirmación antes de enviar.
```

---

## Requisitos

- macOS 13 (Ventura) o superior.
- Claude Code instalado: `npm i -g @anthropic-ai/claude-code`
- Permiso de Accesibilidad concedido al terminal o cliente que corre Claude Code.
  Se otorga en: Configuración del Sistema > Privacidad y Seguridad > Accesibilidad.
- Opcional: permiso de Grabación de Pantalla, solo si necesitás capturas de ventana.

---

## Instalación

### En Claude Code (un solo comando)

```bash
claude mcp add macos-use -- npx -y mcp-server-macos-use
```

Swift compila en el primer uso, aproximadamente 20 segundos. Las ejecuciones
siguientes son instantáneas.

### En Claude Desktop (JSON)

Agregar en el archivo de configuración de Claude Desktop
(`~/Library/Application Support/Claude/claude_desktop_config.json`):

```json
{
  "mcpServers": {
    "macos-use": {
      "command": "npx",
      "args": ["-y", "mcp-server-macos-use"]
    }
  }
}
```

---

## Herramientas disponibles

Una vez instalado, el sistema tiene acceso a seis herramientas:

| Herramienta | Qué hace |
|---|---|
| `open_application_and_traverse` | Abre o enfoca una app por nombre, bundle ID o path |
| `click_and_traverse` | Clickea por texto de elemento o coordenadas; opcionalmente tipea y presiona una tecla |
| `type_and_traverse` | Tipea en el campo enfocado, con modificadores opcionales |
| `press_key_and_traverse` | Teclas de navegación, combinaciones con ⌘ ⇧ ⌥ |
| `scroll_and_traverse` | Scroll en cualquier dirección |
| `refresh_traversal` | Relectura del árbol sin acción |

Cada herramienta devuelve el diff del árbol de accesibilidad, no la pantalla completa.

---

## Seguridad y control

- Cada acción pide aprobación explícita antes de ejecutarse (el cliente MCP
  muestra un prompt de confirmación). Claude no clickea nada sin que lo aprobés.
- Durante la automatización, un overlay bloquea el teclado y mouse para que no
  interfieran con las acciones del agente. Escape cancela la acción en curso.
- Un watchdog de 30 segundos previene bloqueos permanentes.
- El servidor corre 100% local. No hay egreso de red desde el servidor.
- El permiso de Accesibilidad se otorga a la app terminal que corre Claude Code,
  no al servidor macos-use en sí. Se puede revocar en cualquier momento desde
  Configuración del Sistema.

---

## Limitaciones conocidas

- **Apps sin árbol de accesibilidad:** algunas apps Electron eliminan el árbol AX.
  En ese caso, el servidor cae back a clicks por coordenadas (menos preciso).
- **Drag & drop entre ventanas:** funciona dentro de una ventana, es inestable
  entre dos ventanas distintas. Alternativa: usar copiar/pegar.
- **Sin record/replay:** las automatizaciones no se pueden grabar y reproducir
  determinísticamente. Cada ejecución pasa por Claude Code.
- **No reemplaza APIs:** para portales que tienen API pública documentada
  (ej: BORA con el conector MCP), preferir la API. macos-use es para lo que
  no tiene integración nativa.

---

## Integración con el sistema CLAUDE.md

macos-use no modifica la lógica de redacción jurídica ni el protocolo de
marcadores. Opera en la capa de entrega, después de que el sistema ya generó
el documento o análisis.

El flujo típico es:

```
Claude genera el escrito → [Estado del escrito sin marcadores pendientes]
→ macos-use lo entrega al sistema de destino
```

Si el escrito tiene marcadores pendientes (`[VACÍO PROBATORIO]`,
`[INSERTAR FALLO VERIFICADO]`, etc.), resolver esos marcadores primero.
No usar macos-use para cargar escritos incompletos.

---

## Desinstalación

```bash
# Remover el servidor MCP de Claude Code
claude mcp remove macos-use

# Desinstalar el paquete npm (opcional)
npm uninstall -g mcp-server-macos-use
```

Revocar el permiso de Accesibilidad en:
Configuración del Sistema > Privacidad y Seguridad > Accesibilidad.

---

## Estructura del repo con este módulo

Este archivo se agrega como módulo opcional en la raíz del repo:

```
argentina/
  CLAUDE.md
  fuentes.md                 # Conectores MCP - incluye referencia a este módulo
  ...
  macos-automation.md        # Este archivo - módulo opcional macOS
```

No modifica ningún archivo existente del repo. `fuentes.md` lo referencia en la
sección "Módulo de automatización de escritorio". `CLAUDE.md` lo lista en la
estructura del repo.

---

*Última actualización: mayo 2026*
*Fuente: https://macos-use.dev · https://github.com/mediar-ai/mcp-server-macos-use*
*Autor: Dr. Cristian Aboitiz · [@abogadoaboitiz](https://x.com/abogadoaboitiz)*
