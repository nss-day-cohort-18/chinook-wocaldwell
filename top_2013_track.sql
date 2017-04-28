/*
Provide a query that includes the purchased
track name with each invoice line item.
*/

select TrackName Track, max(TotalLines) 'Number of Purchases'
from(select t.Name TrackName, count(il.TrackId) TotalLines
            from Track t, InvoiceLine il, Invoice i
            where t.TrackId = il.TrackId
            and il.InvoiceId = i.InvoiceId
            and i.InvoiceDate like '%2013%'
            group by il.TrackId);