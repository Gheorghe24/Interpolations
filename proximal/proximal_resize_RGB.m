function out = proximal_resize_RGB(img, p, q)
    % =========================================================================
    % Redimensioneaza imaginea img astfel �nc�t aceasta save fie de dimensiune p x q.
    % Imaginea img este colorata.
    % =========================================================================

    R = img(:,:,1); 
    G = img(:,:,2); 
    B = img(:,:,3);
    
    R1 = proximal_resize(R,p,q);
    G1 = proximal_resize(G,p,q);
    B1 = proximal_resize(B,p,q);
    
    out = cat(3,R1,G1,B1);

    % TODO: Formeaza imaginea finala concaten�nd cele 3 canale de culori.

endfunction
