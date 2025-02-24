-- ✅ 1. Stored Procedure to Get Customer Orders by Date Range
DELIMITER $$

CREATE PROCEDURE GetCustomerOrders(
    IN start_date DATE, 
    IN end_date DATE
)
BEGIN
    SELECT order_id, customer_id, order_date, total_amount 
    FROM orders 
    WHERE order_date BETWEEN start_date AND end_date;
END $$

DELIMITER ;

-- ✅ 2. Stored Procedure to Insert a New Customer
DELIMITER $$

CREATE PROCEDURE AddNewCustomer(
    IN cust_name VARCHAR(255), 
    IN cust_email VARCHAR(255)
)
BEGIN
    INSERT INTO customers (name, email) 
    VALUES (cust_name, cust_email);
END $$

DELIMITER ;

-- ✅ 3. Stored Procedure to Update Order Status
DELIMITER $$

CREATE PROCEDURE UpdateOrderStatus(
    IN order_id INT, 
    IN new_status VARCHAR(50)
)
BEGIN
    UPDATE orders 
    SET status = new_status 
    WHERE order_id = order_id;
END $$

DELIMITER ;
