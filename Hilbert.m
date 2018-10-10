%Funcion que genera la matriz de Hilbert
function [A,x]=Hilbert(n)
  A = 0*ones(n,n);
  x=nan * ones(n,1);
  
  for i=1:1:n
    x(i)=1;
    
    for j=1:1:n
      A(i,j) = 1/(i+j-1);
    end
    
  end
  
endfunction

%El condicionamiento de esta matriz tiende a crecer entre mas grande es la matriz. 
%En general tiene un numerod e condicion bastante alto. Matriz mal condicionadas