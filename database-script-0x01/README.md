# Database Schema (DDL) – Airbnb Clone

## 📄 Overview

This directory contains the SQL Data Definition Language (DDL) script used to create the relational database schema for the Airbnb-like application. The schema is designed to follow best practices in normalization (up to 3NF), indexing, and referential integrity.

---

## 📂 Files

### `schema.sql`

- Defines all core tables:
  - `User`
  - `Property`
  - `Booking`
  - `Payment`
  - `Review`
  - `Message`
- Includes:
  - Primary keys (UUID)
  - Foreign key relationships
  - `CHECK` constraints for ENUM-like values
  - `NOT NULL` constraints
  - Indexes for performance optimization

---

## 📌 Key Features

- ✅ Fully normalized schema (3NF)
- ✅ Uses `UUID` as primary keys for scalability
- ✅ Enforces referential integrity with foreign keys
- ✅ ENUM constraints on roles, status, and payment methods
- ✅ Timestamp tracking on all major tables

---

## 🚀 How to Use

1. Open a SQL-compatible environment (e.g., PostgreSQL, MySQL with adjustments).
2. Run the `schema.sql` script:
   ```bash
   psql -U your_username -d your_database -f schema.sql
