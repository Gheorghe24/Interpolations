function A = bicubic_coef(f, Ix, Iy, Ixy, x1, y1, x2, y2)
    % =========================================================================
    % Calculeaz? coeficien?ii de Interpolare Bicubic? pentru 4 puncte al?turate
    % =========================================================================

    % TODO: Calculeaz? matricile intermediare.
    Mf = zeros(4);
    f = double(f);
    %y prima pos, x a 2-a pos
    %am pozitiile invers fata de matricea din tema 
    %Astfel, f(0,1) o sa devina f(1,0) din enunt
    %Ma folosesc de matricile derivate date ca parametri
    %Imaginea noastra e reprezentata cu y,x
    Mf = double(Mf);
    Mf = [f(y1,x1) f(y2,x1) Iy(y1,x1) Iy(y2,x1);
    f(y1,x2) f(y2,x2) Iy(y1,x2) Iy(y2,x2); 
    Ix(y1,x1) Ix(y2,x1) Ixy(y1,x1) Ixy(y2,x1);
    Ix(y1,x2) Ix(y2,x2) Ixy(y1,x2) Ixy(y2,x2)];
    
     A = zeros(4);
     %matricea cu care o sa inmultesc la stanga si transpusa ei
     %pentru a rezulta coeficientii de interpolare
     M1 = [1 0 0 0;
          0 0 1 0;
          -3 3 -2 -1;
          2 -2 1 1];  
    % TODO: Converte?te matricile intermediare la double.
    
    M1 = double(M1);
    A = double(A);
    A = M1*Mf*M1';
    
    % TODO: Calculeaz? matricea final?.

endfunction