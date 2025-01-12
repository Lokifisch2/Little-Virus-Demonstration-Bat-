@echo off
echo %~f0 > LOL.conf
for /f "tokens=*" %%A in (LOL.conf) do (
    set content=%%A
)
setlocal

if exist "LOL.vbs" (
    echo "LOL.vbs found."
    start LOL.vbs
) else (
    echo "Error: LOL.vbs not found."
)

endlocal
pause