function [In,If ] = Ec( I,p)
% Tamaño de la imagen
[tx,ty]=size(I);
% Histograma de la imagen
[y,x]=hist(I);
% Tamaño de la cantidad de bins del histograma.
n=length(x);

% Ciclo para encontrar los nuevos valores de la imagen ecualizada
% Ecualización normal 
for j=1:n
    s(j)=((n-1)/(tx*ty))*sum(y(1:j));
end

% Redondeo para abajo de los nuevos valores 
s=round(s);

%Actualización de valores dentro de toda la imagen para una ecualización
%estándar
for i =1:tx
    for j=1:ty
        pos=s(I(i,j)+1);
        In(i,j)=pos;
    end
end


% Ciclo para encontrar los nuevos valores del histograma específico
% Ecualización espcifica
for j=1:n
    sN(j)=((n-1)/(tx*ty))*sum(ty*tx*p(1:j));
end

% Redondeo para abajo de los nuevos valores 
sN=round(sN);

%Actualización de valores dentro de toda la imagen In para una ecualización
%específica
for i=1:tx
    for j=1:ty
        k=find(In(i,j)==sN);
        if isempty(k)==1
            If(i,j)=0;
        else
            If(i,j)=k(1);
        end
    end
end

%Cambio de tipo de dato double -> uint8
In=uint8(In);
If=uint8(If);

end

