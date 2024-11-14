function plotHist(img)
    
    count = zeros(1, 256);
    [rows, columns] = size(img);

for i = 1:rows
    for j = 1:columns
        pixels = img(i, j);
        count(pixels + 1) = count(pixels+1) + 1;
    end
end

bar(0:255, count);

end