/*

**Problem:**  
You have two tables: `orders` and `customers`.

`orders` table:
| order_id | customer_id | amount | order_date |
|----------|-------------|--------|------------|
| 1        | 101         | 100    | 2024-08-01 |
| 2        | 102         | 150    | 2024-08-02 |
| 3        | 101         | 200    | 2024-08-03 |

`customers` table:
| customer_id | customer_name |
|-------------|---------------|
| 101         | Alice         |
| 102         | Bob           |
| 103         | Charlie       |

**Task:** Write a SQL query to find the total amount spent by each customer, including customers who haven't placed any orders yet.

*/

SELECT
    SUM(amount) AS total_amount,
    customer_name
FROM
    orders o
LEFT JOIN
    customers c ON o.customer_id = c.customer_id
GROUP BY
    customer_id, customer_name