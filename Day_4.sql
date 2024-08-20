/*
**Problem:**  
You have a table `inventory` with the following columns:

| product_id | product_name | stock | price |
|------------|--------------|-------|-------|
| 1          | Laptop       | 50    | 1000  |
| 2          | Phone        | 100   | 500   |
| 3          | Tablet       | 30    | 300   |

**Task:** 
1. Add a new column `category` to the `inventory` table and update it with values based on the product names (e.g., 'Electronics' for all products).
2. Create a unique index on the `product_id` column.
3. Delete any product with stock less than 40.
*/

ALTER TABLE inventory ADD COLUMN category VARCHAR(50);

UPDATE inventory SET category = 'Electronics';

CREATE UNIQUE INDEX idx_product_id ON inventory(product_id);

DELETE FROM inventory WHERE stock < 40;
