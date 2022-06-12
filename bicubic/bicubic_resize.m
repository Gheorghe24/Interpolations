function R = bicubic_resize(I, p, q)
    % =========================================================================
    % Se scaleaza imaginea folosind algoritmul de Interpolare Bicubic?.
    % Transforma imaginea I din dimensiune m x n in dimensiune p x q.
    % =========================================================================

    [m n nr_colors] = size(I);
    I =  double(I);
    % TODO: Initializeaza matricea finala drept o matrice nula.
    R = zeros(m,n);
    R = double(R);
    % daca imaginea e alb negru, ignora
    if nr_colors > 1
        R = -1;
        return
    endif

    % Obs:
    % Atunci cand se aplica o scalare, punctul (0, 0) al imaginii nu se va deplasa.
    % In Octave, pixelii imaginilor sunt indexati de la 1 la n.
    % Daca se lucreaza in indici de la 1 la n si se inmulteste x si y cu s_x
    % respectiv s_y, atunci originea imaginii se va deplasa de la (1, 1) la (sx, sy)!
    % De aceea, trebuie lucrat cu indici in intervalul [0, n - 1]!

    
    % TODO: Calculeaza factorii de scalare
    % Obs: Daca se lucreaza cu indici in intervalul [0, n - 1], ultimul pixel
    % al imaginii se va deplasa de la (m - 1, n - 1) la (p, q).
    % s_x nu va fi q ./ n
    sx = (q-1)/(n-1);
    sy = (p-1)/(m-1);
    % TODO: Defineste matricea de transformare pentru redimensionare.

    % TODO: Calculeaza inversa transformarii.
    %Am calculat de la început inversa
    InvT = zeros(2);
    InvT = double(InvT);
    InvT(1,1) = 1/sx;
    InvT(2,2) = 1/sy;
    % TODO: Precalculeaza derivatele.
    [Ix,Iy,Ixy] = precalc_d(I);
    % Parcurge fiecare pixel din imagine.
    for y = 0 : p - 1
        for x = 0 : q - 1
            % TODO: Aplica transformarea inversa asupra (x, y) si calculeaza x_p si y_p
            % din spatiul imaginii initiale.
            % TODO: Trece (xp, yp) din sistemul de coordonate 0, n - 1 in
            % sistemul de coordonate 1, n pentru a aplica interpolarea.
           
            yp = (y*InvT(2,2)) ;
            xp = (x*InvT(1,1)) ;
            xp++;
            yp++;
            % TODO: Gaseste cele 4 puncte ce inconjoara punctul x, y
            x1 = floor(xp);
            x2 = floor(xp) + 1;
            y1 = floor(yp);
            y2 = floor(yp) + 1;
            if x2 > n
              x2 -=3;
            endif
            if y2 > m
              y2 -=3;
            endif
           
            % TODO: Calculeaza coeficientii de interpolare A.
            A = bicubic_coef(I, Ix, Iy, Ixy, x1, y1, x2, y2);
            % TODO: Trece coordonatele (xp, yp) in patratul unitate, scazand (x1, y1).
            xp = xp-x1;
            yp = yp-y1;
            % TODO: Calculeaza valoarea interpolata a pixelului (x, y).
            % Obs: Pentru scrierea in imagine, x si y sunt in coordonate de
            % la 0 la n - 1 si trebuie aduse in coordonate de la 1 la n.
            var = 0;
            for i = 0:3
              for j = 0:3
                var = var + A(i+1,j+1) * xp^i * yp^j;
              endfor
            endfor
            R(y+1,x+1) = var;
           
        endfor
    endfor

    R = uint8(R);
    % TODO: Transforma matricea rezultata în uint8 pentru a fi o imagine valida.
endfunction





