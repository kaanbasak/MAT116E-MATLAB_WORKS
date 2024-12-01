function y = cosTay(x)

format long g

x = x * pi / 180;

y = 0;
n=0;
E = 1;

while E > 10^-6
    terms = ((-1)^n  / factorial(2*n)) * x^(2*n);
    y = y + terms;
    n = n+1;
    E = double(abs(terms) / abs(y));
end
end