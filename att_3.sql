-- conectar nome da msc, titulo, preço e o artista

select
  t.name as nome_da_musica,
  al.title as titulo_album,
  t.unit_price as preco_unitario,
  ar.name as nome_do_artista
from
  track t
  inner join album al
  on t.album_id = al.album_id
  inner join artist ar
  on al.artist_id = ar.artist_id
