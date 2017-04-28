/*
Provide a query that shows the count of customers
assigned to each sales agent.
*/

select e.FirstName  || ' ' ||  e.LastName 'Sales Employee', count(c.SupportRepId) 'Number of Customers'
from Employee e, Customer c
where e.Title = 'Sales Support Agent'
and c.SupportRepId = e.EmployeeId
group by c.SupportRepId;