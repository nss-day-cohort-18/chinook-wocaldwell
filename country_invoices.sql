/*
Provide a query that shows the # of invoices per country.
HINT: GROUP BY
*/

select count(BillingCountry) 'Number of Invoices', BillingCountry
from Invoice
group by BillingCountry;