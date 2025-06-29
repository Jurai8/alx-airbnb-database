
/* Create user */

INSERT INTO User
(user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES 
('2e1f3a4b-5c6d-47e8-9f0a-1b2c3d4e5f6a', 'Jane', 'Smith', 'jane.smith@example.com', 'another_hashed_password', '123-456-7890', 'guest'),
(UUID(), 'Micheal', 'ggg', 'micheal.ggg@example.com', 'another_hashed_password', '085-456-6543', 'admin'),
('a1b2c3d4-e5f6-7890-1234-567890abcdef', 'Charles', 'Musk', 'char.musk@example.com', 'another_hashed_password', '888-777-7890', 'host');


/* Create (upload) a Property */

INSERT INTO Property
(property_id, host_id, name, description, location, pricepernight)
VALUES 
('zs32cdw4-e5f6-7890-1234-567890abcdef', 'a1b2c3d4-e5f6-7890-1234-567890abcdef', 'Madison Square', 'great property', '125 Mary Ave.', 125.00)

/* Confirm a booking */
/* Omitted created_at/updated_at */

INSERT INTO Booking 
(booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('4a2b9f0e-d7c8-4e1a-8b0c-9d1e2f3a4b5c', 'zs32cdw4-e5f6-7890-1234-567890abcdef', '2e1f3a4b-5c6d-47e8-9f0a-1b2c3d4e5f6a','2025-12-11', '2025-12-14', 500.00, 'confirmed')


/* Payment */

INSERT INTO Payment
(payment_id, booking_id, amount, payment_date, payment_method)
VALUES 
('7c8d9e0f-1a2b-4c3d-5e6f-7a8b9c0d1e2f', '4a2b9f0e-d7c8-4e1a-8b0c-9d1e2f3a4b5c', 500.00, '2025-10-01', 'paypal')

/* Review */

INSERT INTO Review
(review_id, property_id, user_id, rating, comment)
VALUES 
('5d6e7f8a-9b0c-41d2-3e4f-5a6b7c8d9e0f', 'zs32cdw4-e5f6-7890-1234-567890abcdef','2e1f3a4b-5c6d-47e8-9f0a-1b2c3d4e5f6a', 4, 'great place' )

/* Message */
/* Omitted sent_at */

INSERT INTO Message 
(message_id, sender_id, recipient_id, message_body)
VALUES 
('9f0a1b2c-3d4e-45f6-7a8b-9c0d1e2f3a4b', '2e1f3a4b-5c6d-47e8-9f0a-1b2c3d4e5f6a', 'a1b2c3d4-e5f6-7890-1234-567890abcdef', "Greetings, host. I'm messaging regarding.." )