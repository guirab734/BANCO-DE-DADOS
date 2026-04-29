-- localizando clientes que nunca compraram na loja
select 
  c.first_name,
  c.last_name
from 
  customer c
  left join invoice i
  on  c.customer_id = i.customer_id
where
  i.invoice_id is null;
