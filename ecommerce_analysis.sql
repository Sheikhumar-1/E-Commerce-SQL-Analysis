-- ================================
-- E-Commerce Database Analysis
-- Tool: MySQL (phpMyAdmin / XAMPP)
-- ================================

-- Query 1: Top 5 Customers by Total Spending
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(o.total_amount) AS total_spent
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC
LIMIT 5;

-- Query 2: Most Sold Product by Units
SELECT 
    p.product_id,
    p.product_name,
    SUM(o.quantity) AS total_units_sold
FROM products p
INNER JOIN orders o ON p.product_id = o.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_units_sold DESC
LIMIT 1;

-- Query 3: Monthly Revenue Trend
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(total_amount) AS monthly_revenue
FROM orders
GROUP BY month
ORDER BY month ASC;

-- Query 4: Average Order Value
SELECT 
    ROUND(AVG(total_amount), 2) AS avg_order_value
FROM orders;