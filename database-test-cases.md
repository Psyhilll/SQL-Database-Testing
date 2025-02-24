# Database Testing - Test Cases

This document contains test cases for validating database integrity, constraints, indexing, and performance.

## 📌 Test Cases for Data Validation

| Test Case ID | Test Scenario | Expected Result | Status |
|-------------|--------------|----------------|--------|
| TC_01 | Check for duplicate records in the `customers` table | No duplicate `customer_id` values should exist | ✅ |
| TC_02 | Validate mandatory fields (e.g., `customer_id`, `order_date` in `orders` table) | No NULL values in required fields | ✅ |
| TC_03 | Ensure email format is valid in `users` table | All emails should follow correct format (`abc@xyz.com`) | ✅ |
| TC_04 | Verify foreign key constraints (`orders.customer_id` → `customers.customer_id`) | No orphan records should exist | ✅ |

## 📌 Test Cases for Stored Procedures

| Test Case ID | Test Scenario | Expected Result | Status |
|-------------|--------------|----------------|--------|
| TC_05 | Execute `GetCustomerOrders` with valid date range | Orders within the range should be retrieved | ✅ |
| TC_06 | Execute `AddNewCustomer` with valid inputs | New customer should be inserted successfully | ✅ |
| TC_07 | Execute `UpdateOrderStatus` for a valid order | Order status should be updated correctly | ✅ |

## 📌 Test Cases for Triggers

| Test Case ID | Test Scenario | Expected Result | Status |
|-------------|--------------|----------------|--------|
| TC_08 | Insert new order items (Trigger: `UpdateStockAfterOrder`) | Stock should reduce accordingly | ✅ |
| TC_09 | Try updating stock to a negative value (Trigger: `PreventNegativeStock`) | Should throw an error preventing update | ✅ |
| TC_10 | Delete a user (Trigger: `LogDeletedUsers`) | Entry should be logged in `deleted_users_log` | ✅ |

## 📌 Test Cases for Performance & Indexing

| Test Case ID | Test Scenario | Expected Result | Status |
|-------------|--------------|----------------|--------|
| TC_11 | Query `customers` table using indexed column (`email`) | Should execute faster than without index | ✅ |
| TC_12 | Execute `EXPLAIN` on a complex JOIN query | Query plan should show index usage | ✅ |
| TC_13 | Fetch last 10 orders using `LIMIT` | Query should execute efficiently | ✅ |

---

📢 **Note:** Replace ✅ with ❌ if a test fails, and document the issue accordingly.  

