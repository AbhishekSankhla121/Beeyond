# Beeyond Tech Assignment

# 🚀 Full-Stack + DevOps Assignment: Real-Time Order & Delivery System

---

## ✨ Project Overview

Design and build a **Real-Time Quick Commerce Application** where:

- Customers can **place orders** and **track live status**.
- Delivery partners can **accept and update orders** in real-time.
- Admins can **monitor the system**.
- The system should be **self-hosted on a cloud server**, **Dockerized**, and **resilient to basic failures**.

---

## 💡 Tech Stack Guidelines

### Frontend (Mandatory)

- Framework: **React.js** **or** **Next.js**
- Host frontend on your **own cloud VM** (NOT Vercel/Netlify).
- Serve using **Nginx** or a **custom Express server**.
- Must be responsive.

### Backend (Mandatory)

- Framework: **Node.js + Express.js** **or** **Next.js API Routes**
- Must handle:
    - Customer APIs
    - Delivery Partner APIs
    - Admin APIs
    - WebSocket Server (real-time tracking)

### Database (Mandatory)

- Use **MongoDB** (recommended) **or** **PostgreSQL**
- Can be self-hosted inside Docker or use a managed service (e.g., MongoDB Atlas).

### Authentication (Mandatory)

- Use **JWT (JSON Web Token)** for authenticating all users (Customers, Delivery Partners, Admin).
- Implement basic **Role-Based Access** where necessary.

### Real-Time Communication (Mandatory)

- Use **Socket.io** to:
    - Update customers about order progress.
    - Lock orders for the first delivery partner who accepts.

### Hosting & Deployment (Mandatory)

- Use **AWS EC2**, **GCP VM**, **Azure VM**, or **DigitalOcean Droplet**.
- Host **both** frontend and backend on your own server.
- Set up **Nginx** as a **reverse proxy**.
- Expose API and WebSocket endpoints securely.
- Dockerize all services.

> 🔴 Note: Hosting on Vercel, Netlify, or Railway is NOT allowed.
> 

---

## 🔹 Core Requirements

### Functionalities

- **Customer Panel**
    - Register / Login
    - View Product Catalog
    - Place Orders
    - Live Order Status Tracking
- **Delivery Partner Panel**
    - Register / Login
    - View Unassigned Orders
    - Accept Orders (lock mechanism)
    - Update Delivery Status (Picked Up, On the Way, Delivered)
- **Admin Panel**
    - View all orders
    - View all delivery partners
    - View live statuses

### Backend APIs

- Auth APIs: Register/Login (JWT)
- Customer APIs: Place/View orders
- Delivery APIs: Accept/Update order status
- Admin APIs: View system status
- Health Check APIs for monitoring

### Docker & Deployment

- Write a `Dockerfile` for backend
- Write a `Dockerfile` for frontend
- Write a `docker-compose.yml` to orchestrate backend, frontend, and database
- Basic health monitoring endpoint (`/health`) in backend

### Hosting

- Serve React/Next frontend using Nginx or Express.js static hosting.
- Reverse proxy API requests to backend using Nginx.
- WebSocket server should be reachable publicly.

---

## 📒 Deliverables

| Deliverable | Details |
| --- | --- |
| GitHub Repository | Code for frontend, backend, Dockerfiles, docker-compose.yml |
| Frontend Live URL | Example: [http://yourdomain.com](http://yourdomain.com/) |
| Backend Live API URL | Example: [http://api.yourdomain.com](http://api.yourdomain.com/) |
| WebSocket Live URL | Example: ws://api.yourdomain.com |
| Database Setup | Either included in Docker or linked to managed DB |
| README.md | Full setup instructions (SSH + Docker run) |
| Demo Video | Working video of the app |

---

## 📚 README must include

1. Project Overview
2. System Architecture Diagram (simple block diagram)
3. Stack Used
4. Folder Structure
5. Setup Instructions:
    - SSH Commands to login
    - `git clone` steps
    - `docker-compose up` steps
    - Environment variables needed
6. Hosting & Deployment Steps
7. WebSocket Flow Explanation
8. Scaling Plan:
    - How you would add Redis for socket scaling
    - Horizontal scaling using Load Balancer
9. Future Improvements (Optional)

---

## ⚡ Tips

- Focus on **clean architecture** (modular code).
- Keep **frontend and backend separate**.
- Use **async/await**, **error handling**, and **JWT middleware**.
- Add **simple loading indicators** on frontend while waiting for live updates.
- In case of WebSocket reconnect, **fetch last known order status**.
- Write a **clear and neat README** to explain all steps.

---

# 🚀 Good Luck!

We are evaluating your **coding ability**, **engineering mindset**, **DevOps thinking**, and **attention to detail**.

Deliver like a true Full-Stack Engineer! 🚀