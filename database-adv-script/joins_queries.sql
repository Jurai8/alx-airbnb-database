/* Inner join */
SELECT name, start_date, end_date, first_name, last_name
FROM User
INNER JOIN Booking ON User.user_id = Booking.user_id
INNER JOIN Property ON Booking.property_id = Property.property_id

/* left join */
SELECT P.property_id, p.name, R.rating, R.comment 
FROM Property AS P
LEFT JOIN Review AS R ON P.property_id = R.property_id;

/* full outer join */
SELECT user_id, booking_id, total_price
FROM User 
FULL OUTER JOIN Booking ON User.user_id = Booking.user_id;

/* full outer join 2 */ 
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
    U.user_id IS NULL; -- This is crucial to avoid duplicating rows already covered by the LEFT JOIN