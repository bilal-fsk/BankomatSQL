--selekti sa svim atributima ili samo odabranim
SELECT * FROM Korisnik

SELECT 
Ime, 
Prezime, 
AdresaStanovanja, 
ISNULL(Email, 'Email adresa nije upisana') AS Email
FROM Korisnik

SELECT TOP 3 Ime, Prezime 
FROM Korisnik

SELECT TOP 20 PERCENT BrojRacuna, Vrijednost, DatumIVrijeme
FROM Transakcija

--ORDER BY

SELECT Ime_Grada, Postanski_broj
FROM Grad
ORDER BY Ime_Grada ASC

SELECT Ime_Grada, Postanski_broj
FROM Grad
ORDER BY Ime_Grada DESC

SELECT Ime + ' ' + Prezime AS ImePrezime, AdresaStanovanja AS Adresa, KontaktTelefon AS BrojTelefona, Email AS 'E-mail'
FROM Korisnik
ORDER BY Ime DESC

--WHERE
SELECT Ime_grada AS Grad, Postanski_broj AS PoštanskiBroj
FROM Grad 
WHERE DrzavaID = 1

SELECT BankomatID, Adresa, StanjeBankomata, GradID
FROM Bankomat
WHERE GradID=5

SELECT TransakcijaID, Vrijednost, DatumIVrijeme, BankomatID, BrojRacuna
FROM Transakcija
WHERE (BrojRacuna = 1 OR BrojRacuna = 2) AND Vrijednost>30
ORDER BY Vrijednost DESC


SELECT TransakcijaID, Vrijednost, DatumIVrijeme, BankomatID, BrojRacuna
FROM Transakcija
WHERE DatumIVrijeme BETWEEN '2021-01-01' AND DATEADD(DAY, -8, GETDATE())

SELECT Ime + ' ' + Prezime AS ImePrezime, Email
FROM Korisnik
WHERE Email LIKE '%@outlook.com'

SELECT Ime + ' ' + Prezime AS ImePrezime, Email
FROM Korisnik
WHERE Email IS NULL

SELECT KorisnikID, BrojRacuna, DnevniLimit
FROM Racun
WHERE DnevniLimit IS NOT NULL

--agregatne funkcije

SELECT SUM(Vrijednost) AS VrijednostSvihTransfera
FROM Trans
WHERE DatumIVrijeme BETWEEN DATEADD(DAY, -8, GETDATE()) AND GETDATE()

SELECT * FROM Trans

SELECT MIN(Vrijednost) AS MinimalnaTransakcija, MAX(Vrijednost) AS MaksimalnaTransakcija
FROM Transakcija


SELECT COUNT(*) AS BrojTransakcija, BankomatID
FROM Transakcija
GROUP BY BankomatID

SELECT * FROM Transakcija
WHERE BankomatID=1

SELECT AVG(Vrijednost) AS ProsjecnaIsplataSaBankomata
FROM Transakcija
INNER JOIN VrstaUsluge ON Transakcija.VrstaUslugeID = VrstaUsluge.VrstaUslugeID
WHERE Transakcija.VrstaUslugeID IN (
    SELECT VrstaUsluge.VrstaUslugeID
    FROM VrstaUsluge
    WHERE VrstaUsluge.VrstaUsluge = 'Isplata sa računa'
)


SELECT Grad.Ime_grada AS Grad, Grad.Postanski_Broj AS PostanskiBroj, Drzava.Naziv_Drzave AS NazivDrzave
FROM Grad
INNER JOIN Drzava ON Grad.DrzavaID = Drzava.DrzavaID


SELECT Transakcija.*, Bankomat.BankomatID 
FROM Transakcija 
RIGHT JOIN Bankomat ON Transakcija.BankomatID = Bankomat.BankomatID


--potrebe izlaganja cemo dodat korisnika koji nema racuna nikako, kako bi prikazali lijevo vanjsko spajanje

