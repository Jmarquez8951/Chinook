select Playlist.Name, count(Track.TrackId) []
from Playlist
	join PlaylistTrack
		on Playlist.PlaylistId = PlaylistTrack.PlaylistId
	left join Track
		on Track.TrackId = PlaylistTrack.TrackId
group by Playlist.Name