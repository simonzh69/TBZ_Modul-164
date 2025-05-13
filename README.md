# 📚 m164 Lernportfolio

## Überblick
Willkommen zu meinem Lernportfolio für das Modul m164 (Datenbanken) an der TBZ! 🏫  
Hier dokumentiere ich meinen Fortschritt beim Erstellen von *relationalen Datenmodellen*, Arbeiten mit MySQL/MariaDB und Anwenden von *Normalisierung*. Der **Tourenplaner** ist eine Übungsaufgabe, die wir heute begonnen haben, aber das Portfolio wird auch andere Themen der nächsten Wochen abdecken.

### 🎯 Modulziele
- Ein *logisches Datenmodell* erstellen.
- Datenbank in MySQL umsetzen.
- Datenintegrität mit *Normalisierung* sichern.

### 📅 Struktur
Das Portfolio ist nach Tagen sortiert. Jeder Tag zeigt, was wir gelernt und gemacht haben.

---

## 🗓️ Tag 1 - 13. Mai 2025

### Was haben wir gemacht? 🚀
Heute war der Einstieg in m164! Wir haben das Modul und seine Ziele kennengelernt. Die Übungsaufgabe **Tourenplaner** wurde vorgestellt: Eine Datenbank für Touren, Fahrer, Fahrzeuge, Disponenten und Stopps. Wir haben uns mit diesen Themen beschäftigt:
- *Logisches Datenmodell* verstehen.
- *Netzwerkbeziehungen* analysieren.
- *Normalisierung* aus Modul 162 wiederholen.

### 📊 Logisches Datenmodell
Das *logische Datenmodell* des Tourenplaners organisiert die Daten in Tabellen. Es wurde in `Tourenplaner.sql` und im *ERD* (`Tourenplaner.mwb`) erstellt.

| **Tabelle**   | **Wichtige Felder**                              |
|---------------|-------------------------------------------------|
| **Fahrer**    | `FahrerID` (PK), `Name`, `Fuehrerscheinklasse` |
| **Disponent** | `DisponentID` (PK), `Name`                     |
| **Fahrzeug**  | `FahrzeugID` (PK), `Kennzeichen`, `Kapazitaet` |
| **Tour**      | `TourID` (PK), `Datum`, `Startzeit`, `FahrerID` (FK), `DisponentID` (FK), `FahrzeugID` (FK) |
| **Stopp**     | `StoppID` (PK), `Adresse`, `Reihenfolge`, `TourID` (FK) |

**SQL-Beispiel** (Tabelle `Tour`):
```sql
CREATE TABLE Tour (
  TourID INT PRIMARY KEY AUTO_INCREMENT,
  Datum DATE NOT NULL,
  Startzeit TIME NOT NULL,
  FahrerID INT NOT NULL,
  FOREIGN KEY (FahrerID) REFERENCES Fahrer(FahrerID)
);
```

### 🔗 Netzwerkbeziehungen
*Netzwerkbeziehungen* zeigen, wie Tabellen verbunden sind:
- **Fahrer → Tour (1:n)**: Ein Fahrer fährt mehrere Touren.
- **Disponent → Tour (1:n)**: Ein Disponent betreut mehrere Touren.
- **Fahrzeug → Tour (1:n)**: Ein Fahrzeug wird für mehrere Touren genutzt.
- **Tour → Stopp (1:n)**: Eine Tour hat mehrere Stopps.

Das *ERD* in `Tourenplaner.mwb` zeigt diese Verbindungen visuell.

### 🛠️ Normalisierung
Die Datenbank ist in der **3. Normalform (3NF)**, um Fehler zu vermeiden:
- **1NF**: Keine Listen, jede Tabelle hat einen *Primärschlüssel*.  
  *Beispiel*: Stopps in eigene `Stopp`-Tabelle aufgeteilt.
- **2NF**: Daten hängen nur vom ganzen *Primärschlüssel* ab.  
  *Beispiel*: `Kapazitaet` gehört nur zu `FahrzeugID`.
- **3NF**: Keine indirekten Abhängigkeiten.  
  *Beispiel*: `Adresse` gehört nur zu `StoppID`.

### ✅ Ergebnisse
- *Logisches Datenmodell* verstanden.
- *Netzwerkbeziehungen* des Tourenplaners analysiert.
- *Normalisierung* auf die Übungsaufgabe angewendet.

### 📂 Dateien
- `Tourenplaner.sql`: SQL für Tabellen.
- `Tourenplaner.mwb`: *ERD* in MySQL Workbench.
- `Tourenplaner_normalisiert.xlsx`: Normale Daten.
- `Tourenplaner_daten.xlsx`: Rohdaten.

---

## 🔮 Ausblick
Die nächsten Wochen bringen mehr Themen wie Daten einfügen und prüfen. Jeder Tag wird hier dokumentiert! 📝

## ✍️ Autor
- **Michael Kellenberger**
- **Modul m164, TBZ**
- **13. Mai 2025**
