
SELECT * FROM Booking 
LEFT JOIN User ON User.user_id = Booking.user_id
LEFT JOIN Property ON Property.property_id = Booking.property_id
LEFT JOIN Payment ON Payment.booking_id = Booking.booking_id;

