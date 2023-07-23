%Integracion Numerica
fprintf('Bienvenido al programa para calcular la intregacion numerica\nde cualquier funcion\n')
fprintf(' \n');

%Introduccion de datos 
fprintf('Ejemplo de como ingresar una función: (3*x^2+6*x-10*x^3)\n')
funcion=input('Ingrese la función/f(x) entre parentesis: ','s');
funcion=inline(funcion);
fprintf(' \n');
a=input('Ingrese el límite inferior de la integral: ');
b=input('Ingrese el límite superior de la integral: ');
fprintf(' \n');
n=input('Ingrese el número de intervalos el cual debe ser un numero par: ');

%Calculos
%Simpson Simple
xm=((a+b)/2);
simpSimple=((b-a)/6)*(funcion(a)+4*funcion(xm)+funcion(b));

%Simpson Compuesto 1/3
h=(b-a)/n;
n=n/2;
s1=0;
s2=0;
for(i=1:n)
x=a+h*(2*i-1);
s1=s1+funcion(x);
endfor
for(i=1:(n-1))
x=a+h*2*i;
s2=s2+funcion(x);
endfor
s=h*(funcion(a)+funcion(b)+4*s1+2*s2)/3;

%Impresion
fprintf(' \n');
fprintf('El resultado utilizando Simpson Simple es de: %i\n', simpSimple);
fprintf('El resultado utilizando Simpson Compuesto 1/3 es de: %i\n',s);
%fprintf('El resultado utilizando Simpson Compuesto 3/8 es de: %i\n',a);