/*
 Which sales agent made the most in sales in 2009?
Hint: Use the MAX function on a subquery.
*/

select SalesEmployee 'Top Sales Employee 2009', max(TotalSales) 'Sales Total'
from Employee e, (select sum(i.Total) TotalSales, e.FirstName  || ' ' ||  e.LastName SalesEmployee
                            from Employee e, Invoice i, Customer c
                            where e.Title = 'Sales Support Agent'
                            and c.SupportRepId = e.EmployeeId
                            and c.CustomerId = i.CustomerId
                            and instr(i.InvoiceDate, '2009')
                            group by c.SupportRepId);






