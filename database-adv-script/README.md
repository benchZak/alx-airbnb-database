# SQL for Airbnb Database
# joins_queries.sql
1. 
   - Retrieves matching records from both tables  
   - Example: Bookings with their associated users  
2. 
   - Retrieves all records from the left table with matching right table records (or NULL)  
   - Example: All properties including those without reviews  

3. 
   - Retrieves all records from both tables, with NULLs for non-matches  
   - Example: All users and all bookings regardless of relationships
  
     
# subqueries.sql

4.
   - Find all properties where the average rating is greater than 4.0 using a subquery.

5.
   - Correlated subquery to find users who have made more than 3 bookings.

# Aggregations and Window Functions

## Key Concepts:
- **GROUP BY**: Groups rows by specified columns
- **COUNT()**: Aggregates data by counting rows
- **RANK()**: Window function that assigns ranks with gaps
- **OVER()**: Defines window frame for calculations

Usage: Analyzing booking patterns and property popularity.
