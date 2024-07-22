@echo off
setlocal

:: Set the name of the application to close (e.g., notepad.exe)
set "appName=app.exe"

:: Time to wait in seconds (120 seconds = 2 minutes)
set "waitTime=60"

:: Start the application
start "" "%appName%"

:: Wait for the specified time
timeout /t %waitTime% /nobreak >nul

:: Close the application
taskkill /f /im "%appName%"

endlocal
