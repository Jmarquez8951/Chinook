Select Customer.FirstName, Customer.LastName, Customer.Country, Customer.CustomerId, Invoice.InvoiceId, Invoice.InvoiceDate, Invoice.BillingCountry
From Customer
	join invoice
		on Invoice.CustomerId = Customer.CustomerId
Where Customer.Country = 'Brazil'
