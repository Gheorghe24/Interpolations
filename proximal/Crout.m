function [L, U] = Crout(A)
    n = length(A);
    L = zeros(n);
    U = eye(n);
    
    for p = 1:n
        L(p:n, p) = A(p:n, p) - L(p:n, 1:p-1) * U(1:p-1, p);
        U(p, p+1:n) = (A(p, p+1:n) - L(p, 1:p-1) * U(1:p-1, p+1:n))/ L(p, p);
    endfor
    
       disp(L);
       disp(U);
    
endfunction