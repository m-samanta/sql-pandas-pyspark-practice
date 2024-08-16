/*

### Day 1 Problem Set

**SQL Problem:**

**Problem:**  
You have two tables: `employees` and `departments`.

`employees` table:
| id  | name       | department_id |
|-----|------------|---------------|
| 1   | Alice      | 10            |
| 2   | Bob        | 20            |
| 3   | Charlie    | 10            |
| 4   | David      | 30            |

`departments` table:
| id  | department_name |
|-----|-----------------|
| 10  | HR              |
| 20  | Engineering     |
| 30  | Marketing       |
| 40  | Sales           |

**Task:** Write a SQL query to get a list of all employees and their corresponding department names.If an employee's department is not in the `departments` table, still include the employee with a `NULL` value for the department name.

*/

SELECT
    name,
    department_name
FROM
    employees e
LEFT JOIN
    departments d ON e.department_id = d.id
