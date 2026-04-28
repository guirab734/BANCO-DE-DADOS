-- odrnenar quais clientes tem mais faturas

select
  customer_id as cliente,
  count(invoice_id) as fatura
from
  invoice
group by
  cliente
having
  count(invoice_id) > 5
order by
  fatura desc
