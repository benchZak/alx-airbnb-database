# Database Normalization for AirBnB Schema

## Objective
To ensure our Airbnb-like database schema adheres to best practices by applying normalization up to the **Third Normal Form (3NF)**. This process minimizes redundancy, improves data integrity, and makes future updates more efficient.

---

## 🧠 Normalization Process

### First Normal Form (1NF)
**Requirement:** 
- Each table must have atomic values (no repeating groups or arrays).
- Each column must contain values of the same data type.
- Each record must be unique.

✅ **How it's achieved:**
- All tables use atomic fields (e.g., no comma-separated emails or multiple phone numbers).
- Each table has a unique primary key.
- Columns like `email`, `location`, and `message_body` store scalar values.

---

### Second Normal Form (2NF)
**Requirement:**
- The database must be in 1NF.
- All **non-key attributes** must be **fully functionally dependent** on the entire primary key.

✅ **How it's achieved:**
- All primary keys are single-column UUIDs, so there's no risk of partial dependencies.
- For example:
  - In the `Booking` table, `total_price` depends on `booking_id`, not just part of a composite key (which we don’t use).

---

### Third Normal Form (3NF)
**Requirement:**
- The database must be in 2NF.
- No **transitive dependencies** (non-key attributes should not depend on other non-key attributes).

✅ **How it's achieved:**
- `User` stores `role`, `email`, etc. — all depend only on `user_id`.
- `Property` uses `host_id` to refer to the `User` entity. All property details are directly dependent on `property_id`, not host attributes.
- `Booking` contains price and date information related only to that booking.
- `Review` and `Message` link users via foreign keys, no duplicate user info is stored.
- `Payment` details depend solely on the `booking_id`.

---

## ✅ Final Result

All tables are:
- In **1NF**: Atomic values, unique rows
- In **2NF**: Fully functionally dependent on the primary key
- In **3NF**: No transitive dependencies

There is **no redundancy**, and the schema supports efficient updates, deletions, and insertions.

---

## Optional Improvements (Beyond 3NF)
- Consider separate lookup tables for:
  - **Roles** (guest, host, admin)
  - **Payment methods** (credit_card, PayPal, Stripe)
  - **Booking status** (pending, confirmed, canceled)
- This helps enforce referential integrity and simplifies updates to controlled vocabularies.
