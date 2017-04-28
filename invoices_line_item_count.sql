/*
Provide a query that shows all Invoices but
includes the # of invoice line items.
*/

select i.*, count(il.InvoiceId) 'Number of Line Items'
from Invoice i, InvoiceLine il
where i.InvoiceId = il.InvoiceId
group by il.InvoiceId;