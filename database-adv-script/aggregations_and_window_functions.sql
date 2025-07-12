
/* total number of bookings made by each user */
SELECT user_id
FROM booking 
GROUP BY user_id 
HAVING COUNT(user_id) >= 3;

/* rank properties based on the total number of bookings */
WITH PropertyBookingCounts AS (
    SELECT
        property_id,
        COUNT(booking_id) AS total_bookings
    FROM
        booking
    GROUP BY
        property_id
)
SELECT
    property_id,
    total_bookings,
    ROW_NUMBER() OVER (ORDER BY total_bookings DESC) AS property_rank
FROM
    PropertyBookingCounts;