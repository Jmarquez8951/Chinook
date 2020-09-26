select top 1 m.Name [Media Type], count(t.MediaTypeId) [Media Type Count]
from Track t
	left join MediaType m
		on t.MediaTypeId = m.MediaTypeId
	left join InvoiceLine il
		on il.TrackId = t.TrackId
	left join Invoice i
		on i.InvoiceId = il.InvoiceId
group by m.Name