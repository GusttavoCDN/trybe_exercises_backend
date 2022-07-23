# Queremos saber o Nome das pessoas colaboradoras e suas respectivas gerências (manager) cujos departamentos (department) são diferentes.
SELECT
  CONCAT(e.first_name, ' ', e.last_name) AS employee_name,
  CONCAT(m.first_name, ' ', m.last_name) AS manager
FROM
  employees AS e
  INNER JOIN employees AS m ON e.employee_id = m.manager_id
WHERE
  e.department_id != m.department_id;
  
# Exiba o Nome e a quantidade de pessoas lideradas de cada pessoa gerente.
SELECT m.first_name, COUNT(e.employee_id)
FROM employees AS e
INNER JOIN employees AS m ON e.employee_id = m.manager_id
GROUP BY m.first_name;