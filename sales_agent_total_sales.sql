/*
 Provide a query that shows total sales made by each sales agent.
*/

select e.FirstName  || ' ' ||  e.LastName 'Employee', sum(i.Total) 'Total Sales'
from Employee e, Invoice i, Customer c
where e.Title = 'Sales Support Agent'
and c.SupportRepId = e.EmployeeId
and c.CustomerId = i.CustomerId
group by c.SupportRepId;