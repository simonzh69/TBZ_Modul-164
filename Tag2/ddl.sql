USE m164;

CREATE TABLE tbl_fahrer (
  FahrerID INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(50) CHARACTER SET utf8mb4,
  Vorname VARCHAR(30) CHARACTER SET utf8mb4,
  Telefonnummer VARCHAR(12),
  Fuehrerscheinklasse VARCHAR(10)
);

CREATE TABLE tbl_disponent (
  DisponentID INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(50) CHARACTER SET utf8mb4,
  Vorname VARCHAR(30) CHARACTER SET utf8mb4,
  Telefonnummer VARCHAR(12),
  Bereich VARCHAR(50)
);

DROP TABLE tbl_fahrer;

CREATE TABLE tbl_fahrer (
  FahrerID INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(50) CHARACTER SET utf8mb4,
  Vorname VARCHAR(30) CHARACTER SET utf8mb4,
  Telefonnummer VARCHAR(12),
  Fuehrerscheinklasse VARCHAR(10)
);

CREATE TABLE tbl_Mitarbeiter (
  MA_ID INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(50) CHARACTER SET utf8mb4,
  Vorname VARCHAR(30) CHARACTER SET utf8mb4,
  Geburtsdatum DATETIME,
  Telefonnummer VARCHAR(12),
  Einkommen FLOAT(10,2)
);

ALTER TABLE tbl_Mitarbeiter
  MODIFY Name VARCHAR(50) CHARACTER SET latin1,
  MODIFY Vorname VARCHAR(30) CHARACTER SET latin1;

ALTER TABLE tbl_fahrer
  DROP COLUMN Name,
  DROP COLUMN Vorname,
  DROP COLUMN Telefonnummer;

ALTER TABLE tbl_disponent
  DROP COLUMN Name,
  DROP COLUMN Vorname,
  DROP COLUMN Telefonnummer;

ALTER TABLE tbl_fahrer
  ADD MA_ID INT NOT NULL,
  ADD CONSTRAINT fk_fahrer_mitarbeiter
    FOREIGN KEY (MA_ID) REFERENCES tbl_Mitarbeiter(MA_ID);

ALTER TABLE tbl_disponent
  ADD MA_ID INT NOT NULL,
  ADD CONSTRAINT fk_disponent_mitarbeiter
    FOREIGN KEY (MA_ID) REFERENCES tbl_Mitarbeiter(MA_ID);