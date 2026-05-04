-- Create database
create database e_commerce;
use e_commerce;

-- Create table customers
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

-- Create table orders
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50),
    amount INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- insert values into customers table
INSERT INTO customers (customer_id, name, city) VALUES
(1, 'Harsh', 'Ahmedabad'), (2, 'Rahul', 'Mumbai'), (3, 'Priya', 'Delhi'),
(4, 'Ananya', 'Bangalore'), (5, 'Amit', 'Pune'), (6, 'Sneha', 'Hyderabad'),
(7, 'Vikram', 'Chennai'), (8, 'Aditi', 'Kolkata'), (9, 'Rohan', 'Surat'),
(10, 'Ishani', 'Jaipur'), (11, 'Arjun', 'Lucknow'), (12, 'Meera', 'Kanpur'),
(13, 'Siddharth', 'Nagpur'), (14, 'Kavya', 'Indore'), (15, 'Varun', 'Thane'),
(16, 'Diya', 'Bhopal'), (17, 'Yash', 'Visakhapatnam'), (18, 'Aavya', 'Pimpri-Chinchwad'),
(19, 'Abhishek', 'Patna'), (20, 'Tanvi', 'Vadodara'), (21, 'Ishaan', 'Ghaziabad'),
(22, 'Aarohi', 'Ludhiana'), (23, 'Aryan', 'Agra'), (24, 'Saanvi', 'Nashik'),
(25, 'Kabir', 'Faridabad'), (26, 'Kiara', 'Meerut'), (27, 'Vivaan', 'Rajkot'),
(28, 'Zoya', 'Kalyan-Dombivli'), (29, 'Arav', 'Vasai-Virar'), (30, 'Myra', 'Varanasi'),
(31, 'Reyansh', 'Srinagar'), (32, 'Anvi', 'Aurangabad'), (33, 'Vihaan', 'Dhanbad'),
(34, 'Riya', 'Amritsar'), (35, 'Ayush', 'Navi Mumbai'), (36, 'Ira', 'Allahabad'),
(37, 'Ayaan', 'Ranchi'), (38, 'Prisha', 'Howrah'), (39, 'Krishna', 'Jabalpur'),
(40, 'Navya', 'Gwalior'), (41, 'Shaurya', 'Vijayawada'), (42, 'Siya', 'Jodhpur'),
(43, 'Atharv', 'Madurai'), (44, 'Aadhya', 'Raipur'), (45, 'Dev', 'Kota'),
(46, 'Kyra', 'Guwahati'), (47, 'Advait', 'Chandigarh'), (48, 'Vanya', 'Solapur'),
(49, 'Kartik', 'Hubli-Dharwad'), (50, 'Sara', 'Bareilly');


-- Insert values into orders table
INSERT INTO orders (order_id, customer_id, product, amount) VALUES
(101, 1, 'Laptop', 50000), (102, 2, 'Phone', 20000), (103, 1, 'Headphones', 2000),
(104, 3, 'Tablet', 15000), (105, 4, 'Smartwatch', 5000), (106, 5, 'Monitor', 12000),
(107, 6, 'Keyboard', 1500), (108, 7, 'Mouse', 800), (109, 8, 'Printer', 8500),
(110, 9, 'Speaker', 3000), (111, 10, 'Webcam', 2500), (112, 11, 'Hard Drive', 4500),
(113, 12, 'USB Hub', 1200), (114, 13, 'Router', 3500), (115, 14, 'RAM', 6000),
(116, 15, 'Graphic Card', 35000), (117, 16, 'CPU', 22000), (118, 17, 'Case', 4000),
(119, 18, 'Power Supply', 5500), (120, 19, 'Cooling Fan', 1000), (121, 20, 'Microphone', 7000),
(122, 21, 'Projector', 45000), (123, 22, 'Scanner', 9000), (124, 23, 'Pen Drive', 500),
(125, 24, 'SSD', 7500), (126, 25, 'Joystick', 2500), (127, 26, 'VR Headset', 28000),
(128, 27, 'E-Reader', 11000), (129, 28, 'Smart Bulb', 900), (130, 29, 'Desk Lamp', 1500),
(131, 30, 'Cables', 400), (132, 31, 'Laptop Bag', 2200), (133, 32, 'UPS', 4500),
(134, 33, 'Motherboard', 15000), (135, 34, 'External GPU', 40000), (136, 35, 'Docking Station', 8000),
(137, 36, 'Soundbar', 12000), (138, 37, 'Digital Camera', 55000), (139, 38, 'Tripod', 2500),
(140, 39, 'Memory Card', 1200), (141, 40, 'Drawing Tablet', 7000), (142, 41, 'Smart Plug', 1100),
(143, 42, 'Ethernet Cable', 300), (144, 43, 'Laptop Stand', 1800), (145, 44, 'Power Bank', 2500),
(146, 45, 'Earbuds', 4000), (147, 46, 'Wireless Charger', 2000), (148, 47, 'Game Pad', 3500),
(149, 48, 'HDMI Splitter', 1000), (150, 5, 'Gaming Chair', 18000);

-- Add column email in customers table
alter table customers add column email varchar(50);
update customers
set email="harsh@gmail.com"
where customer_id=1;

-- Delete order using where
delete from orders
where order_id=104

-- Performing join
select customers.name,customers.city,orders.product,orders.amount 
from customers
join orders
on customers.customer_id = orders.customer_id
order by orders.amount desc
limit 5;
 
-- Performing aggregate functions and group by
SELECT c.name, SUM(o.amount) AS total_spent
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.name;

-- Performing union
CREATE TABLE returns (
    customer_id INT,
    product VARCHAR(50)
);
INSERT INTO returns VALUES
(1, 'Laptop'),
(2, 'Phone');

SELECT product FROM orders
UNION
SELECT product FROM returns;