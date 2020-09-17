Select Employee.FirstName + ' ' + Employee.LastName [Full Name], Customer.CustomerId, Customer.FirstName + ' ' + Customer.LastName [Customer Name], Customer.Country, Invoice.InvoiceId, Invoice.Total
from Employee, Invoice
	join Customer
		on Customer.CustomerId = Invoice.CustomerId
where Employee.EmployeeId = Customer.SupportRepId
order by [Full Name]