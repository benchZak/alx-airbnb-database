-- Create partitioned booking table
CREATE TABLE Booking_Partitioned (
    booking_id UUID,
    property_id UUID,
    user_id UUID,
    start_date DATE,
    end_date DATE,
    total_price DECIMAL,
    status VARCHAR,
    created_at TIMESTAMP,
    PRIMARY KEY (booking_id, start_date)
) PARTITION BY RANGE (start_date);

-- Create yearly partitions
CREATE TABLE booking_y2023 PARTITION OF Booking_Partitioned
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE booking_y2024 PARTITION OF Booking_Partitioned
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');
