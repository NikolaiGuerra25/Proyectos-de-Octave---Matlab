%METODO DE LA SECANTE
clc 
fprintf('Bienvenido al programa para calcular la raiz de una funcion\nusando el metodo de la secante\n')
fprintf(' \n');

f = input("Escribe la funcion/f(x): ","s");
funcion = inline(f);

xi= input("Punto inicial del intervalo: ");

xf= input("Punto final del intervalo: ");

erro= input("Error aproximado: ");

function ea = errora(xn,xp)
ea = abs( xn - xp );
end

if funcion(xi)-funcion(xf)~=0

 i=1;
 fprintf ("\n");
 fprintf("%s\t %s\t\t %s\n", 'i', 'Xi', '|Error|');
 fprintf ("\n");
 fprintf('%.0f\t', i);
 fprintf('%.5f\t\t', xi);
 fprintf('%.5f\t', errora(xf,xi));
 fprintf ("\n"); 
while errora(xf,xi)>erro

 xn = xi-(((xi-xf)/(funcion(xi)-funcion(xf)))*funcion(xi));
 xf = xi;
 xi = xn;
 i++;
 fprintf('%.0f\t', i);
 fprintf('%.5f\t\t', xn);
 fprintf('%.5f\t', errora(xn,xf));
 fprintf ("\n"); 
endwhile;
 fprintf ("__\n");

else 
fprintf("no se puede calcular");

end