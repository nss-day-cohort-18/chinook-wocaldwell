/*
Provide a query that shows all the Tracks, but displays no IDs.
The result should include the Album name, Media type and Genre.
*/

select t.Name 'Track Name', a.Title 'Album', m.Name 'Medium', g.Name 'Genre'
from Track t, Album a, MediaType m, Genre g
where t.AlbumId = a.AlbumId
and t.MediaTypeId = m.MediaTypeId
and t.GenreId = g.GenreId;