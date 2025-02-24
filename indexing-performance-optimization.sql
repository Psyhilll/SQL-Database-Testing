-- ✅ 1. Create an Index to Speed Up Search Queries
CREATE INDEX idx_customer_email ON customers(email);

-- ✅ 2. Add Composite Index for Faster Order Lookups
CREATE INDEX idx_orders_customer_date ON orders(customer_id, order_date);

-- ✅ 3. Use EXPLAIN to Analyze Query Performance
EXPLAIN SELECT * FROM orders WHERE customer_id = 101;

-- ✅ 4. Optimize Joins with Indexing
CREATE INDEX idx_order_items_product_id ON order_items(product_id);

-- ✅ 5. Optimize Group By Queries with Indexing
CREATE INDEX idx_payments_customer_id ON payments(customer_id);

-- ✅ 6. Use Proper Data Types for Faster Queries
-- Example: Instead of VARCHAR(255) for a fixed-length field, use CHAR(10) if appropriate

-- ✅ 7. Avoid SELECT * (Select Only Required Columns)
SELECT order_id, customer_id, total_amount FROM orders WHERE order_date > '2024-01-01';

-- ✅ 8. Use LIMIT to Reduce Query Load
SELECT * FROM orders ORDER BY order_date DESC LIMIT 10;
