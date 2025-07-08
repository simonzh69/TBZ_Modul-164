USE m164;

CREATE TABLE Person (
  PersonID INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(50),
  Vorname VARCHAR(30),
  Geburtsdatum DATETIME
);

CREATE TABLE Fahrer (
  FahrerID INT PRIMARY KEY AUTO_INCREMENT,
  PersonID INT NOT NULL,
  Fuehrerscheinklasse VARCHAR(10),
  FOREIGN KEY (PersonID) REFERENCES Person(PersonID)
);

CREATE TABLE Disponent (
  DisponentID INT PRIMARY KEY AUTO_INCREMENT,
  PersonID INT NOT NULL,
  Bereich VARCHAR(50),
  FOREIGN KEY (PersonID) REFERENCES Person(PersonID)
);

CREATE TABLE Fahrzeug (
  FahrzeugID INT PRIMARY KEY AUTO_INCREMENT,
  Kennzeichen VARCHAR(20),
  Kapazitaet INT
);

CREATE TABLE Tour (
  TourID INT PRIMARY KEY AUTO_INCREMENT,
  Datum DATE,
  Startzeit TIME,
  FahrerID INT,
  DisponentID INT,
  FahrzeugID INT,
  FOREIGN KEY (FahrerID) REFERENCES Fahrer(FahrerID),
  FOREIGN KEY (DisponentID) REFERENCES Disponent(DisponentID),
  FOREIGN KEY (FahrzeugID) REFERENCES Fahrzeug(FahrzeugID)
);

CREATE TABLE Stopp (
  StoppID INT PRIMARY KEY AUTO_INCREMENT,
  TourID INT,
  Adresse VARCHAR(100),
  Reihenfolge INT,
  FOREIGN KEY (TourID) REFERENCES Tour(TourID)
);