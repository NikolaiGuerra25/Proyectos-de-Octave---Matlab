function mtdM = metodoMatricial(a,b)
  fprintf('Metodo Matricial\n\n');
  fprintf("%i %i %i\n", a');
  fprintf("--------------\n");
  fprintf("%i\n", b);
  inversa=inv(a)
  resultado=inversa*b
 end