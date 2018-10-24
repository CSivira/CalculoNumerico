function x = sistemaCholesky(A,b)
  L = cholesky(A);
  U = transpose(L);
  y = sust_adelante(L,b);
  x = sust_atras(U,y);
endfunction