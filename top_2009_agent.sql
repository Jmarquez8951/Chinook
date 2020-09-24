select top 1 e.FirstName + ' ' + e.LastName [Support Rep Name], sum(i.Total) Totals
from Invoice i
	join Customer c
		on i.CustomerId = c.CustomerId
	join Employee e
		on e.EmployeeId = c.SupportRepId
where i.InvoiceDate BETWEEN '2009-01-01' AND '2010-01-01'
group by e.FirstName + ' ' + e.LastName

