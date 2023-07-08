-- Create the 'customer' table
CREATE TABLE customer (
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(100),
  phone_number VARCHAR(20)
);

-- Create the 'employee' table
CREATE TABLE employee (
  employee_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(100),
  phone_number VARCHAR(20),
  position VARCHAR(50),
  salary DECIMAL(10, 2)
);

-- Create the 'inventory' table
CREATE TABLE inventory (
  product_id SERIAL PRIMARY KEY,
  product_name VARCHAR(100) NOT NULL,
  quantity INTEGER NOT NULL,
  price DECIMAL(10, 2) NOT NULL
);

-- Create the 'site_location' table
CREATE TABLE site_location (
  location_id SERIAL PRIMARY KEY,
  location_name VARCHAR(100) NOT NULL,
  address VARCHAR(200),
  city VARCHAR(100),
  state VARCHAR(50),
  country VARCHAR(50),
  postal_code VARCHAR(20)
);

-- Create the 'orders' table
CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  customer_id INT NOT NULL,
  order_date DATE NOT NULL,
  total_amount DECIMAL(10, 2) NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES customer (customer_id)
);

-- Create the 'suppliers' table
CREATE TABLE suppliers (
  supplier_id SERIAL PRIMARY KEY,
  supplier_name VARCHAR(100) NOT NULL,
  contact_person VARCHAR(100),
  phone_number VARCHAR(20),
  email VARCHAR(100)
);

-- Create the 'transactions' table
CREATE TABLE transactions (
  transaction_id SERIAL PRIMARY KEY,
  transaction_date DATE NOT NULL,
  description VARCHAR(200),
  amount DECIMAL(10, 2)
);

-- Create the 'categories' table
CREATE TABLE categories (
  category_id SERIAL PRIMARY KEY,
  category_name VARCHAR(100) NOT NULL
);

-- Create the 'payments' table
CREATE TABLE payments (
  payment_id SERIAL PRIMARY KEY,
  customer_id INT NOT NULL,
  payment_date DATE NOT NULL,
  amount DECIMAL(10, 2),
  FOREIGN KEY (customer_id) REFERENCES customer (customer_id)
);

-- Create the 'reviews' table
CREATE TABLE reviews (
  review_id SERIAL PRIMARY KEY,
  customer_id INT NOT NULL,
  product_id INT NOT NULL,
  review_text TEXT,
  rating INT,
  FOREIGN KEY (customer_id) REFERENCES customer (customer_id),
  FOREIGN KEY (product_id) REFERENCES inventory (product_id)
);


