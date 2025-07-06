-- 1. INNER JOIN: Bookings with Users
-- Retrieve all bookings with their respective user information
SELECT b.*, u.*
FROM Booking b
INNER JOIN "User" u ON b.user_id = u.user_id;

-- 2. LEFT JOIN: Properties with Reviews
-- Retrieve all properties and their reviews (including properties without reviews)
SELECT p.*, r.*
FROM Property p
LEFT JOIN Review r ON p.property_id = r.property_id;

-- 3. FULL OUTER JOIN: Users and Bookings
-- Retrieve all users and all bookings (including users without bookings and bookings without users)
SELECT u.*, b.*
FROM "User" u
FULL OUTER JOIN Booking b ON u.user_id = b.user_id;
