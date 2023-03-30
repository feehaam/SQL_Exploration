use sql_store;

select 
	order_id, 
    product_id, 
    quantity, 
    unit_price, 
    (quantity*unit_price) as cost 
from order_items 
where order_id = 2
order by cost desc;