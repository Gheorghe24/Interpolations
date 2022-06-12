function x=backSubstitution(U,b,n)
% Urmatoarea functie calculeaza valorile unui sistem de ecuatii pe baza substitutiei inverse
% Astfel ma ajuta la rezolvarea unui sistem superior triunghiular
% U este matricea superior triunghiulara(upper triunghiular)
% b este partea dreapta a ecuatiei
% n este dimensiunea matricei 
% x este vectorul solutie trimis din functie
% solutie a sistemului de tipul U x = b
% Aplic formula din laborator si verificata din surse
x=zeros(n,1);
%Incep de la ultimul termen din sistemul de ecuatii si ma folosesc intotdeauna de cei anteriori
%in timp ce o parcurg pana la primul element
%Functia returneaza un vector solutie care va deveni mai apoi coloana matricei 
%inverse din functia PR_inv
for j=n:-1:1
    x(j)=b(j)/U(j,j);
    b(1:j-1) = b(1:j-1)-U(1:j-1,j)*x(j);
endfor
endfunction