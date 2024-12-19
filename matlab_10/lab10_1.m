T = 273:5:298;
P = [4.579 6.543 9.209 12.788 17.535 23.756];
[rows,columns]=size(P);
estimatedValues = zeros(1,columns);
estimatedValues2 = zeros(1,columns);

coeff1 = polyfit(T,P,2);
coeff2 = polyfit(T,log(P),1);

m=coeff2(1);
b=exp(coeff2(2));

t=273:0.1:298;
V2=b*exp(m*t); 
 
V1 = polyval(coeff1,t);
plot(t,V1);
hold on;

plot(t,V2);
legend('second order polynomial fit','exponential fit');
hold off;

j=1;
for i=1:50:251
    estimatedValues(j) = V1(i);
    estimatedValues2(j) = V2(i);
    j=j+1;
end
MAPE = 0;
MAPE2 = 0;
for i=1:columns
    MAPE = MAPE + 100/columns * abs(P(i)-estimatedValues(i))/abs(P(i));
    MAPE2 = MAPE2 + 100/columns * abs(P(i)-estimatedValues2(i))/abs(P(i));
end

if MAPE < MAPE2
    fprintf("Best Fit is second order polynomial fit");
else
    fprintf("Best fit is exponential fit");
end