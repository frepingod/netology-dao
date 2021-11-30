select o.product_name
from netology.CUSTOMERS c
         left join netology.ORDERS o on c.id = o.customer_id
where lower(c.name) = lower(:name);