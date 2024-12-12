function result=LinSysSolType(A,B)
augMatrix = [A B];
r1 = rank(A);
r2 = rank(augMatrix);
num1 = size(A,2);

if r1 == r2 && (num1 == r1 || num1 == r2)
    result="exactly one solution";
elseif r1==r2 && (num1 > r1 || num1 > r2)
    result="infinetely many solution";
elseif r1 < r2
    result="no solution";
else
    result="invalid result";
end

end