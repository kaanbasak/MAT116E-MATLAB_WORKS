fee = 5;
V=[200 500 700 1000 1500];

for i=1:length(V)
    if ( V(i)<= 500)
    cost = V(i)*0.02;
    cost = cost + fee;
    fprintf("cost: %.2f dollar\n",cost);
    elseif (V(i) > 500 && V(i) <= 1000)
    cost = 10 + (V(i)-500)*0.05;
    cost = cost + fee;
    fprintf("cost: %.2f dollar\n",cost);
    elseif (V(i) > 1000)
    cost = 35 + (V(i)-1000)*0.10;
    cost = cost + fee;
    fprintf("cost: %.2f dollar\n",cost);
    end
end