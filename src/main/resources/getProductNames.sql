select o.product_name
from netology.customers c
         left join netology.orders o on c.id = o.customer_id
where lower(c.name) = lower(:name);