select Track.Name Song, MediaType.Name [Media Type], Album.Title [Album Title], Genre.Name Genre
from Track
	left join Genre
		on Track.GenreId = Genre.GenreId
	left join Album
		on Album.AlbumId = Track.AlbumId
	left join MediaType
		on MediaType.MediaTypeId = Track.MediaTypeId