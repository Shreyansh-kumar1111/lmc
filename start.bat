@echo off
title LegalMetriCheck - Intelligent Compliance System
echo =====================================================================
echo   LegalMetriCheck - Intelligent Packaged Commodity Compliance System
echo   Legal Metrology (Packaged Commodities) Rules, 2011 Automated Audit
echo =====================================================================
echo.
echo Starting LegalMetriCheck server...
echo Your default web browser will open automatically once ready.
echo.
cd /d "%~dp0"

REM Free port 3000 if an old node instance is stuck
for /f "tokens=5" %%a in ('netstat -aon ^| findstr :3000 ^| findstr LISTENING') do taskkill /f /pid %%a >nul 2>&1

REM Launch background browser opener
start "" /min cmd /c "call scripts\open_browser.bat"

REM Launch Next.js development server
call npm run dev
pause
