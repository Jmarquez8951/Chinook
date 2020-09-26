select top 10 count(t.TrackId) UnitsBought, t.Name
from Invoice i
	left join InvoiceLine il
		on i.InvoiceId = il.InvoiceId
	left join Track t
		on t.TrackId = il.TrackId
where i.InvoiceDate like '%2013%'
group by t.Name
order by UnitsBought desc