# Filtriranje kolona
# Znak * označuje sve kolone
select * from naziv_tablice;

# nazivi kolona
select upisati nazive kolona from naziv_tablice;

# konstanta
select naziv, 'Osijek' as grad from smjer;

# izraz
select naziv, length(naziv) as ukupnoznakova 
from smjer;


select concat(ime, left(ime,1), 'AAA',prezime)
as xxx from osoba;


# filtriranje redova
select * from tablica where sifra=2;

# operatori uspoređivanja
# = < > <= >= != (<>)

select * from naziv_tablice where naziv_reda = broj reda koji želiš ispisati;


# logički operatori
# and or not
select  from osoba
where sifra=2 or sifra=3;

select ime, prezime from osoba
where sifra>=2 and sifra<=3;

# izlistaj mi sve osoba kojima šifra nije 2 ili 3
select ime, prezime from osoba
where sifra!=2 and sifra!=3;

select ime, prezime from osoba
where not (sifra=2 or sifra=3);

# ostali operatori
# like

select * from osoba 
where ime like 'I%'; # % je zamjena za bilo koji niz znakova

select * from osoba 
where prezime not like '%ć'; 

# kako google pretražuje
select * from osoba
where ime like '%o%';

#between

select * from osoba
where sifra>=5 and sifra<=10;

select * from osoba
where sifra between 5 and 10;

# in
select * from osoba where 
sifra=3 or sifra = 8 or sifra=14;

select * from osoba where
sifra in (3,8,14);

# is null, is not null

select * from osoba;

# sebi postavite OIB (http://oib.itcentrala.com/oib-generator/)
update osoba set oib='45467312111' where sifra=1;






