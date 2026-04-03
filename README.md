# Kinema

A cinema management and online ticket booking system. The backend is an ASP.NET Core Web API, the frontend is a React single-page app.

## Features

**Customer**
- Browse movies that are airing or coming soon, view showtimes by province and date
- Pick seats, add concessions, apply promotions or bonus points
- Pay through VNPay, receive the ticket with a QR code by email
- View booking history and cancel bookings

**Employee**
- Sell tickets at the counter for walk-in customers
- Check in tickets by scanning the QR code or entering the ticket code
- Manage concessions

**Manager**
- Manage movies and showtimes of their theater
- Revenue reports by time, movie, theater and concession

**Admin**
- Manage provinces, theaters, screens and seat layouts
- Manage manager, employee and customer accounts
- Manage promotions

## Tech stack

| | |
|---|---|
| Backend | ASP.NET Core 8 Web API, Entity Framework Core, SQL Server, ASP.NET Core Identity, JWT |
| Frontend | React 19, Vite, Redux Toolkit, TanStack Query, Ant Design, Tailwind CSS |
| Other | VNPay sandbox (payment), Brevo (email), QRCoder, Recharts |

## Project structure

```
KinemaAPI/      ASP.NET Core Web API (controllers, repositories, services, migrations)
KinemaClient/   React client (features are grouped by role: admin, manager, employee, customer)
KinemaDB.sql    Database script with sample data
```

## Getting started

Requirements: .NET 8 SDK, SQL Server, Node.js 20+.

### Backend

```bash
cd KinemaAPI/KinemaAPI/KinemaAPI
cp appsettings.example.json appsettings.json
dotnet run
```

Fill in `appsettings.json` before running: the SQL Server connection string, a JWT key, and optionally the Brevo and VNPay settings (email and online payment will not work without them).

On first start the API applies the migrations and seeds roles, theaters and demo accounts. To get sample movies, showtimes and bookings as well, run `KinemaDB.sql` on your SQL Server instead.

Swagger is available at `https://localhost:5030/swagger`.

### Frontend

```bash
cd KinemaClient/KinemaClient/KinemaClient
npm install
npm run dev
```

Create a `.env` file in that folder with `VITE_BACKEND_URL` pointing to the API. The client runs at `http://localhost:3001`.

## Demo accounts

| Role | Email | Password |
|---|---|---|
| Admin | admin@kinema.com | Admin@123 |
| Manager | manager.hoankiem@kinema.com | Manager@123 |
| Employee | emp1.hoankiem@kinema.com | Employee@123 |
| Customer | khachhang1@gmail.com | Customer@123 |
