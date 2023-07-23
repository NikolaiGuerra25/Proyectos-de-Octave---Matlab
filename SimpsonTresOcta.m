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
fprintf(' \n');
if (mod(n,3)==0)
  h=(b-a)/n;
  s3=0;
  st=0;
  for(i=1:n-1)
  if (mod(i,3)==0)
  x=a+h*i;
  s3=s3+funcion(x);
end
end
for(i=1:n)
x=a+h*i;
st=st+funcion(x);
end
st=st+funcion(a);
sr=st-(funcion(a)+funcion(b)+s3);
simpOcta=(3*h/8)*(funcion(a)+2*s3+3*sr+funcion(b));
fprintf('El resultado utilizando Simpson Compuesto 3/8 es de: %i\n',simpOcta);
else
fprintf('No se puede utilizar el metodo Simspons de 3/8');
end