INSERT INTO Korisnik(Ime, Prezime, ImeOca, JMBG, ZanimanjeID, AdresaStanovanja, GradID, DatumRodjenja, KontaktTelefon)
VALUES ('Mesa', 'Selimović', 'Alija', 2604910921345, 1, 'Bjelave 10', 1, '1910-04-26', '+3876000000')

SELECT Korisnik.Ime, Korisnik.Prezime, Racun.BrojRacuna
FROM Korisnik
LEFT OUTER JOIN Racun ON Racun.KorisnikID = Korisnik.KorisnikID


SELECT Korisnik.Ime, Korisnik.Prezime, Korisnik.AdresaStanovanja, Grad.Ime_grada AS Grad, Grad.Postanski_broj, Drzava.Naziv_Drzave AS Drzava
FROM Korisnik
INNER JOIN Grad ON Korisnik.GradID = Grad.GradID
INNER JOIN Drzava ON Grad.DrzavaID = Drzava.DrzavaID

SELECT Trans.BrojRacunaPosiljaoca, Trans.BrojRacunaPrimaoca, Trans.Vrijednost, Trans.DatumIVrijeme, Grad.Ime_grada AS Grad, Drzava.Naziv_Drzave AS Drzava
FROM Trans
INNER JOIN Bankomat ON Trans.BankomatID = Bankomat.BankomatID
INNER JOIN Grad ON Bankomat.GradID = Grad.GradID
INNER JOIN Drzava ON Grad.DrzavaID = Drzava.DrzavaID

SELECT Korisnik.Ime, Korisnik.Prezime, Korisnik.AdresaStanovanja, Korisnik.KontaktTelefon, Racun.BrojRacuna
FROM Korisnik
INNER JOIN Racun ON Korisnik.KorisnikID = Racun.KorisnikID
WHERE Korisnik.KorisnikID=1


SELECT Korisnik.Ime, Korisnik.Prezime, Korisnik.AdresaStanovanja, Korisnik.KontaktTelefon
FROM Korisnik
WHERE Korisnik.KorisnikID=1


SELECT TABLE_NAME AS 'Ime tabele' FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE'


SELECT COUNT (*) AS 'Broj gradova po drzavi', Naziv_Drzave
FROM Grad
INNER JOIN Drzava ON Grad.DrzavaID = Drzava.DrzavaID
GROUP BY Naziv_Drzave


SELECT Racun.BrojRacuna, Racun.StanjeRacuna, Korisnik.Ime, Korisnik.Prezime, Grad.Ime_grada AS Grad, Zanimanje.Zanimanje
FROM Racun
INNER JOIN Korisnik ON Racun.KorisnikID = Korisnik.KorisnikID
INNER JOIN Grad ON Korisnik.GradID = Grad.GradID
INNER JOIN Zanimanje ON Korisnik.ZanimanjeID = Zanimanje.ZanimanjeID
WHERE Korisnik.ZanimanjeID IN (
    SELECT ZanimanjeID FROM Zanimanje WHERE Zanimanje='Student'
)

SELECT Transakcija.TransakcijaID, Transakcija.Vrijednost, Transakcija.DatumIVrijeme, Transakcija.BankomatID, Bankomat.Adresa
FROM Transakcija
INNER JOIN Bankomat ON Transakcija.BankomatID = Bankomat.BankomatID
WHERE Bankomat.BankomatID IN (
    SELECT Bankomat.BankomatID
    FROM Bankomat
    INNER JOIN Grad ON Bankomat.GradID = Grad.GradID
    WHERE Grad.GradID IN(
        SELECT Grad.GradID 
        FROM Grad
        WHERE Grad.Ime_grada = 'Sarajevo'
    )
)


SELECT Bankomat.BankomatID
FROM Transakcija
FULL OUTER JOIN Bankomat ON Transakcija.BankomatID = Bankomat.BankomatID
WHERE TransakcijaID IS NULL








