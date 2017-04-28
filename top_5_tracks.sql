/*
Provide a query that shows the top 5 most purchased tracks over all.
*/

select TrackName Track, TotalLines 'Number of Purchases'
from(select t.Name TrackName, count(il.TrackId) TotalLines
            from Track t, InvoiceLine il
            where t.TrackId = il.TrackId
            group by il.TrackId)
order by TotalLines desc
limit 5;