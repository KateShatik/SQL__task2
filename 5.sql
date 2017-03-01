USE `modul1`;

CREATE TEMPORARY TABLE profit
SELECT
companies.company_name AS company_name,
customers.customer_name AS customer_name,
sum(projects.cost)  AS   su_m
FROM companies
INNER JOIN projects ON companies.id= projects.company_id
INNER JOIN customers ON projects.customer_id= customers.id
GROUP BY company_name,customer_name


CREATE TEMPORARY TABLE min_profit
SELECT
company_name,
min(su_m) as minimum
FROM profit
GROUP BY company_name


SELECT profit.customer_name, profit.company_name, profit.su_m
FROM profit
INNER JOIN min_profit ON profit.su_m= min_profit.minimum
AND profit.company_name= min_profit.company_name
