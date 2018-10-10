%Aplica el detodo de reduccion de matrices de gauss
function [A,b] = Gauss(A,b)
  [m,n] = size(A);
  
  for k = 1:1:n-1
    for i = k+1:1:n
      alpha = A(i,k)/A(k,k);
      
      for j= k:1:n
        % el alpha puede causar errores, si este es muy grande y es dividido por una cantidad muy pequeña
        A(i,j)=A(i,j) - (alpha * A(k,j));
      end
      
      b(i)=b(i)-alpha * b(k);
    end
  end
 endfunction
 
 %Comandos utiles
 
 % Generar matriz con soluciones magic(n) n el numero de filas y columnas
 % x = A\b funcion que te genera la solucion
 % det(M) determinante de la matriz M