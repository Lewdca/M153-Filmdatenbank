use Filmdatenbank
go
INSERT INTO Genre(Bezeichnung)
VALUES('Action'), ('Science Fiction'), ('Melodrama'), ('Drama'), ('Gothic'), ('Komödie'), ('Romantik'), ('Thriller'), ('Horror'), ('Katastrophe')

INSERT INTO Studio(StudioName, Gründung, Standort)
VALUES('Warner Bros', '1923-04-04','USA'), ('Lionsgate', '1997-07-10','USA'), ('20th Century Fox', '1935-05-31', 'USA'), ('Universal Pictures', '1912-04-30','USA')

INSERT INTO Autor(Nachname, Vorname, Jahrgang, Nationalität)
VALUES('Sommers','Stephen', 1962 , 'USA'), ('Wachowski','Lana', 1965, 'USA'), ('Wachowski','Lilly', 1967, 'USA'), ('Luhrmann','Baz', 1962, 'Australien'),
        ('Harwood','Ronald', 1934, 'England'), ('Beattie','Stuart', 1972, 'Australien'), ('Flanagan','Richard', 1961, 'Australien'), ('Miller','George', 1945, 'Australien'), 
        ('Collee','John', 1955, 'Schottland'), ('Morris','Judy', 1947, 'Australien'), ('Coleman','Warren', NULL , NULL), ('Cameron','James', 1954, 'Kanada'), 
        ('Phillips','Todd', 1970, 'USA'), ('Silver','Scott', 1964, 'USA'), ('Oppenheim','Noah', 1978, 'USA'), ('Myers','Grant Pierce', NULL, NULL), ('Nowlin','T.S.', NULL, 'USA'), 
        ('Collins','Suzanne', 1962, 'USA'), ('Ross','Gary', 1956, 'USA'), ('Ray','Billy', 1962, 'USA'), ('Snowden','Juliet', NULL, 'USA'), ('White','Stiles', NULL, 'USA')

Exec sp_InsertMovie 'Joker', '2019-10-04', 62.5, 1070, 122, false, 1
Exec sp_InsertMovie 'Avatar', '2009-12-18', 237, 2780, 162, True, 3
Exec sp_InsertMovie 'Maze Runner', '2014-09-19', 34, 340, 113, True, 3
Exec sp_InsertMovie 'Hunger Games', '2012-03-31', 78, 694, 144, True, 2
Exec sp_InsertMovie 'Ouija', '2016-10-24', 5, [42.7], 99, False, 4
Exec sp_InsertMovie 'Van Helsing', '2004-05-07', 170, [300.2], 131, false, 4
Exec sp_InsertMovie 'Matrix', '1999-03-31', 63, [466.6], 136, True, 1
Exec sp_InsertMovie 'Australia', '2008-11-26', 130, [211.3], 165, False, 3
Exec sp_InsertMovie 'Happy Feet', '2006-11-17', 100, [384.3], 108, True, 1
Exec sp_InsertMovie 'Titanic', '1997-12-19', 200, 2202, 195, False, 3

Insert into FilmGenre(fk_GenreId, fk_FilmtitelId)
VALUES(1, 6), (1, 7), (1, 4), (5, 6), (9, 6), (9, 5), (2, 7), (2, 2),(2, 3),(3, 8), (6, 9), (7, 10),(10, 10), (8, 1), (4, 1)

INSERT INTO FilmAutor(fk_AutorId, fk_FilmtitelId)
VALUES(1,6),(2,7), (3,7), (4,8), (5,8), (6,8), (7,8), (9,9), (9,9), (10,9), (11,9),(12,10),(12,2),(13,1),(14,1),(15,3),(16,3),(17,3),(18,4),(19,4),(20,4),(21,5),(22,5)