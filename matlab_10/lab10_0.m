p1 = [1 0];
p2 = [-2 22];
p3 = [-2 40];
m1 = conv(p1,p2);
p = conv(m1,p3);

[rows,columns] = size(p);
x=0:0.01:11;
V = polyval(p,x);
plot(x,V);

p = p - [0 0 0 1000];
r=roots(p);

for i=1:columns-1
    if r(i)<11 && r(i) > 0
        fprintf("x values: %f\n",r(i));
    end
end


















