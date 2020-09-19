select Il.*, Track.TrackId, Track.Name
from InvoiceLine Il
	join Track
		on Il.TrackId = Track.TrackId
order by Il.InvoiceLineId