%Soham Sasan
function F = my_chol(A)
    [n,m] = size(A);
    if n ~= m
        error('Matrix A needs to be a square matrix!');
    end
    if ~isequal(A, A')
        error('Matrix A MUST be symmetric!');
    end
    for k = 1:n
        if det(A(1:k, 1:k)) <= 0
            error('Matrix A should be positive definite!');
        end
    end
    F = zeros(n);
    for i = 1:n
        for j = i:n
            if i == j
                F(i,j) = sqrt(A(i,j) - sum(F(1:i-1,j).^2));
            else
                F(i,j) = (A(i,j) - sum(F(1:i-1,i).*F(1:i-1,j))) / F(i,i);
            end
        end
    end
end
%The two test cases which should produce errors: 
% A1 = [6 15 55; 15 55 25; 55 225 979];
% F = my_chol(A1);
% disp(F)
% A2 = [6 15; 15 55; 55 225];
% F = my_chol(A2);
% disp(F)
A = [6 15 55; 15 55 225; 55 225 979];
F = my_chol(A);
disp("My function:")
disp(F)
F = chol(A);
disp("Builtin Function:")
disp(F)
A3 = [6 15 55; 15 55 225; 55 225 979];
b = [4; 5; 7]
U = my_chol(A3);
q = U' \ b;
x_mine = U \ q;
x_built = A \ b;
disp("My value of X:")
disp(x_mine)
disp("Builtin value of X:")
disp(x_built)