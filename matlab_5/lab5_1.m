t = 0;
d=100;
arrayt = zeros(1,1000);
arrayd = zeros(1,1000);
i=1;

while (d>15)
    x = 5*t-10;
    y = 25*(t^2)-120*t+144;
    d = sqrt(x^2 + y^2);
    arrayt(i) = t;
    arrayd(i) = d;
    t = t+0.01;
    i = i+1;
end

arrayt = arrayt(1:i-1);
arrayd = arrayd(1:i-1);

plot(arrayt, arrayd);
title('distance versus time');
xlabel('t (time)');
ylabel('d (distance)');

