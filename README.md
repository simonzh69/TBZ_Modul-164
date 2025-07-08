### Datenbanken Modul-164 Lernportfolio

Dokumentation des Lernportfolios und der bearbeiteten Themen im Datenbank Modul.


## Lektion vom 13.05.2025

**Wichtigste Themen:**

- Einfuhrung in Datenbanken
- Installation von MariaDB
- Erste Verbindung zur Datenbank

**Kurze Zusammenfassung / Kernkonzepte:**

- Einfuhrung in Datenbankgrundlagen, Fokus auf DBMS-Installation. MariaDB (Version 10) wurde installiert und erste Verbindung mit mysql -u root -p hergestellt.
- Wichtiges gelerntes Konzept: Ein DBMS organisiert und verwaltet Daten effizient.
- Verweis auf Ergebnisse: Erstes Schema erstellt, siehe Tag1_Installation.sql.



## Lektion vom 20.05.2025

**Wichtigste Themen:**

- Recap Tag 1 und Losungen
- Datenmodellierung: Generalisierung / Spezialisierung
- Beziehungsarten: Identifying vs. Non-Identifying Relationships
- Datenbank Management Systeme (DBMS): Merkmale, Vor-/Nachteile, Produkte
- DDL (Data Definition Language): CREATE SCHEMA/DATABASE, CREATE TABLE, DROP TABLE, ALTER TABLE
- Zeichensatze (Character Sets)
- Nutzung von MySQL Workbench (Forward Engineering, Synchronize Model)
- Recherche zu fortgeschrittenen Themen (Partition, Storage Engine, Tablespace)

**Kurze Zusammenfassung / Kernkonzepte:**

- Vertiefung der Datenmodellierung mit Generalisierung/Spezialisierung zur Redundanzreduktion ("is_a"-Beziehung). Unterschied zwischen Identifying (FK im PK) und Non-Identifying Relationships (FK optional) verstanden.
- Zentrales Thema: DBMS-Funktionen (Datenhaltung, DQL, DDL, Konsistenz) und Tools (z. B. MariaDB). DDL-Befehle (CREATE SCHEMA, CREATE TABLE) und Zeichensatze (utf8mb4) geubt.
- Praktische Anwendung: Forward Engineering in Workbench zur DDL-Generierung und Synchronize Model fur Abgleich.

**Wichtige DDL-Befehle:**

- CREATE SCHEMA db_name;
- CREATE TABLE table_name (...);
- DROP TABLE table_name;
- ALTER TABLE table_name ADD column_name datatype;
- ALTER TABLE table_name DROP column_name;
- ALTER TABLE table_name CHANGE old_col_name new_col_name datatype;
- ALTER TABLE table_name MODIFY column_name new_datatype;

**Checkpoint Fragen (Reflexion):**

- Warum Generalisierung/Spezialisierung anwenden?
- Wann Identifying Beziehung nutzen und wie mit SQL erstellen?
- Welche Befehle gehoren zu DDL?



## Lektion vom 27.05.2025

**Wichtigste Themen:**

- Vertiefung Datentypen in MariaDB/MySQL
- Komplexere Beziehungsmodelle: Mehrfachbeziehungen, Rekursion, Hierarchie
- DML-Befehle (INSERT, UPDATE, DELETE)
- DQL-Befehle (SELECT)
- Erweiterung und Befullung des "Tourenplaner"-Schemas
- Forward Engineering mit MySQL Workbench

**Kurze Zusammenfassung / Kernkonzepte:**

- Behandlung fortgeschrittener Beziehungen wie Mehrfachbeziehungen und Rekursion (Hierarchien), umgesetzt mit Zwischentabellen. Datentypen (z. B. INT, VARCHAR) vertieft.
- Ubung von DML (INSERT, UPDATE, DELETE) und DQL (SELECT mit JOINs) am "Tourenplaner"-Schema, gefullt mit Beispieldaten und validiert mit Abfragen.
- Praktische Anwendung: Forward Engineering in Workbench zur Datenbankerstellung.

