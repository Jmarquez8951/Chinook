select InvoiceLine.InvoiceId, count(InvoiceLine.InvoiceId) [Line items]
from InvoiceLine
group by InvoiceLine.InvoiceId