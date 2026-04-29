-- ordenação dos clientes com mais faturamento, com ticket médio e que possuem o ticket médio > 5

select
  customer_id as cliente,
  round(avg(total), 2) as ticket,
  sum(total) as total
from
  invoice
group by
  cliente
having
  round(avg(total), 2) > 5
order by
  total desc
