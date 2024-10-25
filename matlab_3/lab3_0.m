t = -2*pi:0.005:2*pi;
a = 3;
x = 4*a*((1-3*t.^2)./(1+t.^2).^3);
y = 4*a*t.*(3-t.^2)./((1+t.^2).^3);

plot(x,y,'r');
hold on;

b = 2.2;
k = 0.5;

x2 = b*(t.*cos(t)+k.*t);
y2 = b*t.*sin(t);
plot(x2,y2,'g');

hold off;

title("Cayley’s Curve and Doppler Spiral");
xlabel("x-axis");
ylabel("y-axis");
legend("Cayley’s Curve","Doppler Spiral");

