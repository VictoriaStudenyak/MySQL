CREATE DATABASE EmployeesDB;
USE EmployeesDB;
CREATE TABLE employees
(
	employee_role varchar(20),
    employee_name varchar(20),
    building varchar(5),
    years_employed int
);
INSERT INTO employees (employee_role, employee_name, building, years_employed) VALUES
("Engineer", "Becky A.", "1e", 4),
("Engineer", "Dan B.", "1e", 2),
("Engineer", "Sharon F.", "1e", 6),
("Engineer", "Dan M.", "1e", 4),
("Engineer", "Malcom S.", "1e", 1),
("Artist", "Tylar S.", "2w", 2),
("Artist", "Sherman D.", "2w", 8),
("Artist", "Jakob J.", "2w", 6),
("Artist", "Lillia A.", "2w", 7),
("Artist", "Brandon J.", "2w", 7),
("Manager", "Scott K.", "1e", 9),
("Manager", "Shirlee M.", "1e", 3),
("Manager", "Daria O.", "2w", 6);

SELECT MAX(years_employed) as longest_time FROM employees;
SELECT employee_role, AVG(years_employed) FROM employees GROUP BY employee_role;
SELECT building, SUM(years_employed) as Total_years_employed FROM employees GROUP BY building;
SELECT employee_role, COUNT(*) as Numbers_of_artists FROM employees WHERE employee_role = "Artist";
SELECT employee_role, COUNT(*) FROM employees GROUP BY employee_role;
SELECT employee_role, SUM(years_employed) FROM employees GROUP BY employee_role HAVING employee_role = "Engineer";
SELECT * FROM employees ORDER BY building;
SELECT employee_role, years_employed FROM employees ORDER BY years_employed DESC;
SELECT employee_role, years_employed FROM employees ORDER BY years_employed ASC;
SELECT employee_role, years_employed FROM employees ORDER BY years_employed LIMIT 5 OFFSET 2;


