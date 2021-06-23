/*ukupna zarada od ulaznica po filmu*/

select film.f_naziv, sum(ulaznica.cena)
from ulaznica inner join termin_projekcije 
on ulaznica.t_status = termin_projekcije.t_status
and ulaznica.t_datum_i_vreme = termin_projekcije.t_datum_i_vreme

inner join film 
on termin_projekcije.f_naziv = film.f_naziv 
and termin_projekcije.f_trajanje = film.f_trajanje
and termin_projekcije.f_godina = film.f_godina

group by film.f_naziv;

/* sve ulaznice sa filmom gde glumi Dikaprio 'minus' oni filmovi koji nemaju rezervisane ulaznice*/

		
select  film.f_naziv, glavne_uloge.ime, ulaznica.*
from ulaznica

full outer join termin_projekcije 
on ulaznica.t_status = termin_projekcije.t_status
and ulaznica.t_datum_i_vreme = termin_projekcije.t_datum_i_vreme

full outer join film 
on termin_projekcije.f_naziv = film.f_naziv 
and termin_projekcije.f_trajanje = film.f_trajanje
and termin_projekcije.f_godina = film.f_godina

full outer join glavne_uloge
on film.f_naziv = glavne_uloge.f_naziv
and film.f_trajanje = glavne_uloge.f_trajanje
and film.f_godina = glavne_uloge.f_godina

where glavne_uloge.ime = 'Leonardo DiCaprio'

minus

select  film.f_naziv, glavne_uloge.ime, ulaznica.*
from ulaznica

full outer join termin_projekcije 
on ulaznica.t_status = termin_projekcije.t_status
and ulaznica.t_datum_i_vreme = termin_projekcije.t_datum_i_vreme

full outer join film 
on termin_projekcije.f_naziv = film.f_naziv 
and termin_projekcije.f_trajanje = film.f_trajanje
and termin_projekcije.f_godina = film.f_godina

full outer join glavne_uloge
on film.f_naziv = glavne_uloge.f_naziv
and film.f_trajanje = glavne_uloge.f_trajanje
and film.f_godina = glavne_uloge.f_godina

where ulaznica.cena is  null;


/* svi filmovi gde je reziser tarantino bez onih (left join) oni koji nemaju termin projekcije*/
select  film.*
from termin_projekcije 
left join film
on termin_projekcije.f_naziv = film.f_naziv 
and termin_projekcije.f_trajanje = film.f_trajanje
and termin_projekcije.f_godina = film.f_godina
where film.ime_rezisera like 'Quentin Tarantino%';/*mora ovako zbog whitespace na kraju stringa*/


/* minimalno trajanje filma gde glumi dikaprio */
select * from 
    (select glavne_uloge.ime, min(f_trajanje) 
    from glavne_uloge
    
    group by glavne_uloge.ime
    
    )
where ime = 'Leonardo DiCaprio';


/* SciFi filmovi koji traju duze od 89 minuta i akcioni koji traju duze od 120 */
select * from zanrovi
where f_trajanje > 89 and zanr = 'SciFi'

union

select * from zanrovi
where f_trajanje > 120 and zanr = 'Akcija';


/* broj ulaznica po tipu ulaznice */
select tip, count(*)
from ulaznica
group by tip;


/* svi filmovi gde glumi Dikaprio i svi filmovi koje je Tarantino rezirao*/
select film.f_naziv from film
inner join glavne_uloge
on film.f_naziv = glavne_uloge.f_naziv
and film.f_trajanje = glavne_uloge.f_trajanje
and film.f_godina = glavne_uloge.f_godina
where ime = 'Leonardo DiCaprio'

union 

select film.f_naziv from film
where film.ime_rezisera like 'Quentin Tarantino%';


/* sve rezervacije gde je cena veca od 500 bez onih koje je rezervisao Marko*/
	
select * from rezervacija
where cena_rezervacije > 500

minus 

select * from rezervacija 
where  ime = 'Marko';

/*svi 3D projektovani filmovi gde cena rezervacije iznosi vise od 500*/
select film.f_naziv, rezervacija.cena_rezervacije
from rezervacija inner join termin_projekcije 
on rezervacija.t_status = termin_projekcije.t_status
and rezervacija.t_datum_i_vreme = termin_projekcije.t_datum_i_vreme

inner join film 
on termin_projekcije.f_naziv = film.f_naziv 
and termin_projekcije.f_trajanje = film.f_trajanje
and termin_projekcije.f_godina = film.f_godina

where termin_projekcije.dimenzija = 3 and  rezervacija.cena_rezervacije > 500 ;


/* svi filmovi koji pocinju sa Inc gde je trajanje izmedju TOLKO i TOLKO bez onih gde glumi DIkaprio*/
	
select * from film
inner join glavne_uloge
on film.f_naziv = glavne_uloge.f_naziv
and film.f_trajanje = glavne_uloge.f_trajanje
and film.f_godina = glavne_uloge.f_godina
where  film.f_trajanje > 120 and   ime = 'Leonardo DiCaprio' and film.f_naziv like 'Inc%' ;

