/*
Provide a query that shows the total sales per country.
*/

select Country, SalesTotal 'Total Sales'
from(select i.BillingCountry Country, sum(i.Total) SalesTotal
            from Invoice i
            group by i.BillingCountry);