M = input("enter the coefficent matrix:");
N=M;
realDet=det(M);

cost = input("enter the constant matrix:");
if realDet ~= 0 
for i=1:length(M)
    M=N;
    M(:,i)=cost;
    x = det(M)/realDet;
    fprintf("x(%.f)=%.2f\n",i,x);
end
end

