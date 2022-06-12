function B = PR_Inv(A)
	% Functia care calculeaza inversa matricii A folosind factorizari Gram-Schmidt
	% Prima data descompun matricea A cu algoritmul descompunerii QR al lui Gramschimdt
  % Dupa ce am aflat matricea ortogonala Q si matricea superior triunghiulara R,
  % folosesc o functie care imi calculeaza elementele din matricea inversata prin
  % backwardsubstitution. Din proprietatile matricilor de mai sus ajung la formula 
  % R * x(i) = Q transpus * e_i (e_i este coloana i din matricea identitate)
  % x(i) este coloana din matricea inversata
[n n] = size(A);
Q = zeros(n); %matricea ortogonala
R = zeros(n); %matricea superior triunghiulara
% Ma folosesc chiar de viitoarele matrici Q si R pentru a nu declara prea multe valori 
%calculez primul termen cu ajutorul matricei A si construiesc vectorii cu care o sa imi calculez norma
%si totodata acestia fac parte din urmatoarele matrici descompuse
R(1, 1) = norm(A(:, 1));
Q(:, 1) = A(:, 1)/R(1,1);
%incep de la cel de-al doilea termen
for j = 2:n
    Q(:,j)=A(:,j);
    for i = 1:j-1
      Q(:,j)=Q(:,j)-A(:,j)'*Q(:,i)*Q(:,i);
      R(i,j)=A(:,j)'*Q(:,i);
    endfor
    R(j,j) = norm(Q(:, j));
    Q(:, j) = Q(:, j)/norm(Q(:, j));
endfor
% inv(A) = inv(R) * Q'
% R * x(i) = Q' * e_i
for i = 1:n
B(:,i) = backSubstitution(R,Q'*eye(n)(:,i),n);
endfor
endfunction

