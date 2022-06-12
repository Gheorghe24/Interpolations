function out = bicubic_resize_RGB(img, p, q)
    % =========================================================================
    % Redimensioneaza imaginea img astfel încât aceasta save fie de dimensiune p x q.
    % Imaginea img este colorata.
    % =========================================================================

    % TODO: Extrage canalul rosu al imaginii.
    R = img(:,:,1); 
    G = img(:,:,2); 
    B = img(:,:,3);
    
    R1 = bicubic_resize(R,p,q);
    G1 = bicubic_resize(G,p,q);
    B1 = bicubic_resize(B,p,q);
   
   %Am concatenat cele 3 canale in noua imagine
    out = cat(3,R1,G1,B1);
    

endfunction
