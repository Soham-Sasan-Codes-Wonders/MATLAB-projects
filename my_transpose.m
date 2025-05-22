%Soham Sasan
function F = my_transpose(A)
[rows,cols] = size(A);
F = zeros(rows, cols);
for i = 1:rows
    for j = 1:cols
        F(j,i) = A(i,j);
    end
end
