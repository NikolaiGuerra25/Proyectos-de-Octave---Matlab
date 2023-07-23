%Regresion Polinomica de Grado 2
fprintf('Bienvenido al programa para calcular la regresion\nlineal polinomica de grado 2\n')
fprintf('Ejemplo de como ingresar los valores [0;0;0;0;0] / [0 0 0 0 0]\n')

%Ingresar los datos 
x=input("\nIngrese los valores de x dentro de corchetes: ");
y=input("\nIngrese los valores de y dentro de corchetes: ");

%Cantidad de datos
cant=length(x);

%Calculos - Multiplicaciones
for(i=1:length(x))
lny(i)=ln(y(i));
xx(i)=x(i)*x(i);
endfor
for(i=1:length(x))
xlny(i)=x(i)*lny(i);
endfor


%Impresion
fprintf(' \n')
fprintf('Impresion de valores\n')
fprintf('x  \t  y  \t  x^2  \t  ln (y) \t  x ln (y) \n')
for(i=1:length(x))
fprintf("%i  \t  %i  \t  %i  \t  %i  \t  %i\n", x(i), y(i), xy(i), xx(i), lny(i), xlny(i));
endfor

%Calculos - Sumas
totX=0, totY=0, totXX=0, totLNY=0, totXLNY;
for(i=1:length(x))
totX=totX+x(i);
totY=totY+y(i);
totXX=totXX+xx(i);
totLNY=totLNY+lny(i);
totXLNY=totXLNY+xlny(i);
endfor

%Impresion de totales
fprintf(' \n')
fprintf('Impresion de totales\n')
fprintf('%i  \t  %i \t  %i  \t  %i  \t  %i \n', totX, totY, totXX, totLNY, totXLNY);

%Matriz
matriz=[cant, totX; totX, totXX];
coeficientes=[totLNY;totXLNY];

%Impresion de matriz y coeficientes
fprintf(' \n');
fprintf('Impresion de matriz\n');
fprintf('%i \t %i \n', matriz);
fprintf(' \n');
fprintf('Impresion de coeficientes\n');
fprintf('%i\n', coeficientes);

%Calculo de coeficientes
inversa=matriz^-1;
resultado=inversa*coeficientes;
resultadoAlfa=ln(resultado(1));

%Impresion de resultado
fprintf(' \n');
fprintf('Impresion del resultado\n');
fprintf('%i \t %i\n', resultadoAlfa, resultado(2));

%Coeficiente de correlacion
coeCorrelacion=corr(x,y);
coeDetermincion=sqrt(coeCorrelacion);

%Impresion de Coe. Correlacion y Determiancion
fprintf(' \n');
fprintf('El coeficiente de correlacion es: %i\n',coeCorrelacion);
fprintf('El coeficiente de determinacion es: %i\n',coeDetermincion);

%Grafica
plot(x,y);grid;
