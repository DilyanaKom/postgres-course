CREATE VIEW 
	view_company_chart
AS 
SELECT 
	concat(first_name, ' ', last_name) AS full_name,
	job_title
FROM
	employees
WHERE
	manager_id = 184;