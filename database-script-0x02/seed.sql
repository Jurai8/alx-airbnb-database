
/* Create user */

INSERT INTO User
(user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES 
('2e1f3a4b-5c6d-47e8-9f0a-1b2c3d4e5f6a', 'Jane', 'Smith', 'jane.smith@example.com', 'hashed_jan', '123-456-7890', 'guest'),
('6f8e7d2c-1a3b-4c5d-9e0f-2a4b6c8d0e1f', 'John', 'Doe', 'john.doe@example.com', 'hashed_password_john', '098-765-4321', 'guest'),
('e1f0d9c8-b7a6-5e4d-3c2b-1a0f9e8d7c6b', 'Emily', 'Brown', 'emily.b@example.com', 'hashed_password_emily', '011-222-3333', 'guest'),
('431e2c9a-b7f0-4d51-8a62-7e0d3c1b5f9a', 'Micheal', 'Jordan', 'micheal.jordan@example.com', 'hashed_password_micheal', '085-456-6543', 'admin'), ('a0b1c2d3-e4f5-6a7b-8c9d-0e1f2a3b4c5d', 'Alice', 'Johnson', 'alice.j@example.com', 'hashed_password_alice', '555-111-2222', 'admin'),
('c9d8e7f6-a5b4-3c2d-1e0f-9a8b7c6d5e4f', 'Bob', 'Williams', 'bob.w@example.com', 'hashed_password_bob', '777-888-9999', 'host'),
('a1b2c3d4-e5f6-7890-1234-567890abcdef', 'Charles', 'Musk', 'char.musk@example.com', 'hashed_password_charles', '888-777-7890', 'host');


/* Create (upload) a Property */

INSERT INTO Property
(property_id, host_id, name, description, location, pricepernight)
VALUES 
('zs32cdw4-e5f6-7890-1234-567890abcdef', 'a1b2c3d4-e5f6-7890-1234-567890abcdef', 'Madison Square', 'great property', '125 Mary Ave.', 125.00),

('1a2b3c4d-5e6f-7a8b-9c0d-1e2f3a4b5c6d', 'c9d8e7f6-a5b4-3c2d-1e0f-9a8b7c6d5e4f', 'Cozy Beach House', 'Charming house with ocean views, perfect for a relaxing getaway.', '10 Ocean Drive, Malibu', 350.00),

('f0e9d8c7-b6a5-4d3c-2b1a-0f9e8d7c6b5a', 'c9d8e7f6-a5b4-3c2d-1e0f-9a8b7c6d5e4f', 'Downtown Loft', 'Modern loft in the heart of the city, close to all attractions.', '456 Urban St, City Center', 200.00),
('3d2c1b0a-9e8f-7d6c-5b4a-3d2c1b0a9e8f', 'a1b2c3d4-e5f6-7890-1234-567890abcdef', 'Mountain Retreat', 'Secluded cabin with stunning mountain views and hiking trails nearby.', '789 Pine Ridge Rd, Aspen', 450.00),

('5a6b7c8d-9e0f-1a2b-3c4d-5e6f7a8b9c0d', 'a1b2c3d4-e5f6-7890-1234-567890abcdef', 'Riverside Cottage', 'Peaceful cottage by the river, ideal for fishing and nature lovers.', '321 Riverbend Ln, Green Valley', 180.00);


/* Confirm a booking */
/* Omitted created_at/updated_at */

INSERT INTO Booking 
(booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('4a2b9f0e-d7c8-4e1a-8b0c-9d1e2f3a4b5c', 'zs32cdw4-e5f6-7890-1234-567890abcdef', '6f8e7d2c-1a3b-4c5d-9e0f-2a4b6c8d0e1f','2025-12-11', '2025-12-14', 500.00, 'confirmed'),

('b001a1b2-c3d4-4e5f-6a7b-8c9d0e1f2a3b', 'zs32cdw4-e5f6-7890-1234-567890abcdef', '2e1f3a4b-5c6d-47e8-9f0a-1b2c3d4e5f6a', '2025-08-10', '2025-08-14', 500.00, 'confirmed'), -- Jane Smith books Madison Square (125 * 4 nights)

('b002e3f4-a5b6-4c7d-8e9f-0a1b2c3d4e5f', '1a2b3c4d-5e6f-7a8b-9c0d-1e2f3a4b5c6d', '2e1f3a4b-5c6d-47e8-9f0a-1b2c3d4e5f6a', '2025-09-01', '2025-09-04', 1050.00, 'confirmed'), -- John Doe books Cozy Beach House (350 * 3 nights)

('b003c5d6-e7f8-4a9b-0c1d-2e3f4a5b6c7d', 'f0e9d8c7-b6a5-4d3c-2b1a-0f9e8d7c6b5a', 'e1f0d9c8-b7a6-5e4d-3c2b-1a0f9e8d7c6b', '2025-10-15', '2025-10-20', 1000.00, 'confirmed');


/* Payment */

INSERT INTO Payment
(payment_id, booking_id, amount, payment_date, payment_method)
VALUES 
('7c8d9e0f-1a2b-4c3d-5e6f-7a8b9c0d1e2f', '4a2b9f0e-d7c8-4e1a-8b0c-9d1e2f3a4b5c', 500.00, '2025-10-01', 'paypal'),

('1a2b3c4d-5e6f-7890-1234-567890abcdef', 'b001a1b2-c3d4-4e5f-6a7b-8c9d0e1f2a3b', 500.00, '2025-07-30', 'credit_card'),

('9f0e1d2c-3b4a-5c6d-7e8f-9a0b1c2d3e4f', 'b002e3f4-a5b6-4c7d-8e9f-0a1b2c3d4e5f', 1050.00, '2025-08-25', 'stripe'),

('3d2c1b0a-f9e8-7d6c-5b4a-3f2e1d0c9b8a', 'b003c5d6-e7f8-4a9b-0c1d-2e3f4a5b6c7d', 1000.00, '2025-09-30', 'paypal');


/* Review */

INSERT INTO Review
(review_id, property_id, user_id, rating, comment)
VALUES 
('5d6e7f8a-9b0c-41d2-3e4f-5a6b7c8d9e0f', 'zs32cdw4-e5f6-7890-1234-567890abcdef','6f8e7d2c-1a3b-4c5d-9e0f-2a4b6c8d0e1f', 4, 'great place'),

('1a2b3c4d-5e6f-7890-1234-567890abcdef', 'zs32cdw4-e5f6-7890-1234-567890abcdef', '2e1f3a4b-5c6d-47e8-9f0a-1b2c3d4e5f6a', 5, 'Absolutely loved it. Highly recommend!'),

('f0e9d8c7-b6a5-4d3c-2b1a-0f9e8d7c6b5a', '1a2b3c4d-5e6f-7a8b-9c0d-1e2f3a4b5c6d', '2e1f3a4b-5c6d-47e8-9f0a-1b2c3d4e5f6a', 4, 'Nice place, good location.'),

('b1c2d3e4-f5a6-7b8c-9d0e-1f2a3b4c5d6e', 'f0e9d8c7-b6a5-4d3c-2b1a-0f9e8d7c6b5a', 'e1f0d9c8-b7a6-5e4d-3c2b-1a0f9e8d7c6b', 3, 'Decent stay, nothing special.');

/* Message */
/* Omitted sent_at */

INSERT INTO Message 
(message_id, sender_id, recipient_id, message_body)
VALUES 
('msg-guest1-host1-1', '2e1f3a4b-5c6d-47e8-9f0a-1b2c3d4e5f6a', 'a1b2c3d4-e5f6-7890-1234-567890abcdef', 'Hi, is early check-in possible on Aug 10?'),

('msg-host1-guest1-1', 'a1b2c3d4-e5f6-7890-1234-567890abcdef', '2e1f3a4b-5c6d-47e8-9f0a-1b2c3d4e5f6a', 'Yes, check-in by 1 PM should be fine!'),

('msg-guest2-host2-1', '6f8e7d2c-1a3b-4c5d-9e0f-2a4b6c8d0e1f', 'c9d8e7f6-a5b4-3c2d-1e0f-9a8b7c6d5e4f', 'Are pets allowed at Cozy Beach House?'),

('msg-host2-guest2-1', 'c9d8e7f6-a5b4-3c2d-1e0f-9a8b7c6d5e4f', '6f8e7d2c-1a3b-4c5d-9e0f-2a4b6c8d0e1f', 'Unfortunately, no pets at that property.');



