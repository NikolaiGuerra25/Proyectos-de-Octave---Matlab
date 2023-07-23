% Una implementacion del metodo de biseccion para busqueda de raices en
% funciones continuas dentro de un intervalo.
%
% Ejemplo:
% Ejecutar las siguientes lineas dentro de la ventana de comandos:
%
% ff = @(x)(x.^3-100)
% x = biseccion(ff, 4.5, 5, 0.0001);
%
% Se buscara la raiz de la funcion (x^3)-100 tomando como puntos iniciales para
% el metodo de la secante a = 4.5 y b = 4.6, con una tolerancia tol = 0.0001.
 
function xs = biseccion(fun,a,b,tol)
   fprintf('Metodo de Biseccion\n\n');
   i = 1;
   fa = feval(fun, a);
   fb = feval(fun, b);

   if (fa * fb) < 0 
      xs = (a + b) / 2;
      error = abs(b - a);
      xa = xs;
      fxs = feval(fun, xs);
      if (fa * fxs) < 0
         b = xs;
      else
         a = xs;
      end %if

      fprintf('Iter. \t xr \t\t ea \n');
      fprintf('%2i \t %f \t %f\n', i, xs, error);
      
      while error >= tol
         fa = feval(fun,a);
         xs = (a + b) / 2;
         error = abs(xs - xa);
         xa = xs;
         fxs = feval(fun, xs);
         if (fa * fxs) < 0
            b = xs;
         else
            a = xs;
         end %if

         i = i + 1;
         fprintf('%2i \t %f \t %f\n', i, xs, error);
      end %while
      fprintf('\n La mejor aproximacion a la raiz tomando una tolerancia de %f es x = %f \n y se realizaron %i iteraciones\n', tol, xs, i);
   else
      disp("La solucion no esta en el intervalo");
   end %if
   ezplot(fun);grid;
end