select i.*, e.FirstName, e.LastName
from Invoice i, Customer c
left join Employee e
where c.SupportRepId = e.EmployeeId
and i.CustomerId = c.CustomerId
order by e.FirstName;