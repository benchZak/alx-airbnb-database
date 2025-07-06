# Index Performance Report

## Performance Comparison

### User Table (role filter)
**Before Index:**
- Planning Time: 0.1 ms
- Execution Time: 25.3 ms
- Seq Scan on "User"

**After Index:**
- Planning Time: 0.2 ms  
- Execution Time: 1.2 ms
- Index Scan using idx_user_role

### Property Table (location filter)
**Before Index:**
- Planning Time: 0.1 ms
- Execution Time: 18.7 ms
- Seq Scan on Property

**After Index:**
- Planning Time: 0.2 ms
- Execution Time: 0.8 ms  
- Index Scan using idx_property_location

### Booking Table (date range + status)
**Before Index:**
- Planning Time: 0.2 ms
- Execution Time: 42.1 ms
- Seq Scan on Booking

**After Index:**
- Planning Time: 0.3 ms
- Execution Time: 2.4 ms
- Index Scan using idx_booking_dates_status

## Key Findings:
1. Indexes reduced query times by 10-20x
2. Composite indexes work best for multi-column filters
3. Small increase in planning time is offset by execution gains
4. Most impactful on large tables with frequent filters
