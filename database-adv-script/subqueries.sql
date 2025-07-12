
/* find properties with a rating over 4.0 */
SELECT property_id
FROM Review
GROUP BY property_id
HAVING AVG(rating) >= 4.0;

/* find users who have made more than 3 bookings */
SELECT DISTINCT user_id
FROM booking outer
WHERE (
    SELECT COUNT(user_id)
    FROM booking inner
    WHERE inner.user_id = outer.user_id
) >= 3;


    