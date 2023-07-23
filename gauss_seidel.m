function [x,it,t,rh] = gaussseidel (A,b,xo,maxit,tol)
 tic();
 it=0;
 x=xo;
 n=length(A(:,1));
 while(it<maxit)
 for i=1:n
 x(i)=(b(i)-A(i,1:i-1)*x(1:i-1)-A(i,i+1:n)*xo(i+1:n))/A(i,i);
 endfor
 rh(it+1)=norm(x-xo,Inf);
 if(rh(it+1)<tol)
 break;
 endif
 xo=x;
 it=it+1;
 endwhile
 t=toc();
endfunction