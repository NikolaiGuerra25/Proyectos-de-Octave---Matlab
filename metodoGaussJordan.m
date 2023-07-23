function mtdG = metodoGaussJordan(a,b)
  fprintf('Metodo Gauss-Jordan\n\n');
  fprintf("%i %i %i\n", a');
  fprintf("--------------\n");
  fprintf("%i\n", b);
  fprintf("--------------\n");
  c=[a b]
  rref(c)
 end