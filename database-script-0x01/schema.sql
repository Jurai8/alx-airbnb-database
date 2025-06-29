
CREATE TABLE User (
    user_id UUID PRIMARY KEY,
    first_name VARCHAR(255), NOT NULL
    last_name VARCHAR(255), NOT NULL
    email VARCHAR(255), UNIQUE, NOT NULL
    password_hash VARCHAR(255), NOT NULL
    phone_number VARCHAR(20), NULL
    role ENUM ('guest', 'host', 'admin'), NOT NULL
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
)

CREATE TABLE Property (
    property_id UUID PRIMARY KEY,  
    host_id FOREIGN KEY, REFERENCES User(user_id)
    name VARCHAR, NOT NULL
    description TEXT, NOT NULL
    location VARCHAR, NOT NULL
    pricepernight DECIMAL, NOT NULL
    created_at TIMESTAMP, DEFAULT CURRENT_TIMESTAMP
    updated_at TIMESTAMP, ON UPDATE CURRENT_TIMESTAMP

)

CREATE TABLE Booking (
    booking_id UUID PRIMARY KEY, 
    property_id FOREIGN KEY, REFERENCES Property(property_id)
    user_id FOREIGN KEY, REFERENCES User(user_id)
    start_date DATE, NOT NULL
    end_date DATE, NOT NULL
    total_price DECIMAL, NOT NULL
    status ENUM (pending, confirmed, canceled), NOT NULL
    created_at TIMESTAMP, DEFAULT CURRENT_TIMESTAMP

)

CREATE TABLE Payment (
    payment_id UUID PRIMARY KEY, 
    booking_id FOREIGN KEY, REFERENCES Booking(booking_id)
    amount DECIMAL, NOT NULL
    payment_date TIMESTAMP, DEFAULT CURRENT_TIMESTAMP
    payment_method ENUM (credit_card, paypal, stripe), NOT NULL
)

CREATE TABLE Review (
    review_id UUID PRIMARY KEY, 
    property_id FOREIGN KEY, REFERENCES Property(property_id)
    user_id FOREIGN KEY, REFERENCES User(user_id)
    rating INTEGER, CHECK rating >= 1 AND rating <= 5, NOT NULL
    comment TEXT, NOT NULL
    created_at TIMESTAMP, DEFAULT CURRENT_TIMESTAMP
)

CREATE TABLE Message (
    message_id UUID PRIMARY KEY, 
    sender_id FOREIGN KEY, REFERENCES User(user_id)
    recipient_id FOREIGN KEY, REFERENCES User(user_id)
    message_body TEXT, NOT NULL
    sent_at TIMESTAMP, DEFAULT CURRENT_TIMESTAMP
)