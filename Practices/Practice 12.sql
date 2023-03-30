USE sql_invoicing;

SELECT 
	p.payment_id AS ID,
    p.date AS Date, 
    p.amount AS Amount,
    c.name AS Client_Name,
    c.phone AS Client_Phone, 
    pm.name AS Payment_Type,
    i.number AS Transaction_Number, 
    i.payment_date AS Payment_Date
FROM payments p
JOIN clients c 
	ON p.client_id = c.client_id
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id
JOIN invoices i
	ON p.invoice_id = i.invoice_id;

