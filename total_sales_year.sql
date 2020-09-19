select
	   (
			select sum(Invoice.Total)
			from Invoice
			where Invoice.InvoiceDate like '%2009%'
	   ) as [Total In 2009]
from Invoice
where Invoice.InvoiceDate = '2009'

select top 1
	   (
			select sum(Invoice.Total)
			from Invoice
			where Invoice.InvoiceDate like '%2011%'
	   ) as [Total In 2011]
from Invoice
where Invoice.InvoiceDate like '%2011%'