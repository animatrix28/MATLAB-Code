function [  ] = consitency(A,B)
[m n] = size(A);
M = [A B];
rA = rank(A);
rM = rank(M);
if rA==rM
    fprintf('THE GIVEN SYSTEM OF LINEAR EQUATION IS CONSISTENT\n');
    fprintf('RANK OF MATRIX A IS %d\n',rA);
    if rA==n
        fprintf('THE GIVEN SYSTEM OF LINEAR EQUATION HAS UNIQUE SOLUTION\n');
        X = A\B
        disp(X)
    else
        fprintf('THE GIVEN SYSTEM OF LINEAR EQUATION HAS INFINITELY MANY SOLUTION\n');
    end
else
    fprintf('THE GIVEN SYSTEM OF LINEAR EQUATION IS INCONSISTENT\n');
    fprintf('RANK OF A = %d AND RANK OF [A B] = %d\n',rA,rM);
end
RREF=rref(M)
end