**Wichtige Befehle/Konzepte:**

- Datentypen: INT, VARCHAR(50)
- Rekursion: SELF JOIN
- DML: INSERT INTO ... VALUES ...; UPDATE ... SET ... WHERE ...; DELETE FROM ... WHERE ...;
- DQL: SELECT ... FROM ... WHERE ... ORDER BY ...;
- Forward Engineering in Workbench

**Checkpoint Fragen (Reflexion):**

- Schwierigkeiten bei FK-Constraints beim Einfugen?
- Warum NULL in Hierarchie-Tabellen vermeiden?
- Wann Zwischentabelle statt Rekursion nutzen?
- Uberprufung der Datentypen-Tabelle?



## Lektion vom 03.06.2025

**Wichtigste Themen:**

- Constraints und referentielle Integritat
- Anwendung mit Forward Engineering und ALTER TABLE
- Mengenlehre und Bezug zu JOINs
- SELECT JOINs (INNER, LEFT, RIGHT, FULL OUTER)
- Abfragen uber mehrere Tabellen

**Kurze Zusammenfassung / Kernkonzepte:**

- Fokus auf Constraints (NOT NULL, UNIQUE, FK) fur referentielle Integritat, umgesetzt mit Forward Engineering und ALTER TABLE.
- Verbindung von Mengenlehre (Schnittmenge, Vereinigung) zu JOINs (INNER, LEFT, RIGHT) verstanden und auf mehrere Tabellen angewendet.
- Praktische Ubungen mit komplexen JOIN-Abfragen.

**Wichtige Befehle/Konzepte:**

- ALTER TABLE ... ADD CONSTRAINT FOREIGN KEY (...) REFERENCES ...;
- Mengenlehre: ∩, ∪
- JOINs: INNER JOIN, LEFT JOIN, RIGHT JOIN
- GROUP BY, GROUP_CONCAT

**Checkpoint Fragen (Reflexion):**

- Definition und Beispiel fur referentielle Integritat?
- Welche Constraints sind moglich?
- Unterschied LEFT vs. RIGHT JOIN?
- Umsetzung von 1:1 und m:n Beziehungen?
- Nachteile ohne Constraints bei PK/FK?



## Lektion vom 10.06.2025

**Wichtigste Themen:**

- Datenloschung und Integritat
- Fremdschlussel-Regeln (ON DELETE)
- SELECT mit ALIAS
- Aggregatsfunktionen (COUNT, SUM, AVG, MIN, MAX)
- GROUP BY und HAVING
- Reihenfolge der SELECT-Klauseln

**Kurze Zusammenfassung / Kernkonzepte:**

- Verstandnis, warum Daten in Profi-DBs selten geloscht werden, und Nutzung von ON DELETE (NO ACTION, CASCADE, SET NULL) fur Integritat.
- Vertiefung von SELECT mit ALIAS, Aggregatsfunktionen und Gruppierungen (GROUP BY, HAVING), sowie Reihenfolge der Klauseln (MERKSATZ: Sag Fritz...).

**Wichtige Befehle/Konzepte:**

- ON DELETE NO ACTION, CASCADE, SET NULL
- SELECT column AS alias
- COUNT(), SUM(), AVG(), MIN(), MAX()
- GROUP BY column, HAVING condition
- Reihenfolge: SELECT ... FROM ... WHERE ... GROUP BY ... HAVING ... ORDER BY ...

**Checkpoint Fragen (Reflexion):**

- Funf Aspekte der Datenintegritat?
- Unterschied Datenintegritat vs. Konsistenz?
- Gefahr bei ON DELETE CASCADE?
- COUNT(*) vs. COUNT(attr)?
- SELECT mit WHERE BETWEEN?
- Wichtiges bei HAVING?



## Lektion vom 17.06.2025

**Wichtigste Themen:**

- Subqueries (skalare/nicht-skalare)
- Bulkimport mit LOAD DATA INFILE
- CSV-Datenanpassung
- Normalisierung in 3NF
- Redundanzprufung
- Datenubertragung mit INSERT INTO ... SELECT ...
- Arbeiten mit db_adressen

