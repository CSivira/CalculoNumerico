function condicionamiento = condicion(n)
  [A,x] = Hilbert(n);
  condicionamiento = cond(A,inf);
  
endfunction