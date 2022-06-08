use master 
go
drop database if exists Filmdatenbank
go
Create Database Filmdatenbank
go
use Filmdatenbank
go
create table Studio(    
    StudioId Integer identity,
    StudioName varchar(100),
    Gründung Date,
    Standort varchar(50),

    primary key(StudioId)
);

create table Filmtitel(
  FilmtitelId integer identity,
  Titel varchar(100),
  Erscheinungsdatum date,
  Ausgaben decimal,
  Einnahmen decimal,
  Dauer int,
  Nachfolge BIT,
  
  fk_StudioId integer,

  primary key(FilmtitelId),
  foreign key (fk_StudioId) References Studio(StudioId)
);

create table Genre(
  GenreId integer identity,
  Bezeichnung varchar(100),
    
  primary key(GenreId)
);

create table Autor(
    AutorId integer identity,
    Nachname varchar(50),
    Vorname varchar(50),
    Jahrgang int,
    Nationalität varchar(50),

    primary key(AutorId)
)

create table FilmGenre(
    FilmGenreId integer identity,
    fk_FilmtitelId integer,
    fk_GenreId integer,

    primary key(FilmGenreId),
    foreign key (fk_FilmtitelId) References Filmtitel(FilmtitelId),
    foreign key (fk_GenreId) References Genre(GenreId)
);

create table FilmAutor(
    FilmAutorId integer identity,
    fk_FilmtitelId integer,
    fk_AutorId integer,

    primary key(FilmAutorId),
    foreign key (fk_FilmtitelId) References Filmtitel(FilmtitelId),
    foreign key (fk_AutorId) References Autor(AutorId)
);
go
create trigger DeleteMovie on Filmtitel for delete 
as begin
    if @@rowcount = 0 
    begin
        print 'Es sind keine Zeilen betroffen'
    end
    else
    begin
    print 'Sie haben Zeilen gelöscht';
    end
end
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
go
CREATE PROCEDURE sp_UpdateStudioName
@Id int,
@NewName varchar(50)
AS BEGIN
    Update Studio
    Set StudioName = @NewName
    Where StudioId = @Id
END