**Zusammenfassung:**

- Subqueries (skalare: ein Wert, nicht-skalare: Listen mit IN) zur Filterung geubt. LOAD DATA INFILE fur CSV-Import mit Anpassungen (z. B. STR_TO_DATE) angewendet.
- db_adressen in 3NF normalisiert (tbl_Person, tbl_Str, tbl_Ort), Redundanzen mit GROUP BY/HAVING bereinigt, Daten mit INSERT INTO ... SELECT ... ubertragen.

**Wichtige Befehle:**

- SELECT ... WHERE col < (SELECT MIN(col) FROM ...);
- SELECT ... WHERE col IN (SELECT col FROM ...);
- LOAD DATA LOCAL INFILE 'path/file.csv' INTO TABLE ... FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n' IGNORE 1 ROWS;
- SET col = STR_TO_DATE(@var, '%d.%m.%Y');
- SELECT col, COUNT(*) FROM table GROUP BY col HAVING COUNT(*) > 1;

**Checkpoint-Fragen:**

- Zweck von Subqueries?
- Skalare vs. nicht-skalare Subqueries?
- Gefahren bei Subqueries?
- Bedeutung von IGNORE 1 ROWS?
- Folgen falscher LINES TERMINATED BY-Einstellung?
- Einstellungen fur LOAD DATA LOCAL INFILE?

**Referenzen:**

- Subquery Manual
- LOAD DATA INFILE

**Auftrag:**

- Subselect-Aufgabe (35 Min, Einzelarbeit).
- CSV-Import (30 Min, Partnerarbeit): db_adressen erstellen, Daten in tbl_Adr importieren, normalisieren, ubertragen, validieren.



## Lektion vom 24.06.2025

**Wichtigste Themen:**

- Datenbanksicherung: Konzepte und Methoden
- Backup-Typen: Voll-, differentielles, inkrementelles
- Backup-Tools: mysqldump, phpMyAdmin
- Normalisierung der db_freifaecher
- Datenimport mit LOAD DATA LOCAL INFILE
- Redundanzbereinigung
- Abfragen und Export mit SELECT INTO OUTFILE

**Zusammenfassung:**

- Sicherungskonzepte (Voll-, Differenzial-, Inkrementell-Backup) mit mysqldump geubt. db_freifaecher aus Excel in 1NF uberfuhrt, in 2NF normalisiert, mit LOAD DATA LOCAL INFILE befullt.
- Redundanzen bereinigt, Daten mit SELECT ... JOIN ... validiert, Ergebnisse mit SELECT INTO OUTFILE exportiert.

**Wichtige Befehle:**

- mysqldump -u root -p tourenplaner > C:/BACKUP/tp_dump.sql
- LOAD DATA LOCAL INFILE 'C:/path/file.csv' INTO TABLE ... FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n' IGNORE 1 ROWS;
- SELECT ... INTO OUTFILE 'C:/M164/outfile.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
- SELECT col, COUNT(*) FROM table GROUP BY col HAVING COUNT(*) > 1;

**Checkpoint-Fragen:**

- Ablauf der Normalisierung?
- Logisches vs. physisches Backup?
- Restore-Prozess fur Backup-Typen?
- Drei Backup-Methoden?
- Schritte zur 3NF?
- Funktion von SELECT INTO OUTFILE?

**Referenzen:**

- MySQL Dump
- MariaDB Backup Tool

**Auftrag:**

- Datensicherung (50 Min, Team): Backup mit mysqldump, Analyse, Restore.
- Freifaecher (Einzelarbeit): Excel in 1NF, ERD, DDL, Import, Redundanzbereinigung, Export, Backup.



## Lektion vom 01.07.2025

**Wichtigste Themen:**

- Recap und Q&A zu Tag 7
- Normalisierung (1NF, 2NF)
- Logische und physische ER-Diagramme
- Datenimport mit LOAD DATA LOCAL INFILE
- Redundanzbereinigung
- Testdatengenerierung (290 Schuler-Datensatze)
- Opendata-Analyse
- Backup-Erstellung
- Vorbereitung auf LB2

