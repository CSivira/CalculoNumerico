%El algoritmo retorna el autovalor mas cercano al valor de u
function [x,k,r] = potenciaInversaDez(A,error,u,itmax)

  n = length(A);
  x = ones(n,1);
  dezpla = u * eye(n,n);
  
  A = A-dezpla;
  
  A = factorizacionLU(A);

  for k = 1:1:itmax
  
    y = sistemaLU(A,x);
    r = y(1)/x(1);
    
    if norm(x - (y/norm(y,inf))) < error
      
      r = (1/r) + u;
      return
      
    endif
  
    x = y/(norm(y,inf));
  
  endfor
  
  r = (1/r) + u;

endfunction

%revisar con una matriz que solo tiene valores en su diagonal
%Hay que implementarlo con matrices que tienen autovalores con modulos distintos