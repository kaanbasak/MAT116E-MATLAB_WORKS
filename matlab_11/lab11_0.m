xvec = -5:0.1:1;
sz = size(xvec);
yvec = zeros(1,sz(2));

for i=1:sz(2)
    syms y
    A = [0 1 3;2 xvec(i) 4;y 1 7];
    m = det(A);
    yvec(i) = solve(m == 0, y);
end
plot(xvec,yvec,'*');

syms x h
func = sin(cos(x));

fLimit = limit((subs(func,x+h) - func)/h, h, 0);

fDiff = diff(func, x);

fprintf('limit: ');
disp(fLimit);
fprintf('diff: ');
disp(fDiff);

if fLimit == fDiff
    fprintf("these equations are equal.\n");
else
    fprintf("false");
end


