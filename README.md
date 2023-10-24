# Operations-Research
For this task I had to create a model using linear programming in Julia in order to find the optimal solution to the following issues:
2. ZADATAK (Zadaci za samostalni rad)

Kompanija za proizvodnju slatkiša proizvodi visokokvalitetne čokoladne proizvode i namjerava pokrenuti proizvodnju dva nova slatkiša. Proizvodi se prave u tri različita odjeljka u kojem provode određeno vrijeme. Prvi proizvod zahtijeva 1 h proizvodnje u odjeljku 1 i 3 h proizvodnje u odjeljku 3 po jednom komadu. Drugi proizvod zahtijeva 1 h proizvodnje u odjeljku 2 i 2 h proizvodnje u odjeljku 3 po jedom komadu. Odjeljak 1 ima na raspolaganju 3 slobodna sata, odjeljak 2 ima 6 slobodnih sati i odjeljak 3 ima 18 slobodnih sati. Svi proizvedeni novi proizvodi mogu se prodati a cijena prvog iznosi 2 KM, a drugog 4 KM po komadu.	

Slatkiš 1 – x1 (2 KM): 
odjeljak 1 – 1h
odjeljak 3 – 3h

Slatkiš 2 – x2 (4 KM):
Odjeljak 2 – 1h
Odjeljak 3 – 2h

Odjeljak 1 – 3h na raspolaganju
Odjeljak 2 – 6h na raspolaganju
Odjeljak 3 – 18h na raspolaganju

arg max Z = 2*x1 + 4* x2
p.o.
x1 <= 3
x2 <= 6
3*x1 + 2* x2 <= 18
x1, x2 >= 0

Neka radionica namještaja želi da proizvodi stolice, stolove i ormare, koje ima namjeru prodavati po cijeni od 25 KM, 60 KM i 100 KM po komadu, respektivno. U proizvodnji će biti angažirana dva majstora: stolar i lakirer. Za izradu jedne stolice potreban je jedan sat rada stolara, jedan sat rada lakirera i 3 kg drveta. Izrada stola zahtijeva tri sata rada stolara, dva sata rada lakirera i 8 kg drveta, dok izrada ormara zahtijeva pet sati rada stolara, tri sata rada lakirera i 14 kg drveta. Naknada za rad stolara iznosi 10 KM po satu, a za lakirera 7 KM po satu rada. Drvo ne košta ništa, jer se nabavlja iz interne pilane. Plan je da se sedmično utroši najviše 100 kg drveta. Pored toga, stolar ne smije raditi više od 40 sati, a lakirer više od 30 sati sedmično. Napraviti optimalni sedmični plan proizvodnje koji će obezbijediti najveću zaradu (pri čemu pod zaradom smatramo ukupan prihod od prodaje umanjen za neophodne troškove).

Stolica - x1 (25 KM):
Stolar – 1h (10 KM)
Lakirer – 1h (7 KM)
Drvo – 3 kg

Stol – x2  (60 KM):
Stolar – 3h (30 KM)
Lakirer – 2h (14 KM)
Drvo – 8 kg

Ormar – x3 (100 KM):
Stolar – 5h (50 KM)
Lakirer – 3h (21 KM)
Drvo – 14 kg

arg maks Z = 25*x1 + 60*x2 + 100* x3 -17* x1 – 44* x2 – 71* x3 = 8*x1 +16*x2 + 29*x3
p.o.
3*x1 + 8*x2 + 14*x3 <= 100
x1 + 3*x2 + 5*x3 <= 40
x1 + 2*x2 + 3*x3 <= 30
x1, x2, x3 >= 0

Za pravilnu ishranu potrebno je unositi minimalno po 10 jedinica hranljivih komponeneta A i B. Trenutno je moguće nabaviti samo dva prehrambena proizvoda P1 i P2. Proizvod P1 sadrži po dvije jedinice komponente A i B po jednoj količinskoj jedinici proizvoda P1. Proizvod P2 sadrži četiri jedinice komponente A i šest jedinica komponente B po jednoj količinskoj jedinici proizvoda P2. Jedinične cijena proizvoda su tri novčane jedinice za P1 i pet novčanih jedinica za P2. Potrebno je napraviti plan ishrane, odnosno nabavke prehrambenih proizvoda, koji će uz najmanje troškove zadovoljiti specificirane potrebe.

Proizvod P1 - x1 (3 KM):
Komponenta A – 2
Komponenta B – 2

Proizvod P – x2  (5 KM):
Komponenta A – 4
Komponenta B – 6

arg maks Z = 3*x1 + 5*x2 
p.o.
2*x1 + 4*x2 >= 10
2*x1 + 6*x2 >= 10
x1, x2 >= 0
