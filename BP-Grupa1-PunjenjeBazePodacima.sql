--Popunjavanje tabele Drzava
INSERT INTO Drzava(Naziv_Drzave)
VALUES ('Bosna i Hercegovina')

INSERT INTO Drzava(Naziv_Drzave)
VALUES ('Hrvatska')

INSERT INTO Drzava(Naziv_Drzave)
VALUES ('Srbija')

INSERT INTO Drzava(Naziv_Drzave)
VALUES ('Crna Gora')

INSERT INTO Drzava(Naziv_Drzave)
VALUES ('Slovenija')

INSERT INTO Drzava(Naziv_Drzave)
VALUES ('Albanija')

SELECT * FROM Drzava 
ORDER BY DrzavaID ASC

--Popunjavanje tabele Grad
INSERT INTO Grad(Ime_grada, Postanski_broj, DrzavaID)
VALUES ('Sarajevo', 71000, 1)

INSERT INTO Grad(Ime_grada, Postanski_broj, DrzavaID)
VALUES ('Goražde', 73000, 1)

INSERT INTO Grad(Ime_grada, Postanski_broj, DrzavaID)
VALUES ('Zagreb', 10000, 2)

INSERT INTO Grad(Ime_grada, Postanski_broj, DrzavaID)
VALUES ('Split', 21000, 2)

INSERT INTO Grad(Ime_grada, Postanski_broj, DrzavaID)
VALUES ('Beograd', 11000, 3)

INSERT INTO Grad(Ime_grada, Postanski_broj, DrzavaID)
VALUES ('Novi Sad', 21000, 3)

INSERT INTO Grad(Ime_grada, Postanski_broj, DrzavaID)
VALUES ('Podgorica', 81000, 4)

INSERT INTO Grad(Ime_grada, Postanski_broj, DrzavaID)
VALUES ('Sutomore', 85355, 4)

INSERT INTO Grad(Ime_grada, Postanski_broj, DrzavaID)
VALUES ('Ljubljana', 1000, 5)

INSERT INTO Grad(Ime_grada, Postanski_broj, DrzavaID)
VALUES ('Maribor', 2000, 5)

INSERT INTO Grad(Ime_grada, Postanski_broj, DrzavaID)
VALUES ('Tirana', 1000, 6)

INSERT INTO Grad(Ime_grada, Postanski_broj, DrzavaID)
VALUES ('Drač', 2001, 6)


SELECT * FROM Drzava 
ORDER BY DrzavaID ASC

SELECT * FROM Grad 
ORDER BY GradID ASC

--Popunjavanje tabele Zanimanje

INSERT INTO Zanimanje(Zanimanje)
VALUES ('Zaposlen')

INSERT INTO Zanimanje(Zanimanje)
VALUES ('Nezaposlen')

INSERT INTO Zanimanje(Zanimanje)
VALUES ('Student')

INSERT INTO Zanimanje(Zanimanje)
VALUES ('Penzioner')

SELECT * FROM Zanimanje

--Popunjavanje tabele VrstaRacuna

INSERT INTO VrstaRacuna(VrstaRacuna)
VALUES ('Tekući')

INSERT INTO VrstaRacuna(VrstaRacuna)
VALUES ('Devizni')

INSERT INTO VrstaRacuna(VrstaRacuna)
VALUES ('Studentski')

SELECT * FROM VrstaRacuna

--Popunjavanje tabele StatusRacuna

INSERT INTO StatusRacuna(StatusRacuna)
VALUES ('Aktivan')

INSERT INTO StatusRacuna(StatusRacuna)
VALUES ('Blokiran')

SELECT * FROM StatusRacuna

--Popunjavanje tabele StatusBankomata

INSERT INTO StatusBankomata(StatusBankomata)
VALUES ('U funkciji')

INSERT INTO StatusBankomata(StatusBankomata)
VALUES ('Nije u funkciji')

INSERT INTO StatusBankomata(StatusBankomata)
VALUES ('Potrebno dopuniti')

SELECT * FROM StatusBankomata

--Popunjavanje tabele VrstaUsluge

INSERT INTO VrstaUsluge(VrstaUsluge)
VALUES ('Isplata sa računa')

INSERT INTO VrstaUsluge(VrstaUsluge)
VALUES ('Uplata na račun')

INSERT INTO VrstaUsluge(VrstaUsluge)
VALUES ('Transfer')

SELECT * FROM VrstaUsluge

--Popunjavanje tabele Korisnik 

