select c.Firstname, c.LastName, i.InvoiceId, i.InvoiceDate, i.BillingCountry
from Customer c
left join Invoice i
where c.Country = 'Brazil'
and c.CustomerId = i.CustomerId;