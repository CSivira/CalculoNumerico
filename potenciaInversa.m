% El algoritmo retorna una aproximacion del mínimo autovalor de A
function [x,k,r] = potenciaInversa(A,error,x,itmax)

  A = factorizacionLU(A);

  for k = 1:1:itmax
  
    y = sistemaLU(A,x);
    r = y(1)/x(1);
    
    if norm(x - (y/norm(y,inf))) < error
      
      r = 1/r;
      return
      
    endif
  
    x = y/(norm(y,inf));
  
  endfor
  
  r = 1/r;

endfunction