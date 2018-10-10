%Muestra la solucion del sistema mediante el metodo de sustitucion hacia atras
%Este metodo se usa para matrices diagonaes superiores
function x = SustitucionHaciaAtras(A,b)
  n=length(A);
  x=nan*ones(n,1);
  x(n)=b(n)/A(n,n); %asignamos al ultimo elemento de la matriz su solucion correspondiente
  
  for i=n-1:-1:1
    suma = 0;
    
    for j=i+1:1:n %Suma todos los elementos de la fila partiendo de la diagonal
      suma = suma + A(i,j)*x(j);
    end
    
    x(i)=(b(i) - suma)/A(i,i); % a cada x le signamos su respectiva solucion
  end
  
endfunction