INSERT INTO Korisnik(Ime, Prezime, ImeOca, JMBG, ZanimanjeID, AdresaStanovanja, GradID, DatumRodjenja, KontaktTelefon, Email)
VALUES ('Hrvoje', 'Petrovic', 'Stipe', 1204965921345, 1, 'Vrbik 15', 3, '1965-04-12', '+3851225883', 'hpetrovic@gmail.com')

INSERT INTO Korisnik(Ime, Prezime, ImeOca, JMBG, ZanimanjeID, AdresaStanovanja, GradID, DatumRodjenja, KontaktTelefon, Email)
VALUES ('Avdo', 'Avdić', 'Sudo', 1010985921345, 1, 'Kranjčevićeva 10', 1, '1985-10-10', '+38761000000', 'aavdic@gmail.com')

INSERT INTO Korisnik(Ime, Prezime, ImeOca, JMBG, ZanimanjeID, AdresaStanovanja, GradID, DatumRodjenja, KontaktTelefon, Email)
VALUES ('Marko', 'Marković', 'Saša', 1206997921345, 2, 'Sarajevska 33', 5, '1997-06-11', '+3815584421', 'mmarkovic@outlook.com')

INSERT INTO Korisnik(Ime, Prezime, ImeOca, JMBG, ZanimanjeID, AdresaStanovanja, GradID, DatumRodjenja, KontaktTelefon, Email)
VALUES ('Dejan', 'Bakočević', 'Ognjen', 0503980921345, 2, 'Romanovih bb', 7, '1980-03-05', '+3824125528', 'dejanbakocevic@outlook.com')

INSERT INTO Korisnik(Ime, Prezime, ImeOca, JMBG, ZanimanjeID, AdresaStanovanja, GradID, DatumRodjenja, KontaktTelefon, Email)
VALUES ('Ana', 'Anić', 'Janez', 0512999921345, 3, 'Roška Cesta bb', 9, '1999-12-05', '+3861763255', 'anaanic@gmail.com') 

INSERT INTO Korisnik(Ime, Prezime, ImeOca, JMBG, ZanimanjeID, AdresaStanovanja, GradID, DatumRodjenja, KontaktTelefon)
VALUES ('Azem', 'Ismaili', 'Besar', 0204955921345, 4, 'Skender Luarasi 48', 11, '1955-04-02', '+3554444221') 

SELECT * FROM Grad
SELECT * FROM Zanimanje
SELECT * FROM Korisnik

--Popunjavanje tabele Bankomat

INSERT INTO Bankomat(GradID, Adresa, StanjeBankomata, StatusBankomataID)
VALUES (1, 'Marsala Tita 15', 10000, 1)

INSERT INTO Bankomat(GradID, Adresa, StanjeBankomata, StatusBankomataID)
VALUES (1, 'Zmaja od Bosne 8', 8000, 1)

INSERT INTO Bankomat(GradID, Adresa, StanjeBankomata, StatusBankomataID)
VALUES (2, 'Marsala Tita 12', 0, 3)

INSERT INTO Bankomat(GradID, Adresa, StanjeBankomata, StatusBankomataID)
VALUES (2, 'Zdravstvenih radnika', 0, 2)

INSERT INTO Bankomat(GradID, Adresa, StanjeBankomata, StatusBankomataID)
VALUES (3, 'Branimirova bb', 12000, 1)

INSERT INTO Bankomat(GradID, Adresa, StanjeBankomata, StatusBankomataID)
VALUES (3, 'Savska 53', 5000, 1)

INSERT INTO Bankomat(GradID, Adresa, StanjeBankomata, StatusBankomataID)
VALUES (3, 'Sarajevska cesta bb', 0, 2)

INSERT INTO Bankomat(GradID, Adresa, StanjeBankomata, StatusBankomataID)
VALUES (4, 'Bihaćka ulica 35', 3000, 1)

INSERT INTO Bankomat(GradID, Adresa, StanjeBankomata, StatusBankomataID)
VALUES (5, 'Radnička 83', 13000, 1)

INSERT INTO Bankomat(GradID, Adresa, StanjeBankomata, StatusBankomataID)
VALUES (5, 'Dostojevskog bb', 0, 3)

INSERT INTO Bankomat(GradID, Adresa, StanjeBankomata, StatusBankomataID)
VALUES (5, 'Dunavska 53', 0, 3)

INSERT INTO Bankomat(GradID, Adresa, StanjeBankomata, StatusBankomataID)
VALUES (5, 'Humska bb', 0, 2)

INSERT INTO Bankomat(GradID, Adresa, StanjeBankomata, StatusBankomataID)
VALUES (5, 'Evropska 22', 11000, 1)

