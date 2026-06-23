@echo off
REM ============================================================
REM  Helper que ejecuta la tarea programada (no lo corras a mano).
REM  Hace el git pull en la raiz del repo y deja log.
REM  Se autolocaliza: %~dp0 es \instaladores, el repo es el padre.
REM ============================================================
cd /d "%~dp0.."
git pull >> "%~dp0_update.log" 2>&1
