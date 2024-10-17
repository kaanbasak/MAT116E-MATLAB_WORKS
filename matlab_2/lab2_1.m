a = input("enter the a: ");
b = input("enter the b: ");

A = (b-a)*rand(7,5)+a;
B = (b-a)*rand(7,7)+a;
C = (b-a)*rand(4,7)+a;

S = (1/2)*(B+B');

B(3,:)= A(:,2);

i = A(2,2:4);
j = B(1:2:5,3);
ColVec = [i';j];

P = A(:,1:4);

tempMatrix = P * C;

D = B ./ tempMatrix;




