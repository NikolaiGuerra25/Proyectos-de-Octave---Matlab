%EDO con Euler Mejorado
clc
fprintf('Bienvenido al programa para calcular el resultado de una EDO\nPor medio del metodo Euler Mejorado\n')
fprintf(' \n');

%Introduccion de datos 
fprintf('Ejemplo de como ingresar una funcion: (3*x^2+6*x-10*x^3)\n')
funcion=input('Ingrese la funcion/f(x) entre parentesis: ','s');
funcion=inline(funcion);
fprintf(' \n');
x0=input('Ingrese la x0: ');
xn=input('Ingrese la xn: ');
y0=input('Ingrese la y0: ');
h=input('Ingrese el tamaño de paso/intervalos: ');
fprintf(' \n');

%Calculos - Euler Mejorado
x=x0:h:xn;
yEuler(1)=y0;
for i=1:length(x)-1
  yEuler(i+1)=yEuler(i)+h*((funcion(x(i),yEuler(i))+funcion(x(i+1),yEuler(i)+h*funcion(x(i),yEuler(i))))/2);
endfor

%Impresion - Euler Mejorado
fprintf("i \t xi \t\t yi \n");
for (i=1:length(x))
  fprintf("%i \t %f \t %f \n", i-1, x(i), yEuler(i)); 
endfor