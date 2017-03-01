
USE `modul1`;
SELECT p.project_name, sum(d.salary) as total
FROM projects p, developers d
WHERE p.company_id = d.company_id
GROUP BY d.company_id
ORDER BY total