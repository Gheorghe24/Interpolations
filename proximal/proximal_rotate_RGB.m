function out = proximal_rotate_RGB(img, rotation_angle)
    % =========================================================================
    % Aplica Interpolarea Proximala pentru a roti o imagine RGB cu un unghi dat.
    % =========================================================================
    
    % TODO: Extrage canalul rosu al imaginii.
    R = img(:,:,1); 
    G = img(:,:,2); 
    B = img(:,:,3);
    % TODO: Extrage canalul verde al imaginii.
    
    R1 = proximal_rotate(R,rotation_angle);
    G1 = proximal_rotate(G,rotation_angle);
    B1 = proximal_rotate(B,rotation_angle);
    % TODO: Extrage canalul verde al imaginii.
    out = cat(3,R1,G1,B1);
    % TODO: Extrage canalul verde al imaginii.
    
    % TODO: Extrage canalul albastru al imaginii.
    
    % TODO: Aplica rotatia pe fiecare canal al imaginii.
    
    % TODO: Formeaza imaginea finala concatenând cele 3 canale de culori.
    
endfunction