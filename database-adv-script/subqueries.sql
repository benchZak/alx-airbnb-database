-- 1. Non-correlated Subquery: Properties with Average Rating > 4.0
-- Find properties where the average rating is greater than 4.0
SELECT 
    p.property_id,
    p.name AS property_name,
    p.location,
    p.pricepernight,
    avg_rating.average_rating
FROM 
    Property p
JOIN (
    -- Subquery to calculate average ratings
    SELECT 
        property_id,
        AVG(rating) AS average_rating
    FROM 
        Review
    GROUP BY 
        property_id
    HAVING 
        AVG(rating) > 4.0
) avg_rating ON p.property_id = avg_rating.property_id
ORDER BY 
    avg_rating.average_rating DESC;

-- 2. Correlated Subquery: Users with More Than 3 Bookings
-- Find users who have made more than 3 bookings
SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    (SELECT COUNT(*) 
     FROM Booking b 
     WHERE b.user_id = u.user_id) AS booking_count
FROM 
    "User" u
WHERE 
    (SELECT COUNT(*) 
     FROM Booking b 
     WHERE b.user_id = u.user_id) > 3
ORDER BY 
    booking_count DESC;
