select top 5 COUNT(t.TrackId) [Units Sold], t.Name
from Track t
	left join InvoiceLine il
		on t.TrackId = il.TrackId
group by t.Name
order by [Units Sold] desc
