/*
Provide a query that shows the total number of tracks in each playlist.
The Playlist name should be include on the resulant table.
*/

select count(pt.PlaylistId) 'Total Tracks', p.Name 'Playlist Name'
from PlaylistTrack pt, Playlist p
where pt.PlaylistId = p.PlaylistId
group by pt.PlaylistId;