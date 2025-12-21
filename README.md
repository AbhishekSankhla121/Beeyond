References:
Architecture reference: https://github.com/AbhishekSankhla121/Beeyond/blob/main/Architecture.png
application setup reference:
- https://github.com/AbhishekSankhla121/Beeyond/blob/main/ApplicationSetup.md
- https://github.com/AbhishekSankhla121/Beeyond/blob/main/dockerCommand.



🚀 Beeyond – Full Stack Application 📦 GitHub Repositories

Root Repository (Mono Repo) 👉 https://github.com/AbhishekSankhla121/beeyond

Backend (Git Submodule) 👉 https://github.com/AbhishekSankhla121/beeyond-backend

Frontend (Git Submodule) 👉 https://github.com/AbhishekSankhla121/beeyond-frontend

🌐 Live URLs

Frontend Live URL 🔗 https://beeyondfrontend.fazalbazar.shop/

Backend Live API URL 🔗 https://beeyondbackend.fazalbazar.shop/

WebSocket Live URL 🔗 wss://beeyondbackend.fazalbazar.shop

🛠️ Application Setup 🧑‍💻 DevContainer Setup (For Developers)

Part 1 📎 https://drive.google.com/file/d/1ncAow6zDp_22gvN7oH04mabyrMxopUue/view?usp=sharing

Part 2 (Optional) 📎 https://drive.google.com/file/d/110MGbytl7zUgGaFMGfxQqYONtKTuHCAO/view?usp=sharing

💻 Run Application on Local Machine (Without DevContainer)

📎 https://drive.google.com/file/d/1pL-SnXvZHr3vHz9Cx4hqBAjWrv9Xo6XZ/view?usp=sharing

🎥 Demo Videos

CI/CD Pipeline Demo ▶️ https://drive.google.com/file/d/1_rosET36rg4eyuZnsM8PPqjBN3VLsZrx/view?usp=sharing

Running Application Demo ▶️ https://drive.google.com/file/d/1ps-p4tLntLqcIm2p5yuEnFlSUCS9trXn/view?usp=sharing




Details:
# Real-Time Order & Delivery System

A secure, scalable, role-based real-time commerce system built using React, Node.js, MongoDB, and WebSockets.

---

## Project Overview

This system is a Quick Commerce / Order Management Platform that supports:

- Customers placing and tracking orders
- Delivery partners accepting and updating orders
- Admins monitoring the system
- Real-time updates using WebSockets
- Secure authentication using httpOnly cookies

The architecture is designed to be stateless, secure, scalable, and production-ready.

---

## High-Level Architecture

Frontend (React)
    |
    | httpOnly Cookies (JWT)
    v
Backend API (Node.js + Express)
    |
    |-- MongoDB (Users, Orders)
    |-- WebSocket Server (Socket.IO)

---

## Key Architectural Principles

- Stateless backend using JWT authentication
- Secure cookies (no localStorage or sessionStorage)
- Centralized authentication and role validation
- Real-time order lifecycle updates
- Clean separation of concerns
- Horizontally scalable architecture



---

## Backend API Endpoints

### Authentication Routes

| Method | Endpoint                 | Description               |
|--------|--------------------------|---------------------------|
| POST   | /api/v1/auth/register    | Register new user         |
| POST   | /api/v1/auth/login       | Login and set cookie      |
| POST   | /api/v1/auth/logout      | Logout and clear cookie   |
| GET    | /api/v1/me               | Get logged-in user        |

---

### Customer Routes

| Method | Endpoint                 | Description               |
|--------|--------------------------|---------------------------|
| POST   | /api/v1/orders           | Place an order            |
| GET    | /api/v1/orders/my        | Get my orders             |
| GET    | /api/v1/orders/:id       | Get order details         |

---

### Delivery Partner Routes

| Method | Endpoint                         | Description               |
|--------|----------------------------------|---------------------------|
| GET    | /api/v1/orders/unassigned        | Available orders          |
| PATCH  | /api/v1/orders/:id/accept        | Accept an order           |
| PATCH  | /api/v1/orders/:id/status        | Update order status       |

---

### Admin Routes

| Method | Endpoint                         | Description               |
|--------|----------------------------------|---------------------------|
| GET    | /api/v1/admin/users              | Get all users             |
| GET    | /api/v1/admin/orders             | Get all orders            |
| PATCH  | /api/v1/admin/users/:id/disable  | Disable a user            |

---

## Error Handling Strategy

- Internal errors are never exposed to the client
- Production responses use generic messages
- Detailed errors are logged server-side




---

## Why This Architecture Works Well

- Secure authentication using httpOnly cookies
- Stateless backend with scalable design
- Real-time updates via WebSockets
- Strong separation of frontend and backend concerns
- Role-based access control
- No token leakage
- Centralized authentication state

---

## Future Improvements

- Refresh token rotation
- Redis adapter for socket scaling
- Payment gateway integration
- Admin analytics dashboards
- Fully mobile-responsive UI
