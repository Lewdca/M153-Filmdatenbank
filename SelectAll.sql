Select Titel, Erscheinungsdatum, Ausgaben, Einnahmen, Dauer, Nachfolge, Studio.StudioName, Genre.Bezeichnung From Filmtitel
Join Studio on Filmtitel.fk_StudioId = Studio.StudioId
Join FilmGenre on FilmGenre.fk_FilmtitelId = Filmtitel.FilmtitelId
Join Genre on FilmGenre.fk_GenreId = Genre.GenreId