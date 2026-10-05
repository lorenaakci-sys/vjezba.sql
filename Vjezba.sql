use AdventureWorksOBP

SELECT * FROM Proizvod
SELECT * FROM Drzava
SELECT * FROM Grad

SELECT * FROM Kupac
WHERE Ime = 'Lili'

SELECT * FROM Kupac
WHERE Prezime = 'Lee'

SELECT * FROM Kupac
WHERE Ime = 'Ana' AND Prezime = 'Diaz'

SELECT * FROM Kupac
JOIN Grad
    ON Kupac.GradID = Grad.IDGrad
WHERE Grad.Naziv = 'Osijek' 

SELECT * FROM Kupac
WHERE Ime IN ('Ana', 'Tamara')

SELECT * FROM Kupac
JOIN Grad ON Kupac.GradID = Grad.IDGrad
WHERE Ime IN ('Ana', 'Tamara') AND Grad.Naziv = 'Osijek'

SELECT * FROM Kupac
JOIN Grad ON Kupac.GradID = Grad.IDGrad
WHERE Ime IN ('Ana', 'Tamara') AND NOT Grad.Naziv = 'Osijek'

SELECT * FROM Stavka
WHERE UkupnaCijena < 2

SELECT * FROM Stavka
WHERE UkupnaCijena >= 23000

SELECT * FROM Stavka
WHERE Kolicina BETWEEN 20 AND 22

SELECT * FROM Proizvod
WHERE Boja IN ('Plava', 'Crvena')

SELECT * FROM Proizvod
WHERE Boja IS NULL

SELECT * FROM Proizvod
WHERE Boja IN (NULL, 'Srebrna')

SELECT * FROM Proizvod
WHERE Boja IS NOT NULL

SELECT * FROM Proizvod
WHERE Boja IS NOT NULL AND CijenaBezPDV < 25

SELECT Ime, Prezime FROM Kupac
WHERE Ime LIKE 'Ki%'

SELECT Ime AS Ime, Prezime AS Prezime FROM Kupac
WHERE IDKupac BETWEEN 15530 AND 15535

SELECT Prezime + ' ' + Ime AS PunoIme FROM Kupac

SELECT Ime, Prezime, Prezime + ' ' + Ime AS PunoIme, Email FROM Kupac

SELECT DISTINCT Ime FROM Kupac

SELECT DISTINCT Prezime FROM Kupac

SELECT DISTINCT Ime, Prezime FROM Kupac

SELECT Ime, Prezime FROM Kupac
WHERE Ime LIKE 'Kat%'
ORDER BY Ime ASC, Prezime ASC

SELECT Ime, Prezime FROM Kupac
WHERE Ime LIKE 'Kat%'
ORDER BY Ime ASC, Prezime DESC

SELECT Ime AS Ime, Prezime AS Prezime FROM Kupac
WHERE IDKupac BETWEEN 18150 AND 18155
ORDER BY Prezime DESC

SELECT Prezime + ' ' + Ime AS PunoIme FROM Kupac
ORDER BY PunoIme ASC

SELECT Prezime + ' ' + Ime AS PunoIme FROM Kupac
ORDER BY PunoIme DESC

SELECT TOP (5) * FROM Kupac

SELECT TOP (5) Ime, Prezime FROM Kupac
ORDER BY IDKupac DESC

SELECT TOP (50) PERCENT * FROM Kupac
WHERE Ime = 'Jack'

SELECT TOP (50) PERCENT Prezime FROM Kupac
WHERE Ime = 'Jack'

