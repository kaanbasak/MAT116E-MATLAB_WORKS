a = 5;
b = 7;
gammaReal = 55;
gamma2 = pi * 55 / 180;

c = sqrt(a^2 + b^2 - 2*a*b*cos(gamma2));

alpha = asin(a * sin(gamma2) / c) * (180/pi); 

beta = asin(b * sin(gamma2) / c) * (180/pi); 

sumAngles = alpha + beta + gammaReal;
