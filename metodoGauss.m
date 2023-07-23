function mtdG = metodoGauss(a,b)
  fprintf('Metodo Gauss-Jordan\n\n');
  fprintf("%i %i %i\n", a');
  fprintf("--------------\n");
  fprintf("%i\n", b);
  fprintf("--------------\n");
  c=[a b]
  ref(c)
  n = length(c)-1;
  m=n+1;
  X(n) = c(n,m)/c(n,n);
  for i=n-1 :-1 :1
    suma=c(i,m);
    for j=i+1:n
      suma=suma-c(i,j)*X(j);
    endfor
    X(i)=suma/c(i,i);
  endfor
 end