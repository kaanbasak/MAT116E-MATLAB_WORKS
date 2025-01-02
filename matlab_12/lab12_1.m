hw1 = [13.5, 13.0, 14.5, 13.0, 18.5, 19.5, 16.5, 12.0, 18.5, 16.0];
hw2 = [17.75, 8.00, 15.25, 14.5, 17.25, 14.5, 12.75, 15.25, 15.75, 15.75];
final = [80.60, 66.3, 54.3, 76.5, 86.0, 77.6, 84.1, 81.4, 81.9, 91.2];

n = length(hw1);
Sx = sum(hw1);
Sy = sum(final);
Sxx = sum(hw1.^2);
Sxy = sum(hw1 .* final);

Sx_hw2 = sum(hw2);
Sxx_hw2 = sum(hw2.^2);
Sxy_hw2 = sum(hw2 .* final);

A = [n, Sx, Sx_hw2;Sx, Sxx, sum(hw1.*hw2);Sx_hw2, sum(hw1.*hw2), Sxx_hw2];

B = [Sy; Sxy; Sxy_hw2];

denk = A \ B;

a = denk(1);
b = denk(2);
c = denk(3);

fprintf("f = %.4f + %.4f*hw1 + %.4f*hw2\n", a, b, c);

hw1_new = 17;
hw2_new = 16.75;
finalGuess = a + b * hw1_new + c * hw2_new;

fprintf("final guess: %.4f\n", finalGuess);
