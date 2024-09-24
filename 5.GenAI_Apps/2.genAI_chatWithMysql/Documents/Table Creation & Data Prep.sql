use test;
-- ------- Table Creations  

CREATE TABLE products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  description TEXT
);

CREATE TABLE orders (
  id INT AUTO_INCREMENT PRIMARY KEY,
  product_id INT NOT NUll,
  user_id INT NOT NULL,
  order_date DATE NOT NULL,
  total_amount DECIMAL(10, 2) NOT NULL
);

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  state VARCHAR(255) NOT NULL,
  country VARCHAR(255) NOT NULL
);

-- --------------------- Data Insert Queries 

INSERT INTO products (name, price, description) VALUES ('Laptop', 999.99, '15-inch gaming laptop with RTX 4070');
INSERT INTO products (name, price, description) VALUES ('Smartphone', 799.99, '6.7-inch OLED display, 5G compatible');
INSERT INTO products (name, price, description) VALUES ('Headphones', 149.99, 'Wireless noise-canceling headphones');
INSERT INTO products (name, price, description) VALUES ('Tablet', 399.99, '10-inch tablet with stylus support');
INSERT INTO products (name, price, description) VALUES ('Smartwatch', 299.99, 'Fitness tracker with heart rate monitoring');
INSERT INTO products (name, price, description) VALUES ('Camera', 699.99, 'DSLR camera with 24MP sensor');
INSERT INTO products (name, price, description) VALUES ('Gaming Console', 499.99, 'Next-gen gaming console with 4K capabilities');
INSERT INTO products (name, price, description) VALUES ('TV', 799.99, '55-inch 4K Smart TV');
INSERT INTO products (name, price, description) VALUES ('Speaker', 199.99, 'Bluetooth speaker with waterproof design');
INSERT INTO products (name, price, description) VALUES ('Keyboard', 99.99, 'Mechanical gaming keyboard with RGB lighting');
INSERT INTO products (name, price, description) VALUES ('Mouse', 49.99, 'Wireless gaming mouse with adjustable DPI');
INSERT INTO products (name, price, description) VALUES ("Coffee Maker", 129.99, "Espresso machine with built-in grinder");
INSERT INTO products (name, price, description) VALUES ("Blender", 79.99, "High-powered blender with multiple speed settings");
INSERT INTO products (name, price, description) VALUES ("Toaster", 39.99, "Two-slice toaster with bagel setting");
INSERT INTO products (name, price, description) VALUES ("Microwave", 79.99, "1.2 cubic foot microwave with defrost function");
INSERT INTO products (name, price, description) VALUES ("Refrigerator", 699.99, "Side-by-side refrigerator with French doors");
INSERT INTO products (name, price, description) VALUES ("Washing Machine", 499.99, "Front-load washing machine with steam cycle");
INSERT INTO products (name, price, description) VALUES ("Dryer", 499.99, "Electric dryer with sensor dry technology");
INSERT INTO products (name, price, description) VALUES ("Vacuum Cleaner", 199.99, "Cordless stick vacuum with HEPA filter");
INSERT INTO products (name, price, description) VALUES ("Air Conditioner", 399.99, "Window air conditioner with remote control");

select * from products;

INSERT INTO users (username, email, state, country) VALUES ('user1', 'user1@example.com', 'Maharashtra', 'India');
INSERT INTO users (username, email, state, country) VALUES ('user2', 'user2@example.com', 'Tamil Nadu', 'India');
INSERT INTO users (username, email, state, country) VALUES ('user3', 'user3@example.com', 'Karnataka', 'India');
INSERT INTO users (username, email, state, country) VALUES ('user4', 'user4@example.com', 'Gujarat', 'India');
INSERT INTO users (username, email, state, country) VALUES ('user5', 'user5@example.com', 'Rajasthan', 'India');
INSERT INTO users (username, email, state, country) VALUES ('user6', 'user6@example.com', 'West Bengal', 'India');
INSERT INTO users (username, email, state, country) VALUES ('user7', 'user7@example.com', 'Andhra Pradesh', 'India');
INSERT INTO users (username, email, state, country) VALUES ('user8', 'user8@example.com', 'Uttar Pradesh', 'India');
INSERT INTO users (username, email, state, country) VALUES ('user9', 'user9@example.com', 'Bihar', 'India');
INSERT INTO users (username, email, state, country) VALUES ('user10', 'user10@example.com', 'Odisha', 'India');
INSERT INTO users (username, email, state, country) VALUES ('user11', 'user11@example.com', 'Telangana', 'India');
INSERT INTO users (username, email, state, country) VALUES ('user12', 'user12@example.com', 'Kerala', 'India');
INSERT INTO users (username, email, state, country) VALUES ('user13', 'user13@example.com', 'Punjab', 'India');
INSERT INTO users (username, email, state, country) VALUES ('user14', 'user14@example.com', 'Haryana', 'India');
INSERT INTO users (username, email, state, country) VALUES ('user15', 'user15@example.com', 'Assam', 'India');

