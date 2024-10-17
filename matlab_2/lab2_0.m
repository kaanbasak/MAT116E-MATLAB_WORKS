x = linspace(1,3,300);
y = sin(x).*cos(pi*x)/((x.^3+1)*(x+1));

xT = colon(2,0.15,4);
y2 = (xT.^2)./(xT-(1./(xT.^2)));