CREATE VIEW customer_info AS
SELECT 
	first_name,
	last_name,
	email,
	address,
	phone
FROM customer c
JOIN address a
ON c.address_id = a.address_id;

SELECT * FROM customer_info;

ALTER VIEW customer_info RENAME TO customer_master_list;

SELECT * FROM customer_master_list;

DROP VIEW IF EXISTS customer_master_list;