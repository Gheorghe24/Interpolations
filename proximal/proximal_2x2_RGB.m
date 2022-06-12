function out = proximal_2x2_RGB(img, STEP = 0.1)
    % ==============================================================================================
    % Aplica Interpolare Proximala pe imaginea 2 x 2 definita img cu puncte intermediare echidistante.
    % img este o imagine colorata RGB -Red, Green, Blue.
    % =============================================================================================
  %Am extras cele 3 canale ale imaginii
    R = img(:,:,1); 
    G = img(:,:,2); 
    B = img(:,:,3);
   %Aplic functia proximal pe cele 3 canale ale imaginii.
    R = proximal_2x2(R,STEP);
    G = proximal_2x2(G,STEP);
    B =proximal_2x2(B,STEP);
    % TODO: Formeaza imaginea finala concatenând cele 3 canale de culori.
   out = cat(3,R,G,B);
   
    
    
    
    
endfunction
