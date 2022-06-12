function R = proximal_resize(I, p, q)
    % =========================================================================
    % Se scaleaza imaginea folosind algoritmul de Interpolare Proximala.
    % Transforma imaginea I din dimensiune m x n în dimensiune p x q.
    % =========================================================================
    [m n nr_colors] = size(I);

    % Se converteste imaginea de intrare la alb-negru, daca este cazul.
    if nr_colors > 1
        R = -1;
        return
    endif
    % TODO: Initializeaza matricea finala drept o matrice nula.
    R = zeros(p,q);
    % Obs:
    % Atunci când se aplica o scalare, punctul (0, 0) al imaginii nu se va deplasa.
    % În Octave, pixelii imaginilor sunt indexati de la 1 la n.
    % Daca se lucreaza cu indici de la 1 la n si se înmultesc x si y cu s_x respectiv s_y,
    % atunci originea imaginii se va deplasa de la (1, 1) la (sx, sy)!
    % De aceea, trebuie lucrat cu indici în intervalul [0, n - 1].
    
    % TODO: Calculeaza factorii de scalare.
    sx = (q-1)/(n-1);
    sy = (p-1)/(m-1);
    % Obs: Daca se lucreaza cu indici din intervalul [0, n - 1], ultimul pixel
    % al imaginii se va deplasa de la (m - 1, n - 1) la (p, q).
    % s_x nu va fi q ./ n
    
    % TODO: Defineste matricea de transformare pentru redimensionare.
    
    % TODO: Inverseaza matricea de transformare, FARA a folosi functii predefinite!
    InvT = zeros(2);
    InvT(1,1) = 1/sx;
    InvT(2,2) = 1/sy;
    
    % Se parcurge fiecare pixel din imagine.
    for y = 0 : p - 1
        for x = 0 : q - 1
            % TODO: Aplica transformarea inversa asupra (x, y) si calculeaza x_p si y_p
            % din spatiul imaginii initiale.
            x0 = round(x*InvT(1,1)) + 1;
            y0 = round(y*InvT(2,2)) +1 ;
            R(y+1,x+1) = I(y0,x0);
            
        endfor
    endfor
     
    % TODO: Transforma matricea rezultata în uint8 pentru a fi o imagine valida.
    R = uint8(R); 
endfunction
