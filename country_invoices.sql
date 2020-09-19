select BillingCountry, count(InvoiceId) [Number of invoices]
from Invoice 
group by BillingCountry
order by [Number of invoices] desc