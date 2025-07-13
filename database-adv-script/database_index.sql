

EXPLAIN ANALYZE
SELECT name, start_date, end_date, first_name, last_name
FROM User
INNER JOIN Booking ON User.user_id = Booking.user_id
INNER JOIN Property ON Booking.property_id = Property.property_id;

CREATE INDEX idx_booking_user_id ON Booking (user_id);
CREATE INDEX idx_booking_property_id ON Booking (property_id);

SELECT name, start_date, end_date, first_name, last_name
FROM User
INNER JOIN Booking ON User.user_id = Booking.user_id
INNER JOIN Property ON Booking.property_id = Property.property_id

EXPLAIN ANALYZE
SELECT
    U.user_id,
    B.booking_id,
    B.total_price
FROM
    User AS U
LEFT JOIN
    Booking AS B ON U.user_id = B.user_id
UNION
SELECT
    U.user_id,
    B.booking_id,
    B.total_price
FROM
    User AS U
RIGHT JOIN
    Booking AS B ON U.user_id = B.user_id
WHERE
    U.user_id IS NULL;
