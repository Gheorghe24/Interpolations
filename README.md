# TEMA 2
--------

# Interpolare Proximală
-----------------------

Proximal_2x2
--------------
Aflu numărul de puncte cu ajutorul parametrului STEP, dat ca parametru
Imi declar o variabila care ma va ajuta sa parcurg pixelii și sa le asociez exact 
valoarea vecinului cel mai apropiat
Astfel, pentru acest caz eu am considerat ca imaginea mea e împărțită în 4 subspații
(4 pătrate care au aceleși valori).
De aceea parcurg toți pixelii și ma intreb daca sunt în primul pătrat(stanga sus) 
sau în celelalte 3 și îi asociez pixelului unul din cele 4 puncte cunoscute

Proximal_2x2RGB
-------------------
Extrag cele 3 canale
Aplic funcția de mai sus pentru acestea
Concatenez cele 3 canale la o nouă imagine

Proximal_coef(Functia auxiliara folosita pentru rotatie)
-------------------
Am calculat matricea A la fel ca în enunțul temei
Am calculat vectorul b
Și acum trebuie sa rezolv sistemul A*x = b
Pentru asta ma folosesc de 2 funcții din cadrul temei 1 pentru a calcula inversa lui A
După ce am aflat-o rezultatul este A^-1 *b

PR_Inv
-----------
Am scris destule detalii chiar in functia data.
Astfel, Prima data descompun matricea A cu algoritmul descompunerii QR al lui Gramschimdt.
Dupa ce am aflat matricea ortogonala Q si matricea superior triunghiulara R,
folosesc o functie care imi calculeaza elementele din matricea inversata prin
backwardsubstitution. Din proprietatile matricilor de mai sus ajung la formula 
R * x(i) = Q transpus * e_i (e_i este coloana i din matricea identitate)
x(i) este coloana din matricea inversata.
In cazul meu B o sa fie inversa matricei A.
Deci Q*R * [x1,x2, ..., xn] = In ([e1,e2,e3 ...])
inmultesc la stanga cu matricea transpusa
R*x_i = Q^t *e_i si asa fac backwards substitution in matricea superior triunghiulara.
Algoritmul l-am luat din laborator si l-am implementat intr-o functie conform formulei.
In functie am scris cine este fiecare :
% rezolvarea unui sistem superior triunghiular
% U-matricea superior triunghiulara
% b este partea dreapta a ecuatiei
% n - dimensiunea matricei 
% x - vectorul solutie 
% U x = b

Proximal_Resize
---------------
Calculez factorii de scalare în funcție de dimensiunile date ca parametru. 
Deoarece încep parcurgerea de la 0, coeficientul nu va fi sx va fi q-1/n-1
Am definit de la început inversa matricei de transformare,știind ca aceasta este una diagonală
Parcurg fiecare pixel, aplic transformarea inversa asupra celor 2 indici 
și pun în matricea rezultat în sistemul de coordonate 1,n
Proximal_ResizeRGB
La fel ca toate funcțiile de tipul acesta, extrag cele 3 canale
Aplic funcția pentru fiecare din acestea și apoi le concatenez la imaginea finală

Proximal_rotate
---------------
Calculez cosinus si sinus de rotation_angle
Calculez matricea de transformare și inversa acesteia(observ că e de fapt matricea transpusă)
Parcurg fiecare pixel din imagine și iarăși aplic transformata acestor 2 indici pentru a afla xp si yp din imaginea initiala
Aflu cele 4 puncte care inconjoara xp,yp din imaginea initiala
Ma intreb daca nu cumva am iesit din spatiul imaginii si calculez coeficientii cu ajutorul fuctiei auxiliare 
Calculez valoarea interpolata a pixelului cu ajutorul formulei 
a0 + a1x + a2y + a3xy si aproximez pentru a iesi solutia exacta

Proximal_rotateRGB
------------------
Aceeasi procedura ca in cazul functiilor de acest tip

# Interpolare Bicubică
----------------------

Bicubic_coef
-------------
Calculez matricea de derivate cu ajutorul matricilor primite ca parametru si coeficientilor
conform enuntului din tema
De asemenea stiu ca imaginea este reprezentata cu y,(pozitiile in aceasta ordine)
Calculez matricile cu care o sa inmultesc la stanga si la dreapta pe cea precedenta 
pentru a rezulta coeficientii
Toate matricile mele sunt convertite la double

Precalc_d
-------------
Cu ajutorul celor 3 functii care imi aproximeaza derivata in functie de x,y,xy calculez matricile de derivate pentru toti pixelii din imagine
La fel cum am precizat mai sus(y e indicile care reprezinta linia in imagine,invers fata 
de cum eram obisnuit)
Doar aplic functiile create pentru fiecare matrice de derivate dar totodata atrag atentia la limitele in care am voie sa calculez aceste derivate
Astfel, pentru matricea Ix derivatele pe prima si ultima coloana raman 0
Pentru Iy, prima si ultima linie raman 0
Pentru Ixy, ambele linii si coloane raman 0

Bicubic_resize
------------------
La fel ca in cazul algoritmului proximal, calculez factorii de scalare si inversa transformarii
Aplic transformarea inversa asupra celor 2 indici si calculez xp,yp din imaginea initiala
Gasesc cele 4 puncte care inconjoara pixelii xp,yp
si vad daca nu cumva punctele sunt cele de frontiera
Calculez coeficientii de interpolare
Trec coordonatele in patratul unitate
apoi calculez valoarea proximala in aceste puncte
Am calculat valoarea prin cele 2 sume de coeficienti si indici din patratul unitate

Bicubic_resizeRGB
------------------
Aceeasi procedura ca in cazul functiilor de acest tip
