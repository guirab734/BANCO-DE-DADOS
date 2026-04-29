-- conectar id do artista, nome e quantidade de faixas

select
  ar.artist_id as id,
  ar.name as nome_do_artista,
  count(t.track_id)
from
  track t
  inner join album al
  on t.album_id = al.album_id
  inner join artist ar
  on al.artist_id = ar.artist_id
group by
  id,
  nome_do_artista
