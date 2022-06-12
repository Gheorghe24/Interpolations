function R = proximal_rotate(I, rotation_angle)
    % =========================================================================
    % Roteste imaginea alb-negru I de dimensiune m x n cu unghiul rotation_angle,
    % aplicând Interpolare Proximala.
    % rotation_angle este exprimat în radiani.
    % =========================================================================
    [m n nr_colors] = size(I);
    
    % Se converteste imaginea de intrare la alb-negru, daca este cazul.
    if nr_colors > 1
        R = -1;
        return
    endif

    % Obs:
    % Atunci când se aplica o scalare, punctul (0, 0) al imaginii nu se va deplasa.
    % În Octave, pixelii imaginilor sunt indexati de la 1 la n.
    % Daca se lucreaza în indici de la 1 la n si se inmultesc x si y cu s_x respectiv s_y,
    % atunci originea imaginii se va deplasa de la (1, 1) la (sx, sy)!
    % De aceea, trebuie lucrat cu indici în intervalul [0, n - 1].

    % TODO: Calculeaza cosinus si sinus de rotation_angle.
    cs = cos(rotation_angle);
    sn = sin(rotation_angle);
    % TODO: Initializeaza matricea finala.
    R = zeros(m,n);
    % TODO: Calculeaza matricea de transformare.
    Trot = [cs -sn;sn cs];
    
    % TODO: Inverseaza matricea de transformare, FOLOSIND doar functii predefinite!
    Tinv = Trot';
    %inversa matricei este matricea transpusa
    

    % Se parcurge fiecare pixel din imagine.
    for y = 0 : m - 1
        for x = 0 : n - 1
            % TODO: Aplica transformarea inversa asupra (x, y) si calculeaza x_p si y_p
            % din spatiul imaginii initiale.
          xp = (y)*Tinv(1,1) + x*Tinv(2,1) + 1; %cos - sin
          yp = (x)*Tinv(2,2) + y*Tinv(1,2) + 1; %cos + sin
           % TODO: Trece (xp, yp) din sistemul de coordonate [0, n - 1] în
            % sistemul de coordonate [1, n] pentru a aplica interpolarea.
           
           % TODO: Afla punctele ce înconjoara(xp, yp).
           x1 = floor(xp);
           x2 = ceil(xp);
           y1 = floor(yp);
           y2 = ceil(yp);
           
         if xp>=1 && yp>=1 && xp<=m-1 && yp<=n-1
           % TODO: Calculeaza coeficientii de interpolare notati cu a
            % Obs: Se poate folosi o functie auxiliara în care sau se calculeze coeficientii,
            % conform formulei.  
             a = proximal_coef(I,x1,y1,x2,y2);
             R(y+1,x+1)= ceil(a(1) + a(2)*(xp) + a(3)*(yp) + a(4)*(xp)*(yp));      
         endif
       % TODO: Daca xp sau yp se afla în exteriorul imaginii,
            % se pune un pixel negru si se trece mai departe.
      R(1,1) = I(1,1);

        endfor
    endfor
    
    % TODO: Transforma matricea rezultata în uint8 pentru a fi o imagine valida.
    R = uint8(R);
endfunction
