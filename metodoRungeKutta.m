%EDO con Runge-Kutta
clc
fprintf('Bienvenido al programa para calcular el resultado de una EDO\nPor medio del metodo Runge-Kutta\n')
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

%Calculos - Runge-Kutta
x=x0:h:xn;
yRunge(1)=y0;
for i=1:length(x)-1
  k1=funcion(x(i), yRunge(i));
  k2=funcion(x(i)+(h/2), yRunge(i)+((k1*h)/2));
  k3=funcion(x(i)+(h/2), yRunge(i)+((k2*h)/2));
  k4=funcion(x(i)+h, yRunge(i)+k3*h);
  yRunge(i+1)=yRunge(i)+(1/6)*(k1+2*k2+2*k3+k4)*h;
endfor

%Impresion - Runge-Kutta
fprintf("i \t xi \t\t yi \n");
for (i=1:length(x))
  fprintf("%i \t %f \t %f \n", i-1, x(i), yRunge(i)); 
endfor