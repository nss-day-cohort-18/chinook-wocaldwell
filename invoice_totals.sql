select i.Total, c.FirstName, c.LastName, c.Country, e.FirstName, e.LastName
from Invoice i, Customer c, Employee e
where c.SupportRepId = e.EmployeeId;