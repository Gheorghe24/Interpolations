function out = proximal_2x2(f, STEP = 0.1)
    % ===================================================================================
    % Aplica Interpolare Proximala pe imaginea 2 x 2 f cu puncte intermediare echidistante.
    % f are valori cunoscute în punctele (1, 1), (1, 2), (2, 1) ?i (2, 2).
    % Parametrii:
    % - f = imaginea ce se va interpola;
    % - STEP = distan?a dintre dou? puncte succesive.
    % ===================================================================================
    

    % Se afl? num?rul de puncte.
    n = 1/STEP + 1;
    lim = n/2; %astfel ?tiu limita pânã unde pixelii sunt aceea?i cu punctul 

    % TODO: Initializeaza rezultatul cu o matrice nula n x n.
    out = zeros(n);
    % Se parcurge fiecare pixel din imaginea finala.
    for i = 1 : n
        for j = 1 : n
            % Am îmãr?it imaginea mea în 4 pãtrate(subspa?ii)
        if i<lim && j<lim
          out(i,j) = f(1,1);
          endif
        if i < lim && j > lim
          out(i,j) = f(1,2);
          endif
        if i > lim && j < lim
          out(i,j) = f(2,1);
          endif
        if i > lim && j > lim
          out(i,j) = f(2,2);
         endif
         
        endfor
    endfor

endfunction