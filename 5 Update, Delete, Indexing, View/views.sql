/* pogled pokazuje ukupnu zaradu od ulaznica po filmu */
create view zarada_po_filmu (ime_filma, zarada)
as select film.f_naziv, sum(ulaznica.cena)
from ulaznica inner join termin_projekcije 
on ulaznica.t_status = termin_projekcije.t_status
and ulaznica.t_datum_i_vreme = termin_projekcije.t_datum_i_vreme

inner join film 
on termin_projekcije.f_naziv = film.f_naziv 
and termin_projekcije.f_trajanje = film.f_trajanje
and termin_projekcije.f_godina = film.f_godina

group by film.f_naziv;
;

/* pogled pokazuje minimalno vreme trajanja filma po glumcima */

create view minimalno_trajanje_glumci (ime_glumca, trajanje_filma)
as select glavne_uloge.ime, min(f_trajanje) 
    from glavne_uloge
    
    group by glavne_uloge.ime;