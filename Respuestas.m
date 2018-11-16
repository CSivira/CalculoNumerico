Pregunta Uno:

a) 

  Matriz A1: 
  
  *Diagonal dominante estricta: Esta no es diagonal dominante estricta, ya que, 
  si tenemos la fila a1..an, elementos de A, y denominemos ad el elemento de la 
  diagonal, tenemos dos posibilidades:

  1) Si ad es positivo, entonces al sumar nI se tiene que el nuevo elemento ad
  sera n+1, ya que A solo contiene unos y ceros. Si por fila tenemos n-1 
  elementos, descontando el elemento de la diagonal, y como todos son 1 o -1, la
  sumatoria de |ai| sera n-1. Como n+1>n-1 se tiene que es diagonal estricta.
  
  2)Si ad es negativo, entonces al sumar nI se tiene que el nuevo elemento ad
  sera n-1. Nuevamente, como en la fila restan n-1 unos o menos unos, se tiene
  que la sumatoria de |ai| sera n-1. El resultado es que n-1 !> n-1, por lo 
  tanto A1 no es diagonal estricta.
  
  A1 solo es diagonal estricta si los elementos de la diagonal son siempre 
  positivos.
  
  *Simetrica: Es evidente que esta matriz no es simetrica, ya que, al tener A1
  una distribucion aleatoria de -1 y 1, puede dar se el caso de que para un i,j
  tales que 1<=i,j<=n A(i,j)!=A(j,i), por ejemplo:
  
    A = |4 -1 -1| donde X = |1 -1 -1| y n = 3 tal que nI = |3  0  0|
        |1  4  1|           |1  1  1|                      |0  3  0|
        |1  1  2|           |1  1 -1|                      |0  0  3|
    Observamos que el elemento X(2,1) = 1 es distinto del elemento X(1,2) = -1
    
  *Definida positiva: Basicamente hay que ver si para toda matriz A1 se cumple
  que es definida positiva. Hay que ver si para x^t*A1*x > 0, para todo x 
  en Rn distinto de 0. Como x = e, un vector de solo unos, la operacion x^t*A1 
  da como resultado un vector, digamos x', que contiene en cada posicion la 
  sumatoria de los elementos de cada columna de A1. Ahora bien, la operacion
  x'*x da como resultado la sumatoria de los elementos del vector x'.
  
  |n-1 -1 -1...-1| de donde x' = |n-1(n) n-1(n) ...n-1(n)| = |0 0 ... 0|
  |-1 n-1 -1...-1| como ahora x' es un vector de ceros, la operaciion x'*x
  | °  °   °    °| dara como resultado 0 y como 0 !> 0 se tiene que para este 
  |-1 -1 -1...n-1| caso la matriz A1 no es definida positiva.
  
  Matriz A2:
  
  *Diagonal dominante estricta: 
  