/*
Provide a query that shows the most purchased Media Type.
*/

select Medium, max(NumSales) 'Number of Sales'
from (select m.Name Medium, count(il.InvoiceLineId) NumSales
            from MediaType m, Track t, InvoiceLine il
            where m.MediaTypeId = t.MediaTypeId
            and t.TrackId = il.TrackId
            group by m.MediaTypeId);