function y = ForwardSub(a,b) 
  n = length(b);
  b = double(b);
  y(1,1) = b(1)/a(1,1);
  for i = 2:n
    y(i,1) = (b(i)- a(i,1:i-1) * y(1:i-1,1))./a(i,i);
  endfor
  disp('f');
endfunction
