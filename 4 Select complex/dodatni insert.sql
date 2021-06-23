

/* novi film sa dikaprijom */

INSERT INTO FILM
VALUES('Nemacka', 'Incredible', 175, 2020, 'Spielberg');

INSERT INTO ZANROVI (ZANR, F_NAZIV, F_TRAJANJE, F_GODINA)
VALUES ('Krimi','Incredible', 175, 2020);

INSERT INTO GLAVNE_ULOGE  (IME, F_NAZIV, F_TRAJANJE, F_GODINA)
VALUES ('Leonardo DiCaprio', 'Incredible', 175, 2020);

--termini
INSERT INTO TERMIN_PROJEKCIJE
VALUES ('moguce', TO_DATE('2021/05/20 13:00:00', 'yyyy/mm/dd hh24:mi:ss'), 3, 'Incredible', 175, 2020);
INSERT INTO TERMIN_PROJEKCIJE
VALUES ('moguce', TO_DATE('2021/05/20 11:00:00', 'yyyy/mm/dd hh24:mi:ss'), 2,  'Incredible', 175, 2020);
	--rezervacije
INSERT INTO REZERVACIJA
VALUES(3, 'Zika', 'Zikic', NULL, 'moguce', TO_DATE('2021/05/20 11:00:00', 'yyyy/mm/dd hh24:mi:ss'));

INSERT INTO ULAZNICA (ID, CENA, TIP, BROJ_REDA, BROJ_SEDISTA, BROJ_SALE, T_STATUS, T_DATUM_I_VREME, R_ID)
VALUES(5, 400, 'regular', 8, 31, 2, 'moguce', TO_DATE('2021/05/20 11:00:00', 'yyyy/mm/dd hh24:mi:ss'), 3);

INSERT INTO ULAZNICA
VALUES(6, 700, 'student', 4, 25, 2, 'moguce', TO_DATE('2021/05/20 11:00:00', 'yyyy/mm/dd hh24:mi:ss'), 3);

UPDATE  REZERVACIJA
SET CENA_REZERVACIJE = 
	(
	SELECT SUM(CENA)
	FROM ULAZNICA
	WHERE T_STATUS = 'moguce' AND T_DATUM_I_VREME = TO_DATE('2021/05/20 11:00:00', 'yyyy/mm/dd hh24:mi:ss') AND R_ID = 3
	)
WHERE R_ID = 3;

	