@echo off
echo ========================================
echo  Maple CRM - Installation
echo ========================================
echo.

echo Checking Node.js installation...
node --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Node.js is not installed!
    echo Please install Node.js from https://nodejs.org/
    pause
    exit /b 1
)
echo Node.js found!
echo.

echo [1/2] Installing frontend dependencies...
call npm install
if errorlevel 1 (
    echo ERROR: Frontend installation failed!
    pause
    exit /b 1
)
echo.

echo [2/2] Installing backend dependencies...
cd server
call npm install
if errorlevel 1 (
    echo ERROR: Backend installation failed!
    pause
    exit /b 1
)
cd ..
echo.

echo ========================================
echo  Installation Complete!
echo ========================================
echo.
echo Next steps:
echo 1. Run 'start.bat' to launch the application
echo 2. Open http://localhost:3000 in your browser
echo 3. Login with demo credentials (see README.md)
echo.
pause
