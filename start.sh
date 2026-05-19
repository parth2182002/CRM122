#!/bin/bash

echo "========================================"
echo " Maple CRM - Starting..."
echo "========================================"
echo ""

echo "[1/2] Starting backend server..."
cd server
npm start &
BACKEND_PID=$!
cd ..
sleep 3
echo ""

echo "[2/2] Starting frontend..."
npm run dev &
FRONTEND_PID=$!
echo ""

echo "========================================"
echo " Application is running!"
echo "========================================"
echo ""
echo "Backend:  http://localhost:5000"
echo "Frontend: http://localhost:3000"
echo ""
echo "Admin Login: http://localhost:3000/admin/login"
echo "  Username: admin"
echo "  Password: admin123"
echo ""
echo "User Login: http://localhost:3000/login"
echo "  Username: user1"
echo "  Password: user123"
echo ""
echo "Press Ctrl+C to stop all services"
echo ""

trap "kill $BACKEND_PID $FRONTEND_PID; exit" INT
wait
