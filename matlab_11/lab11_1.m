total = 12 * 15;
halfArea = total / 2;

syms x k

r = solve(-k*x^2 + 12*k*x == 0, x);

redArea = int(-k*x^2 + 12*k*x, x, r(1), r(2));

kReal = solve(redArea - halfArea == 0, k);

fprintf('k: %f\n', kReal);

