
/*terminu projekcije koji se odrzava 2021/05/21 u 17:00:00
, gde naziv zemlje filma pocinje sa 'Nem' prepravlja dimenziju u 3 (3D) */


update termin_projekcije
set dimenzija = 3
where t_datum_i_vreme = TO_DATE('2021/05/21 17:00:00', 'yyyy/mm/dd hh24:mi:ss') and f_naziv in (select f_naziv from film where zemlja like 'Nem%');

/*svim  western filmovima koje je rezirao Quentin Tarantino menja 
zanr iz Western u Thriller*/

update zanrovi
set zanr = 'Thriller'
where zanr = 'Western' and f_naziv in (
	select f_naziv from film where ime_rezisera like 'Quentin Tarantino%'
);

/*uklanja glavne uloge za filmove kojima naziv zemlje pocinje sa Nem*/
delete from glavne_uloge
where f_naziv in (select f_naziv from film where zemlja like 'Nem%');

/*uklanja ulaznice koje su rezervisane na ime koje pocnje sa Marko*/
delete from ulaznica
where r_id in (select from rezervacija where ime like 'Marko%');

