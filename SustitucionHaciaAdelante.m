%Muestra la solucion del sistema mediante el metodo de sustitucion hacia adelante
%Este metodo se usa para matrices diagonaes inferiores
function x = SustitucionHaciaAdelante(A,b)
  n=length(A);
  x=nan*ones(n,1);
  x(1)=b(1)/A(1,1); %asignamos al primer elemento de la matriz su solucion correspondiente
  
  for i=2:1:n
    suma = 0;
    
    for j=1:1:i-1 %Suma todos los elementos de la fila partiendo de la diagonal
      suma = suma + A(i,j)*x(j);
    end
    
    x(i)=(b(i) - suma)/A(i,i); % a cada x le signamos su respectiva solucion
  end
  
endfunction