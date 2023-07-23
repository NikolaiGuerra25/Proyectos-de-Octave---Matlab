% Gauss-JordAn 
%Definir matriz
fprintf('Ejemplo de matriz ampliada [0 0 0 0;0 0 0 0;0 0 0 0]\n\n')
A = input("Ingresa la matriz ampliada dentro de corchetes: ");
A
[m,n]=size(A);
for j=1:m-1
    for z=2:m
        if A(j,j)==0
            t=A(1,:);A(1,:)=A(z,:);
            A(z,:)=t;
        end
    end
    for i=j+1:m
        A(i,:)=A(i,:)-A(j,:)*(A(i,j)/A(j,j));
    end
end

for j=m:-1:2
    for i=j-1:-1:1
        A(i,:)=A(i,:)-A(j,:)*(A(i,j)/A(j,j));
    end
end

for s=1:m
    A(s,:)=A(s,:)/A(s,s);
    x(s)=A(s,n);
end
fprintf('Metodo de Gauss Jordan\n');
A
Respuestas=x;
Respuestas