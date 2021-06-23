/* indeks koji indeksira rezervaciju po imenu i ceni*/
create index rezervacija_ime_cena_idx
on rezervacija (ime desc, cena_rezervacije desc);

/* indeks koji indeksira ulaznice po ceni i tipu*/
create index ulaznica_cena_tip_idx
on ulaznica (cena desc, tip desc);