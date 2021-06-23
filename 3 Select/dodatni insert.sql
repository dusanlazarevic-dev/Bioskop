/*dodatni podaci */

/* film sa dikaprijom 1*/

INSERT INTO FILM
VALUES('SAD', 'Inception', 148, 2020, 'Christopher Nolan ');

INSERT INTO ZANROVI (ZANR, F_NAZIV, F_TRAJANJE, F_GODINA)
VALUES ('SciFi', 'Inception', 148, 2020);

INSERT INTO GLAVNE_ULOGE  (IME, F_NAZIV, F_TRAJANJE, F_GODINA)
VALUES ('Leonardo DiCaprio', 'Inception', 148, 2020);

/* film sa dikaprijom 2*/

INSERT INTO FILM
VALUES('SAD', 'The Departed ', 151, 2021, 'Martin Scorsese ');

INSERT INTO ZANROVI (ZANR, F_NAZIV, F_TRAJANJE, F_GODINA)
VALUES ('Krimi','The Departed ', 151, 2021,);

INSERT INTO GLAVNE_ULOGE  (IME, F_NAZIV, F_TRAJANJE, F_GODINA)
VALUES ('Leonardo DiCaprio', 'The Departed ', 151, 2021,);


/* film sa dikaprijom 3*/

INSERT INTO FILM
VALUES('SAD', 'Django Unchained ', 165, 2020, 'Quentin Tarantino ');

INSERT INTO ZANROVI (ZANR, F_NAZIV, F_TRAJANJE, F_GODINA)
VALUES ('SciFi', 'Django Unchained ', 165, 2020);

INSERT INTO ZANROVI (ZANR, F_NAZIV, F_TRAJANJE, F_GODINA)
VALUES ('Western', 'Django Unchained ', 165, 2020);


INSERT INTO GLAVNE_ULOGE  (IME, F_NAZIV, F_TRAJANJE, F_GODINA)
VALUES ('Leonardo DiCaprio', 'Django Unchained ', 165, 2020);


/* film sa dikaprijom 4*/

INSERT INTO FILM
VALUES('SAD', 'Below the Line ', 74, 2020, ' John Larkin');

INSERT INTO ZANROVI (ZANR, F_NAZIV, F_TRAJANJE, F_GODINA)
VALUES ('Komedija',  'Below the Line ', 74, 2020);

INSERT INTO ZANROVI (ZANR, F_NAZIV, F_TRAJANJE, F_GODINA)
VALUES ('Western',  'Below the Line ', 74, 2020);


INSERT INTO GLAVNE_ULOGE  (IME, F_NAZIV, F_TRAJANJE, F_GODINA)
VALUES ('Leonardo DiCaprio',  'Below the Line ', 74, 2020);

/* film sa tarantinom 1*/
INSERT INTO FILM
VALUES('SAD', 'Pulp fiction', 122, 2020, 'Quentin Tarantino ');

INSERT INTO ZANROVI (ZANR, F_NAZIV, F_TRAJANJE, F_GODINA)
VALUES ('Drama', 'Pulp fiction', 122, 2020);



INSERT INTO GLAVNE_ULOGE  (IME, F_NAZIV, F_TRAJANJE, F_GODINA)
VALUES ('John Travolta', 'Pulp fiction', 122, 2020);
/*film sa tarantinom 2*/

INSERT INTO FILM
VALUES('SAD', 'Inglourious Basterds', 211, 2021, 'Quentin Tarantino ');

INSERT INTO ZANROVI (ZANR, F_NAZIV, F_TRAJANJE, F_GODINA)
VALUES ('Akcija', 'Inglourious Basterds', 211, 2021);


INSERT INTO GLAVNE_ULOGE  (IME, F_NAZIV, F_TRAJANJE, F_GODINA)
VALUES ('Brad Pitt', 'Pulp fiction', 122, 2020);

	--termini
INSERT INTO TERMIN_PROJEKCIJE
VALUES ('moguce', TO_DATE('2021/05/25 19:00:00', 'yyyy/mm/dd hh24:mi:ss'), 3,  'Pulp fiction', 122, 2020);
INSERT INTO TERMIN_PROJEKCIJE
VALUES ('moguce', TO_DATE('2021/05/23 12:00:00', 'yyyy/mm/dd hh24:mi:ss'), 3,  'Pulp fiction', 122, 2020);
	--rezervacije
INSERT INTO REZERVACIJA
VALUES(2, 'Pera', 'Peric', NULL, 'moguce', TO_DATE('2021/05/11 19:00:00', 'yyyy/mm/dd hh24:mi:ss'));

INSERT INTO ULAZNICA (ID, CENA, TIP, BROJ_REDA, BROJ_SEDISTA, BROJ_SALE, T_STATUS, T_DATUM_I_VREME, R_ID)
VALUES(3, 400, 'regular', 5, 34, 2, 'moguce', TO_DATE('2021/05/25 19:00:00', 'yyyy/mm/dd hh24:mi:ss'), 2);

INSERT INTO ULAZNICA
VALUES(4, 400, 'regular', 5, 35, 2, 'moguce', TO_DATE('2021/05/25 19:00:00', 'yyyy/mm/dd hh24:mi:ss'), 2);

UPDATE  REZERVACIJA
SET CENA_REZERVACIJE = 
	(
	SELECT SUM(CENA)
	FROM ULAZNICA
	WHERE T_STATUS = 'moguce' AND T_DATUM_I_VREME = TO_DATE('2021/05/25 19:00:00', 'yyyy/mm/dd hh24:mi:ss') AND R_ID = 2
	)
WHERE R_ID = 2;