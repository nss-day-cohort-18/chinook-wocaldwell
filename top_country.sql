/*
Which country's customers spent the most?
*/

select Country, max(SalesTotal) 'Total Sales'
from(select i.BillingCountry Country, sum(i.Total) SalesTotal
        from Invoice i
        group by i.BillingCountry);