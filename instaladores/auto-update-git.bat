@echo off
REM ============================================================
REM  Auto-update por git - Windows
REM  Para usuarios que clonaron el repo con git (editores y
REM  cualquiera que tenga git instalado).
REM
REM  Que hace: programa una tarea de Windows que corre "git pull"
REM  cada vez que inicias sesion. Asi tu copia local queda al dia
REM  sin que tengas que acordarte de nada.
REM
REM  Se ejecuta UNA sola vez. Doble clic y listo.
REM ============================================================
setlocal

REM Raiz del repo = carpeta padre de \instaladores. Se autodetecta.
set "REPO_DIR=%~dp0.."
pushd "%REPO_DIR%"
set "REPO_DIR=%CD%"
popd

REM Verifica que sea un repo git de verdad
if not exist "%REPO_DIR%\.git" (
  echo ERROR: no encuentro un repo git en "%REPO_DIR%".
  echo Si no clonaste con git, usa el instalador sin git: instalar-sin-git.bat
  pause
  exit /b 1
)

REM La tarea llama al helper _pull.bat (versionado en el repo)
schtasks /create /tn "ClaudeLegal AutoUpdate" /tr "\"%REPO_DIR%\instaladores\_pull.bat\"" /sc onlogon /f

echo.
echo Listo. Cada vez que inicies sesion, tu copia local se actualiza con "git pull".
echo Repo: %REPO_DIR%
echo Log:  %REPO_DIR%\instaladores\_update.log
echo.
echo Tu legal.local.md no se toca: esta protegido por .gitignore.
pause
endlocal
