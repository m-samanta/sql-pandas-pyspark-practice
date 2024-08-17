/*

**Problem:**  
You have a table `sales` with the following columns:

| id  | customer_id | sale_date  | amount |
|-----|-------------|------------|--------|
| 1   | 101         | 2024-08-01 | 100    |
| 2   | 102         | 2024-08-02 | 200    |
| 3   | 101         | 2024-08-03 | 150    |
| 4   | 103         | 2024-08-04 | 250    |

**Task:** Write a SQL query to calculate the cumulative sales amount for each customer, ordered by `sale_date`. Additionally, return only those customers who have made more than one purchase.

*/


SELECT
    customer_id,
    SUM(amount) OVER (
        PARTITION BY customer_id
        ORDER BY sale_date) AS cumsum
FROM
    sales
WHERE
    customer_id IN (
        SELECT
            customer_id
        FROM
            sales
        GROUP BY
            customer_id
        HAVING COUNT(*) > 1
    )
ORDER BY
    customer_id, sale_date;

