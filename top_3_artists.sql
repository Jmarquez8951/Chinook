select top 3 sum(t.UnitPrice) [Units Sold], a.Name
from Track t
	left join InvoiceLine il
		on t.TrackId = il.TrackId
	left join Album al
		on al.AlbumId = t.AlbumId
	left join Artist a
		on a.ArtistId = al.ArtistId
group by a.Name
order by [Units Sold] desc


