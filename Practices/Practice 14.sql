SELECT 
	o.order_date,
    o.order_id,
    c.first_name,
    s.name,
    st.name
FROM orders o
LEFT JOIN customers c 
	ON o.customer_id = c.customer_id
LEFT JOIN shippers s
	ON o.shipper_id = s.shipper_id
LEFT JOIN order_statuses st 
	ON o.status = st.order_status_id
ORDER BY st.name;