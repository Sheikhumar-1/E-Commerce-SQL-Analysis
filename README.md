# E-Commerce Database Analysis (SQL)

## Project Overview
This project demonstrates SQL skills applied to a simulated e-commerce database.
The database contains three related tables: Customers, Orders, and Products.
All analysis was performed using MySQL via phpMyAdmin (XAMPP).

---

## Database Structure

**customers** — customer details (customer_id, first_name, last_name, email, city)

**products** — product catalog (product_id, product_name, category, price)

**orders** — transaction records (order_id, customer_id, product_id, quantity, total_amount, order_date)

---

## Analytical Queries & Business Insights

### 1. Top 5 Customers by Spending
Identified the highest-value customers using INNER JOIN and GROUP BY.
> Insight: Fatima Al-Hassan is the top customer at $2,349.97 — more than double 
> the second highest spender. A strong candidate for a VIP loyalty program.

### 2. Most Sold Product
Found the best-selling product by total units sold.
> Insight: Pen Set led with 5 units sold. Despite being the lowest priced item,
> its high order frequency makes it a strong candidate for bundle deals.

### 3. Monthly Revenue Trend
Tracked revenue month by month to identify growth patterns.
> Insight: April 2024 was the peak revenue month at $2,499.97 — nearly 5x 
> the average of other months, suggesting a strong seasonal demand pattern.

### 4. Average Order Value
Calculated the mean transaction value across all orders.
> Insight: AOV is $373.65, driven by high-ticket electronics. Pushing AOV 
> above $400 through upselling strategies would meaningfully impact revenue.

---

## Tools Used
- MySQL (via XAMPP / phpMyAdmin)
- SQL — JOINs, GROUP BY, HAVING, Subqueries, Aggregations, DATE_FORMAT

---

## Files
- `ecommerce_analysis.sql` — All analytical queries with comments

---

## Key Takeaways
This project simulates real analyst work — extracting business insights from 
relational databases using joins and aggregations across multiple tables.