INSERT INTO Bankomat(GradID, Adresa, StanjeBankomata, StatusBankomataID)
VALUES (6, 'Vladimira Perića Valtera', 7000, 1)

INSERT INTO Bankomat(GradID, Adresa, StanjeBankomata, StatusBankomataID)
VALUES (7, 'Kozaračka bb', 3000, 1)

INSERT INTO Bankomat(GradID, Adresa, StanjeBankomata, StatusBankomataID)
VALUES (7, 'Cvijetna 71', 0, 3)

INSERT INTO Bankomat(GradID, Adresa, StanjeBankomata, StatusBankomataID)
VALUES (8, 'Kosovska bb', 0, 3)

INSERT INTO Bankomat(GradID, Adresa, StanjeBankomata, StatusBankomataID)
VALUES (8, 'Cara Lazara 25', 6000, 1)

INSERT INTO Bankomat(GradID, Adresa, StanjeBankomata, StatusBankomataID)
VALUES (9, 'Trg mladih bb', 7000, 1)

INSERT INTO Bankomat(GradID, Adresa, StanjeBankomata, StatusBankomataID)
VALUES (9, 'Moskovska ulica 28', 0, 2)

INSERT INTO Bankomat(GradID, Adresa, StanjeBankomata, StatusBankomataID)
VALUES (10, 'Titova cesta 62', 1000, 3)

INSERT INTO Bankomat(GradID, Adresa, StanjeBankomata, StatusBankomataID)
VALUES (10, 'Jenkova ulica bb', 9000, 1)

INSERT INTO Bankomat(GradID, Adresa, StanjeBankomata, StatusBankomataID)
VALUES (11, 'Unaza 38', 4000, 1)

INSERT INTO Bankomat(GradID, Adresa, StanjeBankomata, StatusBankomataID)
VALUES (11, 'Rruga Studenti bb', 0, 3)

INSERT INTO Bankomat(GradID, Adresa, StanjeBankomata, StatusBankomataID)
VALUES (12, 'Rruga Adria 32', 12000, 1)

INSERT INTO Bankomat(GradID, Adresa, StanjeBankomata, StatusBankomataID)
VALUES (12, 'Rruga Currila 12', 0, 3)



SELECT * FROM StatusBankomata
SELECT * FROM Grad
SELECT * FROM Bankomat


--Popunjavanje tabele Racun

INSERT INTO Racun(KorisnikID, VrstaRacunaID, StanjeRacuna, Pin, DnevniLimit, StatusRacunaID)
VALUES(1, 1, 2000, 1234, 100, 1)

INSERT INTO Racun(KorisnikID, VrstaRacunaID, StanjeRacuna, Pin, DnevniLimit, StatusRacunaID)
VALUES(1, 2, 1280, 7632, 30, 1)

INSERT INTO Racun(KorisnikID, VrstaRacunaID, StanjeRacuna, Pin, DnevniLimit, StatusRacunaID)
VALUES(2, 2, 2380, 1111, 1000, 1)

INSERT INTO Racun(KorisnikID, VrstaRacunaID, StanjeRacuna, Pin, DnevniLimit, StatusRacunaID)
VALUES(3, 1, 0, 0000, 20, 2)

INSERT INTO Racun(KorisnikID, VrstaRacunaID, StanjeRacuna, Pin, DnevniLimit, StatusRacunaID)
VALUES(4, 1, 300, 2222, 40, 2)

INSERT INTO Racun(KorisnikID, VrstaRacunaID, StanjeRacuna, Pin, DnevniLimit, StatusRacunaID)
VALUES(5, 3, 150, 3333, 20, 1)

INSERT INTO Racun(KorisnikID, VrstaRacunaID, StanjeRacuna, Pin, DnevniLimit, StatusRacunaID)
VALUES(6, 2, 250, 0000, 20, 1)



SELECT * FROM Korisnik
SELECT * FROM VrstaRacuna
SELECT * FROM StatusRacuna

SELECT * FROM Racun


