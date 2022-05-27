DROP PROCEDURE sp_InsertMovie
go
CREATE PROCEDURE sp_InsertMovie 
@Titel varchar(50),
@Erscheinung date,
@Ausgaben decimal(9,2),
@Einnahmen decimal(9,2),
@Dauer int,
@Nachfolge BIT,
@Studio int
AS BEGIN
INSERT INTO Filmtitel(Titel, Erscheinungsdatum, Ausgaben, Einnahmen, Dauer, Nachfolge, fk_StudioId)
VALUES(@Titel, @Erscheinung, @Ausgaben, @Einnahmen, @Dauer, @Nachfolge, @Studio)
END