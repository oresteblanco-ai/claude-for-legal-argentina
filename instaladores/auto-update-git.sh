#!/usr/bin/env bash
# ============================================================
#  Auto-update por git - Mac y Linux
#  Para usuarios que clonaron el repo con git (editores y
#  cualquiera que tenga git instalado).
#
#  Que hace: programa una tarea que corre "git pull" a las 03:30.
#   - Mac: launchd con RunAtLoad + horario, asi recupera el pull
#     si la maquina estaba dormida o apagada a esa hora.
#   - Linux: cron a las 03:30 (si la maquina suele estar apagada
#     a esa hora, instala anacron para que recupere el atraso).
#
#  Se ejecuta UNA sola vez:  bash auto-update-git.sh
# ============================================================
set -euo pipefail

# Raiz del repo = carpeta padre de /instaladores. Se autodetecta.
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
GIT_BIN="$(command -v git || true)"

if [[ -z "$GIT_BIN" ]]; then
  echo "ERROR: git no esta instalado. Si no usas git, corre instalar-sin-git.sh"
  exit 1
fi
if [[ ! -d "$REPO_DIR/.git" ]]; then
  echo "ERROR: no encuentro un repo git en $REPO_DIR."
  echo "Si no clonaste con git, usa instalar-sin-git.sh"
  exit 1
fi

LOG="$SCRIPT_DIR/_update.log"

if [[ "$(uname)" == "Darwin" ]]; then
  PLIST="$HOME/Library/LaunchAgents/com.claudelegal.autoupdate.plist"
  mkdir -p "$HOME/Library/LaunchAgents"
  cat > "$PLIST" <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key><string>com.claudelegal.autoupdate</string>
    <key>ProgramArguments</key>
    <array>
        <string>/bin/sh</string><string>-c</string>
        <string>cd "$REPO_DIR" && "$GIT_BIN" pull >> "$LOG" 2>&1</string>
    </array>
    <key>StartCalendarInterval</key>
    <dict><key>Hour</key><integer>3</integer><key>Minute</key><integer>30</integer></dict>
    <key>RunAtLoad</key><true/>
</dict>
</plist>
EOF
  launchctl unload "$PLIST" 2>/dev/null || true
  launchctl load "$PLIST"
  echo "Listo (macOS). git pull automatico instalado (03:30 + al iniciar sesion)."
else
  LINE="30 3 * * * cd \"$REPO_DIR\" && \"$GIT_BIN\" pull >> \"$LOG\" 2>&1 # claudelegal-autoupdate"
  ( crontab -l 2>/dev/null | grep -v "claudelegal-autoupdate" ; echo "$LINE" ) | crontab -
  echo "Listo (Linux). git pull automatico instalado via cron (03:30)."
  echo "Si la maquina suele estar apagada a esa hora, instala anacron."
fi

echo "Repo: $REPO_DIR"
echo "Tu legal.local.md no se toca: esta protegido por .gitignore."
