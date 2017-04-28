/*
Provide a query that shows the top 3 best selling artists.
*/

select a.Name 'Artist', count(il.TrackId) 'Number of Sales'
from artist a, Album al, Track t, InvoiceLine il
where a.ArtistId = al.ArtistId
and al.AlbumId = t.AlbumId
and t.TrackId = il.TrackId
group by a.Name
order by count(il.TrackId) desc
limit 3;