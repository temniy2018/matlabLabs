disp('Исходная матрица');
A=[1 2 -3
    3 -4 5
    -6 -8 12]
c=0;
for i=1:1:3
    for j=1:1:3
        if (A(i, j)<0)
            c=c+1;
        end
    end
end
for i =1:1:3
    for j=1:1:3
        if (i==j)
            A(i, j)=c;
        end
    end
end
disp('Преобразованная матрица')
A
