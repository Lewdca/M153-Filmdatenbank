use Filmdatenbank
go
--Auslösung des Tirggers
--Wenn es kein Eintrag mit dieser Id gibt
Delete From Filmtitel where FilmtitelId = 11
--Wenn ein Eintrag gelöscht wird
Delete From Filmtitel where FilmtitelId = 10
go
Exec sp_InsertMovie 'NewFilm','2000-12-20', 20, 220, 200, False, 3
Exec sp_UpdateStudioName 4, 'NewStudio'
go
Select FilmtitelId, Titel, Erscheinungsdatum, Ausgaben, Einnahmen, Dauer, Nachfolge, Studio.StudioName From Filmtitel
Join Studio on Filmtitel.fk_StudioId = Studio.StudioId
go 
Select FilmtitelId, Titel, Erscheinungsdatum, Ausgaben, Einnahmen, Dauer, Nachfolge, Genre.Bezeichnung From Filmtitel
Join FilmGenre on fk_FilmtitelId = FilmtitelId
Join Genre on fk_GenreId = GenreId
Where FilmtitelId = 1
