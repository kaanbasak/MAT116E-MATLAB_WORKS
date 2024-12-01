function I=decryptImage(E,division)

[rows,columns,colours]=size(E);
I = zeros(size(E));
E = double(E);

for i=1:rows
    for j=1:columns
        for k=1:colours
            if mod((i+j),2) == 0
                I(i,j,k) = double((100*division(i,j,k)+E(i,j,k))-127) / 4;
            else
                I(i,j,k) = double((200*division(i,j,k)+E(i,j,k))-255) / 4;
            end
        end
    end
end
I = uint8(I);
imshow(I);

end