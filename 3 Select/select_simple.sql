/*svi filmovi koje je rezirao tarantino*/
	select * from film where ime_rezisera = 'Quentin Tarantino ';
/*svi filmovi koji traju izmedju 100 i 150 minuta*/
	select * from film where f_trajanje between 100 and 150;
/*rezervacije sortirane po ceni od najvece ka najmanjoj*/
	select * from rezervacija order by cena_rezervacije desc;
/*svi drama i scifi filmovi*/
	select * from zanrovi where zanr in ('Drama', 'SciFi');
/*svi filmovi gde je glavni glumac DiCaprio preko like*/
	select f_naziv from glavne_uloge where ime like  '%DiCaprio';
/* sve ulaznice koje imaj ucenu izmedju 150 i 280 dinara*/
	select * from ulaznica where cena > 150 and cena < 280;

/* sve projekcije u 3D kojima naziv filma pocinje sa P ili W*/
	select * from termin_projekcije where dimenzija = 3 and f_naziv like 'P%' or f_naziv like 'W%';
/* sve ulaznice gde je datum skoriji od 20/05/2021*/
	select * from ulaznica where t_datum_i_vreme > TO_DATE('2021/05/20 19:00:00', 'yyyy/mm/dd hh24:mi:ss');