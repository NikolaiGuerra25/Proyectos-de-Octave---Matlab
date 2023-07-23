%Regresion Polinomica de Grado 2
fprintf('Bienvenido al programa para calcular la regresion\nlineal polinomica de grado 2\n')
fprintf(' \n');
fprintf('Ejemplo de como ingresar los valores [0;0;0;0;0] / [0 0 0 0 0]\n')

%Ingresar los datos 
x=input("\nIngrese los valores de x dentro de corchetes: ");
y=input("\nIngrese los valores de y dentro de corchetes: ");

%Cantidad de datos
cant=length(x);

%Calculos - Multiplicaciones
for(i=1:length(x))
xy(i)=x(i)*y(i);
xx(i)=x(i)*x(i);
endfor
for(i=1:length(x))
xxy(i)=xx(i)*y(i);
endfor
for(i=1:length(x))
xxx(i)=xx(i)*x(i);
endfor
for(i=1:length(x))
xxxx(i)=xxx(i)*x(i);
endfor

%Calculos - Sumas
totX=0, totY=0, totXY=0, totXX=0, totXXY=0, totXXX=0, totXXXX=0;
for(i=1:length(x))
totX=totX+x(i);
totY=totY+y(i);
totXY=totXY+xy(i);
totXX=totXX+xx(i);
totXXY=totXXY+xxy(i);
totXXX=totXXX+xxx(i);
totXXXX=totXXXX+xxxx(i);
endfor

%Matriz
matriz=[cant, totX, totXX; totX, totXX, totXXX; totXX, totXXX, totXXXX];
coeficientes=[totY; totXY; totXXY];

%Calculo de coeficientes
inversa=matriz^-1;
resultado=inversa*coeficientes;

%Sr=(y-a0-a1*x-a2*x^2)^2
totSr=0;
for(i=1:length(x))
vecSr(i)=(y(i)-resultado(1)-resultado(2)*x(i)-resultado(3)*xx(i))^2;
totSr=totSr+vecSr(i);
endfor

%Sy/x=Error
Syx=sqrt(totSr/(cant-(2+1)));

%(y-ymedia)^2
totYmedia=0;
ymedia=totY/cant;
for(i=1:length(y))
ymediaVec(i)=(y(i)-ymedia)^2;
totYmedia=totYmedia+ymediaVec(i);
endfor

%Coeficiente de correlacion y determinacion
coeDeterminacion=((totYmedia-totSr)/totYmedia);
coeCorrelacion=sqrt(coeDeterminacion);

%Impresion de resultados
fprintf(' \n');
fprintf('Coeficeintes\n');
fprintf('%i\n', resultado);
fprintf(' \n');
fprintf('Ecuacion del modelo de regresion\n');
fprintf('y=%i+%i*x+%i*x^2\n', resultado(1),resultado(2), resultado(3));
fprintf(' \n');
fprintf('El coeficiente de determinacion es: %i\n',coeDeterminacion);
fprintf('El coeficiente de correlacion es: %i\n',coeCorrelacion);
if(coeDeterminacion<1 && coeDeterminacion>=0.95)
fprintf(' \n');
fprintf('Dado que se obtuvo un coeficiente de determinacion de %i se puede concluir\nque este metodo de regresion se adapta de forma excelente a los datos\n', coeDeterminacion);
else
fprintf(' \n');
fprintf('Dado que se obtuvo un coeficiente de determinacion de %i se puede concluir\nque este metodo de regresion no se adapta de forma excelente a los datos\n', coeDeterminacion);
endif
fprintf(' \n');
fprintf('El error estandar es de: %i\n',Syx);

%Grafica
plot(x,y,'ro-', 'markersize', 4, 'linewidth', 2);grid;
xlabel('X');
ylabel('Y');
title('Y vs X');
