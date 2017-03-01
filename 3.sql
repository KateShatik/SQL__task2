USE `modul1`;
SELECT sum(developers.salary) as Salary_JAVA_developers
FROM developers
  INNER JOIN developers_skills
  INNER JOIN skills
WHERE developers.id=developers_skills.developer_id
  AND skills.id=developers_skills.skill_id
      AND skills.skill_name LIKE 'JAVA'