--Popunjavanje tabele Transakcija

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(1, 1, 100, 1)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(1, 1, 100, 5)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(1, 2, 50, 5)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(1, 1, 80, 2)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(1, 1, 30, 5)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(1, 2, 40, 3)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(2, 1, 20, 15)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(2, 1, 30, 7)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(2, 2, 50, 3)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(2, 2, 70, 3)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(2, 1, 30, 18)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(3, 1, 300, 9)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(3, 1, 50, 9)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(3, 2, 100, 13)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(3, 2, 20, 13)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(3, 1, 1000, 10)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(3, 1, 900, 11)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(4, 1, 10, 20)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(4, 2, 50, 4)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(4, 2, 20, 1)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(4, 1, 20, 14)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(4, 2, 20, 21)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(4, 1, 20, 14)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(5, 1, 40, 10)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(5, 1, 20, 10)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(5, 2, 30, 10)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(5, 1, 30, 15)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(5, 2, 40, 10)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(6, 1, 20, 12)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(6, 1, 20, 12)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(6, 2, 70, 12)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(6, 1, 10, 17)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(6, 2, 40, 8)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(6, 2, 20, 2)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(6, 1, 20, 8)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(7, 1, 20, 10)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(7, 1, 20, 7)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(7, 2, 40, 5)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(7, 1, 10, 5)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(7, 2, 20, 1)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(7, 2, 100, 1)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(7, 1, 20, 18)

INSERT INTO Transakcija(BrojRacuna, VrstaUslugeID, Vrijednost, DatumIVrijeme, BankomatID)
VALUES(7, 1, 20, '2022-01-01 15:15:30.000', 18)



SELECT * FROM Racun
SELECT * FROM VrstaUsluge
SELECT * FROM Bankomat

SELECT * FROM Transakcija


--Popunjavanje tabele Transfer(Trans)

INSERT INTO Trans(BrojRacunaPosiljaoca, BrojRacunaPrimaoca, VrstaUslugeID, Vrijednost, DatumIVrijeme, BankomatID)
VALUES(1, 5, 3, 150, '2021-12-23 13:12:15.150', 5)

INSERT INTO Trans(BrojRacunaPosiljaoca, BrojRacunaPrimaoca, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(3, 4, 3, 50, 12)

INSERT INTO Trans(BrojRacunaPosiljaoca, BrojRacunaPrimaoca, VrstaUslugeID, Vrijednost, DatumIVrijeme, BankomatID)
VALUES(2, 7, 3, 30, '2022-01-03 11:05:11.250', 8)

INSERT INTO Trans(BrojRacunaPosiljaoca, BrojRacunaPrimaoca, VrstaUslugeID, Vrijednost, DatumIVrijeme, BankomatID)
VALUES(4, 6, 3, 80, '2021-12-30 14:55:31.250', 4)

INSERT INTO Trans(BrojRacunaPosiljaoca, BrojRacunaPrimaoca, VrstaUslugeID, Vrijednost, BankomatID)
VALUES(6, 2, 3, 25, 18)

INSERT INTO Trans(BrojRacunaPosiljaoca, BrojRacunaPrimaoca, VrstaUslugeID, Vrijednost, DatumIVrijeme, BankomatID)
VALUES(3, 6, 3, 500, '2021-12-31 09:52:25.130', 1)


SELECT * FROM Trans

SELECT * FROM Korisnik 
WHERE Email IS NULL


SELECT * FROM Racun

SELECT r.BrojRacuna, r.Pin, k.KorisnikID, k.Ime
FROM Racun r, Korisnik k
WHERE r.Pin=1234 AND r.BrojRacuna=1 AND r.KorisnikID=k.KorisnikID


SELECT Racun.BrojRacuna, Racun.Pin, Racun.KorisnikID, Korisnik.Ime
FROM Racun
INNER JOIN Korisnik ON Racun.KorisnikID = Korisnik.KorisnikID 
WHERE Racun.BrojRacuna=1

SELECT * FROM Trans


SELECT Korisnik.Ime, Korisnik.Prezime, Korisnik.AdresaStanovanja, Korisnik.KontaktTelefon
FROM Korisnik
WHERE Korisnik.KorisnikID=1 

SELECT Transakcija.Vrijednost, Transakcija.DatumIVrijeme, Grad.Ime_grada
FROM Transakcija
JOIN Bankomat
ON Transakcija.BankomatID = Bankomat.BankomatID
JOIN Grad
ON Bankomat.GradID = Grad.GradID
WHERE Transakcija.BrojRacuna = 1 AND Transakcija.VrstaUslugeID = 2


SELECT * FROM Trans


SELECT Trans.BrojRacunaPosiljaoca, Trans.BrojRacunaPrimaoca, Trans.Vrijednost, Trans.DatumIVrijeme, Grad.Ime_grada
FROM Trans
JOIN Bankomat
ON Trans.BankomatID = Bankomat.BankomatID
JOIN Grad
ON Bankomat.GradID = Grad.GradID
WHERE Trans.BrojRacunaPosiljaoca = 1 OR Trans.BrojRacunaPrimaoca = 1
















