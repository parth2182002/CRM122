@echo off
echo ========================================
echo  Maple CRM - Starting...
echo ========================================
echo.

echo [1/2] Starting backend server...
start "Maple CRM Backend" cmd /k "cd server && npm start"
timeout /t 3 /nobreak >nul
echo.

echo [2/2] Starting frontend...
start "Maple CRM Frontend" cmd /k "npm run dev"
echo.

echo ========================================
echo  Application is starting!
echo ========================================
echo.
echo Backend:  http://localhost:5000
echo Frontend: http://localhost:3000
echo.
echo Admin Login: http://localhost:3000/admin/login
echo   Username: admin
echo   Password: admin123
echo.
echo User Login: http://localhost:3000/login
echo   Username: user1
echo   Password: user123
echo.
echo Press any key to open the application...
pause >nul
start http://localhost:3000
