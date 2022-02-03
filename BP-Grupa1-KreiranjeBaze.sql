--kreiranje baze podataka
CREATE DATABASE Bankomat
--prebacivanje sa mastera na nasu bazu
USE Bankomat
--kreiranje tabele Drzava
CREATE TABLE Drzava(
DrzavaID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
Naziv_Drzave NVARCHAR(100) UNIQUE NOT NULL
);
--kreiranje table Grad
CREATE TABLE Grad(
GradID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
Ime_grada NVARCHAR(150) NOT NULL,
Postanski_broj int NOT NULL,
DrzavaID int NOT NULL REFERENCES Drzava(DrzavaID)
);
--kreiranje tabele Zanimanje
CREATE TABLE Zanimanje(
ZanimanjeID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
Zanimanje NVARCHAR(50) UNIQUE NOT NULL
);
--kreiranje table VrstaRacuna
CREATE TABLE VrstaRacuna(
VrstaRacunaID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
VrstaRacuna NVARCHAR(20) UNIQUE NOT NULL
);
--kreiranje tabele StatusRacuna
CREATE TABLE StatusRacuna(
StatusRacunaID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
StatusRacuna NVARCHAR(20) UNIQUE NOT NULL
);
--kreiranje tabele StatusBankomata
CREATE TABLE StatusBankomata(
StatusBankomataID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
StatusBankomata NVARCHAR(20) UNIQUE NOT NULL
);
--kreiranje tabele VrstaUsluge
CREATE TABLE VrstaUsluge(
VrstaUslugeID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
VrstaUsluge NVARCHAR(20) UNIQUE NOT NULL
);
--kreiranje tabele Korisnik
CREATE TABLE Korisnik(
KorisnikID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
Ime NVARCHAR(200) NOT NULL,
Prezime NVARCHAR(200) NOT NULL,
ImeOca NVARCHAR(200) NOT NULL,
JMBG bigint UNIQUE NOT NULL,
ZanimanjeID int NOT NULL REFERENCES Zanimanje(ZanimanjeID),
AdresaStanovanja NVARCHAR(250) NOT NULL,
GradID int NOT NULL REFERENCES Grad(GradID),
DatumRodjenja DATE NOT NULL,
KontaktTelefon NVARCHAR(100) NOT NULL,
Email NVARCHAR(100) NULL
);
--kreiranje tabele Bankomat
CREATE TABLE Bankomat(
BankomatID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
GradID int NOT NULL REFERENCES Grad(GradID),
Adresa NVARCHAR(150) NOT NULL,
StanjeBankomata int NOT NULL,
StatusBankomataID int NOT NULL REFERENCES StatusBankomata(StatusBankomataID)
);
--kreiranje tabele Racun
CREATE TABLE Racun(
BrojRacuna int PRIMARY KEY IDENTITY(1,1) NOT NULL,
KorisnikID int NOT NULL REFERENCES Korisnik(KorisnikID),
VrstaRacunaID int NOT NULL REFERENCES VrstaRacuna(VrstaRacunaID),
StanjeRacuna int NOT NULL,
Pin int NOT NULL,
DnevniLimit int NOT NULL,
StatusRacunaID int NOT NULL REFERENCES StatusRacuna(StatusRacunaID)
);
--kreiranje tabele Transakcija
CREATE TABLE Transakcija(
TransakcijaID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
BrojRacuna int NOT NULL REFERENCES Racun(BrojRacuna),
VrstaUslugeID int NOT NULL REFERENCES VrstaUsluge(VrstaUslugeID),
Vrijednost int NOT NULL,
DatumIVrijeme DATETIME NOT NULL DEFAULT (getdate()),
BankomatID int NOT NULL REFERENCES Bankomat(BankomatID)
);
--kreiranje table Transfer(Trans jer je sistemski zauzeta rijec Transfer)
CREATE TABLE Trans(
TransferID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
BrojRacunaPosiljaoca int NOT NULL REFERENCES Racun(BrojRacuna),
BrojRacunaPrimaoca int NOT NULL REFERENCES Racun(BrojRacuna),
VrstaUslugeID int NOT NULL REFERENCES Vrstausluge(VrstaUslugeID),
Vrijednost int NOT NULL,
DatumIVrijeme DATETIME NOT NULL DEFAULT (getdate()),
BankomatID int NOT NULL REFERENCES Bankomat(BankomatID)
);