select count(1) [Total Invoices in 2009 and 2011]
from Invoice
where Year(Invoice.InvoiceDate) = 2009
or Year(Invoice.InvoiceDate) = 2011