% Ejemplo de programa MATLAB / Octave
disp "Programa Ejemplo"
a = input("Ingrese un número natural: ")
if a < 0 
  disp "Es negativo el numero"
else
  disp "Es positivo el numero"
endif
i = abs(a)
f = i + 10
printf ("Numeros entre %d y %d\n", i, f)
while i <= f
  disp(i);
  i = i + 1;
end
i = abs(a)
f = i + 10
printf ("Numeros entre %d y %d en intervalos de 2\n", i, f);
for k=i:2:f
  printf ("%d\t", k)
end

printf("\nEl mayor entre %d y %d es %d\n", a, f, maxnum(a,f));