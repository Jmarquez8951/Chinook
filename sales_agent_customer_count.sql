select e.FirstName + ' ' + e.LastName [Support Rep Name], count(c.SupportRepId) [Customers per Rep]
from Employee e
	join Customer c
		on e.EmployeeId = c.SupportRepId
group by e.FirstName + ' ' + e.LastName