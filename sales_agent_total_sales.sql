select e.FirstName + ' ' + e.LastName [Support Rep Name], sum(i.Total) Totals
from Customer c
	join Invoice i
		on i.CustomerId = c.CustomerId
	join Employee e
		on e.EmployeeId = c.SupportRepId
group by e.FirstName + ' ' + e.LastName