select * from users;
select * from orders;
-- Assuming the product IDs start from 1 and user IDs start from 1
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (1, 1, '2023-09-24', 999.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (2, 2, '2023-10-01', 799.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (3, 3, '2023-10-15', 149.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (4, 4, '2023-11-05', 399.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (5, 5, '2023-11-20', 299.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (6, 6, '2023-12-01', 699.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (7, 7, '2023-12-15', 499.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (8, 8, '2024-01-05', 799.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (9, 9, '2024-01-20', 199.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (10, 10, '2024-02-01', 99.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (11, 11, '2024-02-15', 49.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (12, 12, '2024-03-01', 129.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (13, 13, '2024-03-15', 79.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (14, 14, '2024-04-01', 39.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (15, 15, '2024-04-15', 79.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (16, 1, '2024-05-01', 699.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (17, 2, '2024-05-15', 499.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (18, 3, '2024-06-01', 199.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (19, 4, '2024-06-15', 399.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (20, 5, '2024-07-01', 299.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (1, 6, '2024-07-15', 999.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (2, 7, '2024-08-01', 799.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (3, 8, '2024-08-15', 149.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (4, 9, '2024-09-01', 399.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (5, 10, '2024-09-15', 299.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (6, 11, '2024-10-01', 699.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (7, 12, '2024-10-15', 499.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (8, 13, '2024-11-01', 799.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (9, 14, '2024-11-15', 199.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (10, 15, '2024-12-01', 99.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (11, 1, '2024-12-15', 49.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (12, 2, '2025-01-01', 129.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (13, 3, '2025-01-15', 79.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (14, 4, '2025-02-01', 39.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (15, 5, '2025-02-15', 79.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (16, 6, '2025-03-01', 699.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (17, 7, '2025-03-15', 499.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (18, 8, '2025-04-01', 199.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (19, 9, '2025-04-15', 399.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (20, 10, '2025-05-01', 299.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (1, 11, '2025-05-15', 999.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (2, 12, '2025-06-01', 799.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (3, 13, '2025-06-15', 149.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (4, 14, '2025-07-01', 399.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (5, 15, '2025-07-15', 299.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (6, 1, '2025-08-01', 699.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (7, 2, '2025-08-15', 499.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (8, 3, '2025-09-01', 799.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (9, 4, '2025-09-15', 199.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (10, 5, '2025-10-01', 99.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (11, 6, '2025-10-15', 49.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (12, 7, '2025-11-01', 129.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (13, 8, '2025-11-15', 79.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (14, 9, '2025-12-01', 39.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (15, 10, '2025-12-15', 79.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (16, 11, '2026-01-01', 699.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (17, 12, '2026-01-15', 499.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (18, 13, '2026-02-01', 199.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (19, 14, '2026-02-15', 399.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (20, 15, '2026-03-01', 299.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (1, 1, '2026-03-15', 999.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (2, 2, '2026-04-01', 799.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (3, 3, '2026-04-15', 149.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (4, 4, '2026-05-01', 399.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (5, 5, '2026-05-15', 299.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (6, 6, '2026-06-01', 699.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (7, 7, '2026-06-15', 499.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (8, 8, '2026-07-01', 799.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (9, 9, '2026-07-15', 199.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (10, 10, '2026-08-01', 99.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (11, 11, '2026-08-15', 49.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (12, 12, '2026-09-01', 129.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (13, 13, '2026-09-15', 79.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (14, 14, '2026-10-01', 39.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (15, 15, '2026-10-15', 79.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (16, 1, '2026-11-01', 699.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (17, 2, '2026-11-15', 499.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (18, 3, '2026-12-01', 199.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (19, 4, '2026-12-15', 399.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (20, 5, '2027-01-01', 299.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (1, 6, '2027-01-15', 999.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (2, 7, '2027-02-01', 799.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (3, 8, '2027-02-15', 149.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (4, 9, '2027-03-01', 399.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (5, 10, '2027-03-15', 299.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (6, 11, '2027-04-01', 699.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (7, 12, '2027-04-15', 499.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (8, 13, '2027-05-01', 799.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (9, 14, '2027-05-15', 199.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (10, 15, '2027-06-01', 99.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (11, 1, '2027-06-15', 49.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (12, 2, '2027-07-01', 129.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (13, 3, '2027-07-15', 79.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (14, 4, '2027-08-01', 39.99);
INSERT INTO orders (product_id, user_id, order_date, total_amount) VALUES (15, 5, '2027-08-15', 79.99);


select p.name ,u.username,o.order_date,o.total_amount,o.order_date,u.state from orders o inner join products p on o.product_id=p.id inner join users u on u.id=o.user_id;