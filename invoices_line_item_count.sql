select Invoice.InvoiceId, Count(InvoiceLine.InvoiceId) [Invoice Line count]
from Invoice
	join InvoiceLine
		on Invoice.InvoiceId = InvoiceLine.InvoiceId
group by Invoice.InvoiceId