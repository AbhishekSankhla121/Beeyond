***References:***

- `Architecture reference`: [Image](https://github.com/AbhishekSankhla121/Beeyond/blob/main/Architecture.png)

***application setup reference:***
- `Application-setup makrdown file` : [link](https://github.com/AbhishekSankhla121/Beeyond/blob/main/ApplicationSetup.md)
- `Docker-command makrdown file` : [link](https://github.com/AbhishekSankhla121/Beeyond/blob/main/dockerCommand).

***demo and setup links***: [link](https://github.com/AbhishekSankhla121/Beeyond/blob/main/SetupvideoLinks.md)



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
| GET    | /api/v1/orders           | Get my orders             |
| GET    | /api/v1/orders/:id       | Get one order details     |
| GET    | /api/v1/product          | Get all product           |

---

### Delivery Partner Routes  

| Method | Endpoint                         | Description               |
|--------|----------------------------------|---------------------------|
| GET    | /api/v1/orders                   | get unAssigned orders     |
| POST   | /api/v1/orders                   | Accept/assign an order    |
| PATCH  | /api/v1/orders                   | Update order status       |
| GET    | /api/v1/me                       | Update order status       |

---

### Admin Routes

| Method | Endpoint                         | Description               |
|--------|----------------------------------|---------------------------|
| Post   | /api/v1/admin/product            | create product            |
| GET    | /api/v1/admin/get-partner        | Get all delivery partner  |
| GET    | /api/v1/admin/order              | All Order placed by users |
| GET    | /api/v1/admin/stats              | All stats for admin dashb |

| Method | Endpoint                 | Description               |
|--------|--------------------------|---------------------------|
| GET    | /health                  | check application health  |

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
