-- Task 4: Query Optimization
-- Optimized booking details query
SELECT 
    b.booking_id,
    u.user_id,
    u.first_name || ' ' || u.last_name AS guest_name,
    p.property_id,
    p.name AS property_name,
    p.location,
    b.start_date,
    b.end_date,
    b.total_price,
    pay.amount AS payment_amount,
    pay.payment_method
FROM 
    Booking b
JOIN 
    "User" u ON b.user_id = u.user_id
JOIN 
    Property p ON b.property_id = p.property_id
LEFT JOIN 
    Payment pay ON b.booking_id = pay.booking_id
WHERE 
    b.status = 'confirmed'
ORDER BY 
    b.start_date DESC;
