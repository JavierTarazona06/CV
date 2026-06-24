@echo off
setlocal enabledelayedexpansion

set "REPO_ROOT=%~dp0"
set "REPO_ROOT=%REPO_ROOT:~0,-1%"
set "TARGET_PATH=%REPO_ROOT%"

:parse_args
if "%~1"=="" goto run
if /i "%~1"=="--path" (
    if "%~2"=="" goto err_path
    if "%~2:~0,2%"=="--" goto err_path
    set "TARGET_PATH=%~2"
    shift & shift
    goto parse_args
)
if /i "%~1"=="-h" goto usage
if /i "%~1"=="--help" goto usage
echo Error: unknown argument: %~1 1>&2
goto usage_err

:err_path
echo Error: --path requires a PATH argument. 1>&2
goto usage_err

:usage
echo Usage:
echo   clean_repo.bat [--path PATH]
echo.
echo Deletes LaTeX build artifacts ending in:
echo   .aux, .log, .out, .synctex.gz
echo.
echo Options:
echo   --path PATH  Only clean files under PATH.
echo   -h, --help   Show this help.
exit /b 0

:usage_err
echo.
echo Usage:
echo   clean_repo.bat [--path PATH]
echo.
echo Options:
echo   --path PATH  Only clean files under PATH.
echo   -h, --help   Show this help.
exit /b 1

:run
rem If TARGET_PATH is not absolute, prepend REPO_ROOT
if not "%TARGET_PATH:~1,2%"==":\" set "TARGET_PATH=%REPO_ROOT%\%TARGET_PATH%"

if not exist "%TARGET_PATH%" (
    echo Error: path does not exist: %TARGET_PATH% 1>&2
    exit /b 1
)

for /r "%TARGET_PATH%" %%F in (*.aux *.log *.out *.synctex.gz) do (
    echo %%F
    del "%%F"
)

endlocal
