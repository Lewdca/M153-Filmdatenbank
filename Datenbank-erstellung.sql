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
    Gr�ndung Date,
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
    Nationalit�t varchar(50),

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