**Kurze Zusammenfassung / Kernkonzepte:**

- Recap von Tag 7, gefolgt von Normalisierung von db_freifaecher in 1NF (atomare Felder) und 2NF (Teilschlusselabhangigkeiten). Logisches ERD mit Kardinalitaten und physisches ERD mit Constraints erstellt.
- Datenimport mit LOAD DATA LOCAL INFILE, 290 Testdatensatze generiert, Opendata (Steuerdaten, Bildungsdaten) analysiert und importiert, Backup mit mysqldump erstellt.

**Wichtige Befehle/Konzepte:**

- LOAD DATA LOCAL INFILE 'file.csv' INTO TABLE ... FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n' IGNORE 1 ROWS;
- SELECT col, COUNT(*) FROM table GROUP BY col HAVING COUNT(*) > 1;
- SELECT ... INTO OUTFILE 'file.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
- Testdatengenerierung: Zufallsdaten in Excel
- Backup: mysqldump -u root -p db_freifaecher > backup.sql

**Checkpoint-Fragen (Reflexion):**

- Unterschied 1NF vs. 2NF?
- Kardinalitaten im logischen ERD?
- Schritte beim Datenimport?
- Uberprufung von FK-Beziehungen?
- Bedeutung von _p25, _p50, _p75?
- Wichtigkeit eines Backups vor LB2?

**Referenzen:**

- Freifaecher Tipps
- Opendata Stadt Zurich
- Bildungsdaten BFS

**Auftrag:**

- Freifaecher (Einzelarbeit): Normalisierung, ERD, DDL, Import, Testdaten, Abfragen, Export, Backup.
- Opendata (Einzelarbeit): Analyse, Normalisierung, Import, Abfragen, Backup.



## Lektion vom 08.07.2025

**Wichtigste Themen:**

- Praxisarbeit zur LB2-Vorbereitung
- Repetition (Normalisierung, ERD, Constraints, Import, Abfragen)
- LB2-Leistungsbewertung (40%, 100 Minuten)
- Backup und Dokumentation

**Kurze Zusammenfassung / Kernkonzepte:**

- Fokus auf Praxisarbeit an db_freifaecher oder Opendata, Repetition von Normalisierung (1NF-3NF), ERD-Erstellung, Constraints, Datenimport und Abfragen.
- LB2-Prufung (100 Minuten) mit Datenmodellierung und SQL-Skripten durchgefuhrt, Ergebnisse dokumentiert, Backup erstellt.

**Wichtige Befehle/Konzepte:**

- Normalisierung: 1NF, 2NF, 3NF
- Constraints: NOT NULL, UNIQUE, FOREIGN KEY ... ON DELETE ...
- LOAD DATA LOCAL INFILE 'file.csv' INTO TABLE ... FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n' IGNORE 1 ROWS;
- SELECT ... FROM ... JOIN ... WHERE ... GROUP BY ... HAVING ... ORDER BY ...;
- SELECT ... INTO OUTFILE 'file.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
- Backup: mysqldump -u root -p db_name > backup.sql

**Checkpoint-Fragen (Reflexion):**

- Schritte der Normalisierung bis 3NF?
- Sicherstellung referenzieller Integritat?
- Rolle von LOAD DATA LOCAL INFILE?
- Validierung importierter Daten?
- Wichtigkeit der Skript-Dokumentation?
- Verwendete Backup-Methode?

**Referenzen:**

- MySQL Dump
- MariaDB Backup Tool
- Freifaecher Tipps
- Opendata Stadt Zurich
- Bildungsdaten BFS

**Auftrag:**

- Praxisarbeit (Einzelarbeit): Normalisierung, ERD, DDL/DML, Import, Abfragen, Backup.
- LB2 (100 Minuten): Datenmodellierung, SQL-Skripte, Analyse.
- Dokumentation: Ergebnisse im Lernportfolio, Backup erstellen.
