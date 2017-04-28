/*
Which sales agent made the most in sales over all?
*/

select SalesEmployee 'Top Sales Employee', max(TotalSales) 'Sales Total'
from Employee e, (select sum(i.Total) TotalSales, e.FirstName  || ' ' ||  e.LastName SalesEmployee
                    from Employee e, Invoice i, Customer c
                    where e.Title = 'Sales Support Agent'
                    and c.SupportRepId = e.EmployeeId
                    and c.CustomerId = i.CustomerId
                    group by c.SupportRepId);