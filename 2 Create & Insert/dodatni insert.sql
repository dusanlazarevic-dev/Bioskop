/* prvi film */

INSERT INTO FILM 
VALUES ('Australija', 'Jazavac pred sudom: With the badger on trial', 85, 2020, 'Marc Windon');

INSERT INTO ZANROVI (ZANR, F_NAZIV, F_TRAJANJE, F_GODINA)
VALUES ('Istorijski', 'Jazavac pred sudom: With the badger on trial', 85, 2020);

INSERT INTO GLAVNE_ULOGE  (IME, F_NAZIV, F_TRAJANJE, F_GODINA)
VALUES ('Daniel Kovačević', 'Jazavac pred sudom: With the badger on trial', 85, 2020);

INSERT INTO GLAVNE_ULOGE  (IME, F_NAZIV, F_TRAJANJE, F_GODINA)
VALUES ('Daniel Kovačević', 'Jazavac pred sudom: With the badger on trial', 85, 2020);

INSERT INTO GLAVNE_ULOGE  (IME, F_NAZIV, F_TRAJANJE, F_GODINA)
VALUES ('Emma Gojković', 'Jazavac pred sudom: With the badger on trial', 85, 2020);

INSERT INTO GLAVNE_ULOGE  (IME, F_NAZIV, F_TRAJANJE, F_GODINA)
VALUES ('Vanja Nenadić', 'Jazavac pred sudom: With the badger on trial', 85, 2020);
	--termini
INSERT INTO TERMIN_PROJEKCIJE
VALUES ('moguce', TO_DATE('2021/05/11 19:00:00', 'yyyy/mm/dd hh24:mi:ss'), 3, 'Jazavac pred sudom: With the badger on trial', 85, 2020);
INSERT INTO TERMIN_PROJEKCIJE
VALUES ('moguce', TO_DATE('2021/05/13 12:00:00', 'yyyy/mm/dd hh24:mi:ss'), 2, 'Jazavac pred sudom: With the badger on trial', 85, 2020);
	--rezervacije
INSERT INTO REZERVACIJA
VALUES(1, 'Marko', 'Markovic', NULL, 'moguce', TO_DATE('2021/05/11 19:00:00', 'yyyy/mm/dd hh24:mi:ss'));

INSERT INTO ULAZNICA (ID, CENA, TIP, BROJ_REDA, BROJ_SEDISTA, BROJ_SALE, T_STATUS, T_DATUM_I_VREME, R_ID)
VALUES(1, 250, 'student', 5, 34, 2, 'moguce', TO_DATE('2021/05/11 19:00:00', 'yyyy/mm/dd hh24:mi:ss'), 1);

INSERT INTO ULAZNICA
VALUES(2, 200, 'penzioner', 5, 35, 2, 'moguce', TO_DATE('2021/05/11 19:00:00', 'yyyy/mm/dd hh24:mi:ss'), 1);

UPDATE  REZERVACIJA
SET CENA_REZERVACIJE = 
	(
	SELECT SUM(CENA)
	FROM ULAZNICA
	WHERE T_STATUS = 'moguce' AND T_DATUM_I_VREME = TO_DATE('2021/05/11 19:00:00', 'yyyy/mm/dd hh24:mi:ss') AND R_ID = 1
	)
WHERE R_ID = 1;

/* drugi film */

INSERT INTO FILM 
VALUES ('Nemačka', 'Nomadland', 107, 2020, 'Chloé Zhao');

INSERT INTO ZANROVI (ZANR, F_NAZIV, F_TRAJANJE, F_GODINA)
VALUES ('Drama', 'Nomadland', 107, 2020);

INSERT INTO GLAVNE_ULOGE  (IME, F_NAZIV, F_TRAJANJE, F_GODINA)
VALUES ('Frances McDormand', 'Nomadland', 107, 2020);

INSERT INTO GLAVNE_ULOGE  (IME, F_NAZIV, F_TRAJANJE, F_GODINA)
VALUES ('Gay DeForest', 'Nomadland', 107, 2020);

INSERT INTO GLAVNE_ULOGE  (IME, F_NAZIV, F_TRAJANJE, F_GODINA)
VALUES ('Patricia Grier', 'Nomadland', 107, 2020);

	--termini
INSERT INTO TERMIN_PROJEKCIJE
VALUES ('moguce', TO_DATE('2021/05/21 17:00:00', 'yyyy/mm/dd hh24:mi:ss'), 2, 'Nomadland', 107, 2020);
INSERT INTO TERMIN_PROJEKCIJE
VALUES ('moguce', TO_DATE('2021/05/23 12:00:00', 'yyyy/mm/dd hh24:mi:ss'), 3, 'Nomadland', 107, 2020);

/* treci film*/

INSERT INTO FILM 
VALUES ('SAD', 'Wrath of Man', 118, 2021, 'Guy Ritchie');

INSERT INTO ZANROVI (ZANR, F_NAZIV, F_TRAJANJE, F_GODINA)
VALUES ('Akcija', 'Wrath of Man', 118, 2021);
INSERT INTO ZANROVI (ZANR, F_NAZIV, F_TRAJANJE, F_GODINA)
VALUES ('Drama', 'Wrath of Man', 118, 2021);

INSERT INTO GLAVNE_ULOGE  (IME, F_NAZIV, F_TRAJANJE, F_GODINA)
VALUES ('Jason Statham', 'Wrath of Man', 118, 2021);

INSERT INTO GLAVNE_ULOGE  (IME, F_NAZIV, F_TRAJANJE, F_GODINA)
VALUES ('Scott Eastwood', 'Wrath of Man', 118, 2021);

INSERT INTO GLAVNE_ULOGE  (IME, F_NAZIV, F_TRAJANJE, F_GODINA)
VALUES ('Josh Hartnett', 'Wrath of Man', 118, 2021);

	--termini
INSERT INTO TERMIN_PROJEKCIJE
VALUES ('moguce', TO_DATE('2021/05/08 12:00:00', 'yyyy/mm/dd hh24:mi:ss'), 3, 'Wrath of Man', 118, 2021);
INSERT INTO TERMIN_PROJEKCIJE
VALUES ('moguce', TO_DATE('2021/05/08 18:00:00', 'yyyy/mm/dd hh24:mi:ss'), 2, 'Wrath of Man', 118, 2021);







