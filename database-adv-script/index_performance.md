EXPLAIN ANALYZE
SELECT name, start_date, end_date, first_name, last_name
FROM User
INNER JOIN Booking ON User.user_id = Booking.user_id
INNER JOIN Property ON Booking.property_id = Property.property_id

time - 0.004
new time - 0.004