@echo off
cd /d "%~dp0"
start "Fairy Tale Server" cmd /k "python server.py"
timeout /t 1 /nobreak >nul
start http://127.0.0.1:8000/