/*
Provide a query that includes the purchased
track name with each invoice line item.
*/

select il.*, t.Name 'Track Name'
from InvoiceLine il, Track t
where il.TrackId = t.Trackid;