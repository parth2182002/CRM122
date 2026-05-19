# Maple CRM - Professional Business Management System

A modern, full-featured CRM system built with React, Vite, and Node.js.

## 🚀 Features

### User Portal
- **Dashboard**: Overview with statistics and recent activities
- **Accounts**: Full CRUD operations with search and filters
- **Deals**: Pipeline management with value tracking
- **Tasks**: Task management with priorities and due dates
- **Quotations**: Create and manage quotations
- **Reports**: Analytics and insights

### Admin Portal
- **Real-time Monitoring**: Live user activity tracking
- **System Overview**: Complete visibility into all data
- **User Management**: Monitor online users
- **Activity Logs**: Track all system activities

### Technical Features
- ✅ Real-time updates via Socket.IO
- ✅ Dark/Light theme support
- ✅ Responsive design
- ✅ Role-based access control
- ✅ Local storage persistence
- ✅ Modern UI with animations
- ✅ Custom hooks for reusability
- ✅ Service layer architecture

## 📋 Prerequisites

- Node.js 16+ and npm
- Modern web browser

## 🛠️ Installation

### 1. Install Dependencies

**Frontend:**
```bash
npm install
```

**Backend:**
```bash
cd server
npm install
cd ..
```

### 2. Start the Application

**Option A: Using Scripts (Recommended)**

Windows:
```bash
install.bat
start.bat
```

Linux/Mac:
```bash
chmod +x install.sh start.sh
./install.sh
./start.sh
```

**Option B: Manual Start**

Terminal 1 (Backend):
```bash
cd server
npm start
```

Terminal 2 (Frontend):
```bash
npm run dev
```

### 3. Access the Application

- User Portal: http://localhost:3000
- Admin Portal: http://localhost:3000/admin/login

## 🔐 Login Credentials

### Admin
- Username: `admin`
- Password: `admin123`

### Users
- Username: `user1`, `user2`, or `user3`
- Password: `user123`

## 📁 Project Structure

```
maple-crm-system/
├── src/
│   ├── components/
│   │   ├── common/          # Reusable UI components
│   │   ├── layout/          # Layout components
│   │   └── forms/           # Form components
│   ├── pages/
│   │   ├── auth/            # Login pages
│   │   ├── dashboard/       # Dashboard
│   │   ├── accounts/        # Account management
│   │   ├── deals/           # Deal management
│   │   ├── tasks/           # Task management
│   │   ├── quotations/      # Quotation management
│   │   ├── reports/         # Reports & analytics
│   │   └── admin/           # Admin panel
│   ├── context/             # React Context providers
│   ├── hooks/               # Custom React hooks
│   ├── services/            # API services
│   ├── utils/               # Utility functions
│   └── styles/              # Global styles
├── server/                  # Backend server
│   ├── server.js           # Express + Socket.IO
│   └── package.json
├── package.json
├── vite.config.js
└── README.md
```

## 🎨 Customization

### Adding New Users

Edit `src/services/authService.js`:

```javascript
const USERS_DB = {
  newuser: {
    id: 'user-004',
    username: 'newuser',
    password: 'password123',
    role: 'user',
    name: 'New User',
    email: 'newuser@company.com'
  }
}
```

### Changing Theme Colors

Edit CSS variables in `src/styles/index.css`:

```css
:root {
  --color-primary: #3b82f6;  /* Change primary color */
  --color-success: #10b981;
  --color-warning: #f59e0b;
  --color-danger: #ef4444;
}
```

### Adding New Modules

1. Create new page in `src/pages/[module-name]/`
2. Add route in `src/App.jsx`
3. Add navigation link in `src/components/layout/Sidebar.jsx`
4. Create service methods in `src/services/dataService.js`

## 🗄️ Database Integration

Currently uses localStorage. To integrate a real database:

### MongoDB
```bash
npm install mongoose
```

Update `server/server.js`:
```javascript
const mongoose = require('mongoose');
mongoose.connect('mongodb://localhost:27017/maple-crm');
```

### PostgreSQL
```bash
npm install pg sequelize
```

Create models and update service layer accordingly.

## 🚀 Production Build

```bash
npm run build
```

The build output will be in the `dist/` directory.

### Environment Variables

Create `.env` file:
```
VITE_API_URL=https://your-api-url.com
```

## 📊 Features Overview

### Accounts Module
- Create, read, update, delete accounts
- Search by name, email, or ID
- Filter by status and industry
- Track account source and status

### Deals Module
- Manage sales pipeline
- Track deal value and status
- Set close dates
- Monitor conversion rates

### Tasks Module
- Create tasks with priorities
- Set due dates
- Mark as complete
- Filter by status

### Quotations Module
- Generate quotations
- Track validity periods
- Monitor quotation status
- Calculate total amounts

### Reports Module
- Account summary statistics
- Deal pipeline analysis
- Task completion rates
- Quotation analytics

### Admin Features
- Real-time user monitoring
- Activity logging
- System-wide data access
- User online/offline status

## 🔧 Troubleshooting

### Port Already in Use
```bash
# Kill process on port 3000
npx kill-port 3000

# Kill process on port 5000
npx kill-port 5000
```

### Module Not Found
```bash
rm -rf node_modules package-lock.json
npm install
```

### Socket Connection Issues
- Ensure backend is running before frontend
- Check CORS configuration in `server/server.js`
- Verify Socket.IO URL in `src/context/AuthContext.jsx`

## 📝 Development

### Code Structure
- Keep components small and focused
- Use custom hooks for reusable logic
- Follow the service layer pattern
- Maintain consistent naming conventions

### Adding Features
1. Create service methods first
2. Add context provider methods
3. Build UI components
4. Add routing and navigation

## 🤝 Support

For issues or questions:
1. Check this README
2. Review code comments
3. Check browser console for errors
4. Verify all dependencies are installed

## 📄 License

This project is provided as-is for educational and commercial use.

## 🎉 Quick Start Checklist

- [ ] Install Node.js 16+
- [ ] Run `npm install` in root directory
- [ ] Run `npm install` in server directory
- [ ] Start backend: `cd server && npm start`
- [ ] Start frontend: `npm run dev`
- [ ] Open http://localhost:3000
- [ ] Login with demo credentials
- [ ] Explore the features!

---

Built with ❤️ using React, Vite, and Node.js
