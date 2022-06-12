function [Ix, Iy, Ixy] = precalc_d(I)
    % =========================================================================
    % Prealculeaza matricile Ix, Iy si Ixy ce contin derivatele dx, dy, dxy ale 
    % imaginii I pentru fiecare pixel al acesteia.
    % =========================================================================
    
    % Obtinem dimensiunea imaginii.
    [m n nr_colors] = size(I);
    
    % TODO: Tranforma matricea I in double.
    I = double(I);
    Ixy = zeros(m,n);
    Ix = zeros(m,n);
    Iy = zeros(m,n);
    Ix = double(Ix);
    Iy = double(Iy);
    Ixy = double(Ixy);
    
    % TODO: Calculeaza matricea cu derivate fata de x Ix.
    %prima si ultima coloana e 0
    for i = 1:m
      for j = 1:n
        if j == 1 || j == n
        Ix(i,j) = 0;
        else
        Ix(i,j) = fx(I,j,i);
        endif
      endfor
    endfor
    %prima si ultima linie e 0
    for i = 1:m
      for j = 1:n
        if i == 1 || i == m
        Iy(i,j) = 0;
        else
        Iy(i,j) = fy(I,j,i);
        endif
      endfor
    endfor
   %ambele linii si coloane sunt 0
    for i = 2:m-1
      for j = 2:n-1
        Ixy(i,j) = fxy(I,j,i);
      endfor
    endfor
   

endfunction
