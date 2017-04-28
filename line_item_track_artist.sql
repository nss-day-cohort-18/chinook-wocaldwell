/*
Provide a query that includes the purchased track name AND
artist name with each invoice line item.
*/

select i.*, t.Name, a.Name
from InvoiceLine i, Track t, Artist a, Album al
where i.TrackId = t.TrackId
and t.AlbumId = al.AlbumId
and al.ArtistId = a.ArtistId;