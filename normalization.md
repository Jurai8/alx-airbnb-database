
# DB Schema & Normalization Review

1. NF1

- Each table has a primary key
- Each column per table has atomic values

1. NF2

- All non-key columns are dependant on the PK

1. NF3

- total price in Booking is questionable, but it should be fine as long as we only intend to capture the price at a fixed moment
