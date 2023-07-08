-- Alter the 'customer' table to include additional attributes
ALTER TABLE customer
ADD COLUMN address VARCHAR(200),
ADD COLUMN city VARCHAR(100),
ADD COLUMN state VARCHAR(50),
ADD COLUMN postal_code VARCHAR(20),
ADD COLUMN country VARCHAR(50),
ADD COLUMN date_of_birth DATE,
ADD COLUMN gender VARCHAR(
