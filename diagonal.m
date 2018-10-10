%Toma una mtriz diagonal y nos retorna la solucion del sistema
function x=diagonal(A,b)
  n=length(A); % cantidad de filas de la matriz
  x=nan * ones(n,1); %Genera una matriz llena de unos con las dimansionas indicadas. Se le multiplica nan(vacio)
  
  for i=1:1:n
    x(i)=b(i)/A(i,i); %Asignamos la solcuion de cada variable
  end
  
endfunction