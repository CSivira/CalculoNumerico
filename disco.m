%El algoritmo grafica los circulos (regiones) donde se encuentran los 
%autovectores de A
function [] = disco(A)
  
  circulo = 0 : 0.01 : 2 * pi; % 360°
  n = length(A);
  x = zeros(length(circulo),n);
  r = sum(abs(A),2) - abs(diag(A)); %radios
  
  for i = 1:1:n
  
    x(:,i) = r(i) * cos(circulo) + real(A(i,i));
    y(:,i) = r(i) * sin(circulo) + imag(A(i,i));
  
  endfor
  
  e = eig(A);
  plot(x,y,real(e),imag(e),'x')
  
endfunction