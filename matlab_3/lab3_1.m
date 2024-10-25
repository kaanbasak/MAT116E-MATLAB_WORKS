x1 = -2:0.02:2;
y1 = -2:0.02:2;
[x2, y2] = meshgrid(x1,y1);
z = x2.^2 + x2.*y2 - y2.^3 + 2;
surf(x2,y2,z);
hold on;

p0 = [1,1,1];

tangentEquation = 3*x2+4*y2-6;
surf(x2, y2, tangentEquation, 'EdgeColor', 'red');

t = -2:0.01:2;  
xNormal = 1 + 3 * t;
yNormal = 1 + 4 * t;
zNormal = 1 + t;

plot3(xNormal, yNormal, zNormal);

