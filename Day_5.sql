/*
**Problem:**  
You have two tables: `employees` and `departments`.

`employees` table:
| employee_id | name    | department_id | salary |
|-------------|---------|---------------|--------|
| 1           | John    | 101           | 50000  |
| 2           | Alice   | 102           | 60000  |
| 3           | Bob     | NULL          | 55000  |

`departments` table:
| department_id | department_name |
|---------------|-----------------|
| 101           | Sales           |
| 102           | Marketing       |
| 103           | HR              |

**Task:** Write a SQL query to join the `employees` and `departments` tables, and replace `NULL` values in the `department_id` column with a default department, such as "HR." Additionally, create a new column indicating whether the employee’s salary is above or below 55,000.

*/

SELECT 
    e.employee_id,
    e.name,
    COALESCE(d.department_name, 'HR') AS department_name,
    e.salary,
    CASE 
        WHEN e.salary > 55000 THEN 'Above 55000'
        ELSE 'Below 55000'
    END AS salary_status
FROM 
    employees e
LEFT JOIN 
    departments d
ON 
    e.department_id = d.department_id;
