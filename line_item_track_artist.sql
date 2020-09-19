select Il.*, Track.Name, Artist.Name
from InvoiceLine Il
	left join Track
		on Il.TrackId = Track.TrackId
	left join Album
		on Track.AlbumId = Album.AlbumId
	left join Artist
		on Album.ArtistId = Artist.ArtistId
order by Il.InvoiceLineId