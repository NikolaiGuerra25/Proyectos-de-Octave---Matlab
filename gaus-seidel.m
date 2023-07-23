% Metodo gauss-seidel
fprintf('Metodo gaus-seidel, tener en cuenta la condicion para este metodo\n\n');
%Definir la cantidad de ecuaciones
 n=3;
 A = zeros(n,n+1);
 x1 = zeros(n);
%Definir matriz
fprintf('Ejemplo de matriz ampliada [0 0 0 0;0 0 0 0;0 0 0 0]\n')
A = input("Ingresa la matriz ampliada dentro de corchetes: ");
A
 %Tolerancia
 tol = input("Ingresa la la tolerancia: ");
 %Numero maximo de interacciones
 m = 999999;
 %valor inicial de las respuestas
 x1=[0 0 0];
 k = 1;
 while  k <= m
    err = 0;
    for i = 1 : n 
       s = 0;
       for j = 1 : n 
          s = s-A(i,j)*x1(j);
       end
       s = (s+A(i,n+1))/A(i,i);
       if abs(s) > err 
         err  = abs(s);
       end
       x1(i) = x1(i) + s;
    end
    if err <= tol 
      break;
    else
      k = k+1;
    end
 end 
 fprintf('La solucion despues de %d interacciones es:\n', k-1);
 for i = 1 : n 
   fprintf(' %11.8f \n', x1(i));
 end