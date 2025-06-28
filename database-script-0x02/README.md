# Sample Data Seeder – Airbnb Clone

## 📄 Overview

This folder contains SQL statements used to populate the Airbnb database schema with realistic sample data. The data covers all major entities including users, properties, bookings, payments, reviews, and messages.

---

## 📂 Files

### `seed.sql`
- Populates the following tables with real-world examples:
  - `User`
  - `Property`
  - `Booking`
  - `Payment`
  - `Review`
  - `Message`

---

## 💡 Highlights

- Multiple users including guest, host, and admin roles
- Properties owned by hosts
- Bookings placed by guests
- Payments linked to bookings
- Reviews and messages to simulate platform interaction

---

## 🚀 How to Use

1. Ensure the database schema is already created (`schema.sql`).
2. Run the seeder script in your SQL environment:
   ```bash
   psql -U your_username -d your_database -f seed.sql
