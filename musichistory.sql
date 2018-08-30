--SELECT LABEL FROM Genre;

--insert into Artist values(null, "NICKLEBACK", 1989);

--SELECT * FROM Artist;

--insert into Artist values(null, "Adam Wieckert", 1990);

--insert into Album values(null, "Awesome Album", "Yesterday", 40, "The Label", 52, 10);

--insert into Song values(null, "Lala", 50, "Yesterday", 10, 52, 23);


--Problem 5
select s.Title, a.Title, art.ArtistName
from Song s, Album a, Artist art
where s.AlbumId = a.AlbumId and a.ArtistId = art.ArtistId;


--Problem 6
--Using SELECT and LEFT JOIN, write a query that displays the song title, the song duration, the album label, and the genre name for every song.
/*select s.Title 'Song', s.SongLength 'Duration', a.Title 'Album', g.Label 'Genre'
from Song s
join Album a on s.AlbumId = a.AlbumId
join Genre g on s.GenreId = g.GenreId;*/

--Problem 7
--Using a WHERE clause, modify the previous query to only show the information for songs that have a duration of 250 or greater.
/*select s.Title 'Song', s.SongLength 'Duration', a.Title 'Album', g.Label 'Genre'
from Song s
join Album a on s.AlbumId = a.AlbumId
join Genre g on s.GenreId = g.GenreId
where s.SongLength >= 250;*/

--Problem 9
--Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
/*select a.ArtistName 'Artist', Count(s.SongId)
from Artist a, Song s
where a.ArtistId = s.ArtistId
group by a.ArtistId;*/

--Problem 10
--Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
/*select g.Label, count(s.SongId)
from Genre g, Song s
where g.GenreId = s.GenreId
group by g.Label;*/

--Problem 11
--Write a SELECT statement to display how many artists exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
/*select g.Label 'Genre', count(distinct a.ArtistId)
from Genre g, Artist a, Song s
where g.GenreId = s.GenreId and s.ArtistId = a.ArtistId
group by g.GenreId;*/

--Problem 13
--Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.
/*select s.Title, Max(s.SongLength) 'Duration'
from Song s
;*/

--Problem 14
--Modify the previous query to also display the title of the album.
/*select s.Title, Max(s.SongLength) 'Duration', a.Title 'Album'
from Song s, Album a
;*/

--select *
--from Artist
--where ArtistName like "NICK%"
--OR ArtistName = "ZZTop";

--select a.Title as AlbumTitle, s.Title as SongTitle
/*From Album a
Left Join Song s on s.AlbumId = a.AlbumId;*/

--select s.AlbumId, count(s.SongId)
--from Song s group by s.AlbumId; 
--JOIN Album a on s.AlbumId = a.AlbumId


--select a.Title, MAX(a.AlbumLength)
--from Album a;
-- 1, 2 8 and 12 are done