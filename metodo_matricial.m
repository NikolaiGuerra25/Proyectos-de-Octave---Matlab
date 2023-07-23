fprintf('Ejemplo de matriz normal [0 0 0;0 0 0;0 0 0]\nEjemplo de variables independientes [0;0;0]\n\n')
A=input("Ingresa la matriz normal dentro de corchetes: ");
A
B=input("\nIngresa las variables independientes dentro de corchetes: ");
B
inv=A^-1;
resul=inv*B;
fprintf(' Resultado\n');
resul
