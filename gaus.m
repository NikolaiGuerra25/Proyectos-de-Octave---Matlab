%Gauss simple
fprintf('Ejemplo de matriz ampliada [0 0 0 0;0 0 0 0;0 0 0 0]\n\n')
A = input("Ingresa la matriz ampliada dentro de corchetes: ");
A
[m,n]=size(A);
for j=1:m-1
    for z=2:m
        if A(j,j)==0
            t=A(j,:);A(j,:)=A(z,:);
            A(z,:)=t;
        end
    end
    for i=j+1:m
        A(i,:)=A(i,:)-A(j,:)*(A(i,j)/A(j,j));
    end
end
x=zeros(1,m);
for s=m:-1:1
    c=0;
    for k=2:m
        c=c+A(s,k)*x(k);
    end
    x(s)=(A(s,n)-c)/A(s,s);
end
fprintf('Metodo de eliminacion gaussiana\n');
%vAriAbles del resultAdo
fprintf('Matriz\n');
A
Respuestas=x;
Respuestas