USE `modul1`;
SELECT
projects.project_name,
avg(developers.salary) as avg_salary
FROM developers
INNER JOIN
   projects_developers ON developers.id=projects_developers.developer_id
INNER JOIN
 projects ON projects.id= projects_developers.project_id
WHERE projects.cost= (SELECT min(cost) FROM projects)