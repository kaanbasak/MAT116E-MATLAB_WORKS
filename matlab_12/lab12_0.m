x = 0:5;
y = (3/2).^x .* cos(2.*x);
xNew = 0:0.01:5;
yNew = interp1(x,y,xNew,"linear");

plot(x,y,"*");
hold on;
y = (3/2).^xNew.* cos(2.*xNew);
plot(xNew,y);
y = (3/2).^x .* cos(2.*x);
plot(xNew,yNew);

yNew2 = interp1(x,y,xNew,"spline");
plot(xNew,yNew2);

yNew3 = interp1(x,y,xNew,"pchip");
plot(xNew,yNew3);
hold off;

legend("data points","original","linear","spline","pchip");










