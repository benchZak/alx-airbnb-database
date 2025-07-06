-- 1. First measure performance before adding indexes
EXPLAIN ANALYZE 
SELECT * FROM "User" WHERE role = 'host';

EXPLAIN ANALYZE
SELECT * FROM Property WHERE location = 'Paris';

EXPLAIN ANALYZE
SELECT * FROM Booking 
WHERE start_date BETWEEN '2023-01-01' AND '2023-12-31'
AND status = 'confirmed';

-- 2. Create recommended indexes
CREATE INDEX idx_user_role ON "User"(role);
CREATE INDEX idx_property_location ON Property(location);
CREATE INDEX idx_booking_dates_status ON Booking(start_date, status);

-- 3. Measure performance after adding indexes
EXPLAIN ANALYZE 
SELECT * FROM "User" WHERE role = 'host';

EXPLAIN ANALYZE
SELECT * FROM Property WHERE location = 'Paris';

EXPLAIN ANALYZE
SELECT * FROM Booking 
WHERE start_date BETWEEN '2023-01-01' AND '2023-12-31'
AND status = 'confirmed';
