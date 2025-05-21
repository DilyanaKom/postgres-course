SELECT
	concat(e.first_name, ' ', e.last_name) AS full_name,
	e.department_id,
	concat(a.number, ' ', a.street) AS address
FROM 
	employees AS e
JOIN 
	addresses AS a
ON 
	a.id = e.address_id
ORDER BY 
	address;