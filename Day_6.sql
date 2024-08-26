/*
**Problem:**  
You have a table `sales` with the following columns:

| sale_id | product_id | sale_date   | quantity | price |
|---------|------------|-------------|----------|-------|
| 1       | 101        | 2024-08-01  | 5        | 100   |
| 2       | 102        | 2024-08-02  | 3        | 200   |
| 3       | 101        | 2024-08-03  | 2        | 100   |
| 4       | 103        | 2024-08-04  | 1        | 150   |

**Task:** Write a SQL query to calculate the total sales amount for each day. Additionally, calculate the average sales amount per day.

*/

SELECT
    sale_date,
    SUM(quantity * price) AS total_sales_amount
FROM
    sales
GROUP BY
    sale_date
ORDER BY
    sale_date;


SELECT
    AVG(daily_total) AS average_sales_amount
FROM
    (
        SELECT
            sale_date,
            SUM(quantity * price) AS daily_total
        FROM
            sales
        GROUP BY
            sale_date
    ) AS daily_totals;
