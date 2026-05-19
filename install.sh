#!/bin/bash

echo "========================================"
echo " Maple CRM - Installation"
echo "========================================"
echo ""

echo "Checking Node.js installation..."
if ! command -v node &> /dev/null
then
    echo "ERROR: Node.js is not installed!"
    echo "Please install Node.js from https://nodejs.org/"
    exit 1
fi
echo "Node.js found!"
echo ""

echo "[1/2] Installing frontend dependencies..."
npm install
if [ $? -ne 0 ]; then
    echo "ERROR: Frontend installation failed!"
    exit 1
fi
echo ""

echo "[2/2] Installing backend dependencies..."
cd server
npm install
if [ $? -ne 0 ]; then
    echo "ERROR: Backend installation failed!"
    exit 1
fi
cd ..
echo ""

echo "========================================"
echo " Installation Complete!"
echo "========================================"
echo ""
echo "Next steps:"
echo "1. Run './start.sh' to launch the application"
echo "2. Open http://localhost:3000 in your browser"
echo "3. Login with demo credentials (see README.md)"
echo ""
