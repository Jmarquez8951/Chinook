Select Employee.FirstName + ' ' + Employee.LastName [Full Name], Invoice.InvoiceId, Customer.CustomerId, Invoice.Total
from Employee, Invoice
	join Customer
		on Customer.CustomerId = Invoice.CustomerId
where Employee.EmployeeId = Customer.SupportRepId
order by [Full Name]