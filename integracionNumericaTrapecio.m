%Integracion Numerica
fprintf('Bienvenido al programa para calcular la intregacion numerica\nde cualquier funcion\n')
fprintf(' \n');

%Introduccion de datos 
fprintf('Ejemplo de como ingresar una funcion: (3*x^2+6*x-10*x^3)\n')
funcion=input('Ingrese la funcion/f(x) entre parentesis: ','s');
funcion=inline(funcion);
fprintf(' \n');
a=input('Ingrese el limite inferior de la integral: ');
b=input('Ingrese el limite superior de la integral: ');
fprintf(' \n');
n=input('Ingrese el número de intervalos: ');

%Calculos
%Trapecio Simple
trapSimple=(b-a)*((funcion(a)+funcion(b))/2);
%Trapecio Compuesto}
h=(b-a)/n;
s=0
for(i=1:(n-1))
x=a+h*i;
s=s+funcion(x);
endfor
s=h*(funcion(a)+funcion(b))/2+h*s;

%Impresion
fprintf(' \n');
fprintf('El resultado utilizando Trapecio Simple es de: %i\n', trapSimple);
fprintf('El resultado utilizando Trapecio Compuesto es de: %i\n', s);
