
pic = imread("exampleImage.png");
a = size(pic);
dpic = double(pic);

subplot(2,2,1);
dpic1 = dpic(1:a(1)/2, 1:a(2)/2, 1:3);
dpic1 = dpic1 * 255 / max(dpic1(:));
newpart1 = uint8(dpic1);
image(newpart1);

subplot(2,2,2);
dpic2 = dpic(1:a(1)/2, a(2)/2+1:a(2), 1:3);
dpic2 = dpic2 * 255 / max(dpic2(:));
newpart2 = uint8(dpic2);
image(newpart2);

subplot(2,2,[3 4]);
dpic3 = dpic(a(1)/2+1:a(1), 1:a(2), 1:3);
dpic3 = dpic3 * 255 / max(dpic3(:));
newpart3 = uint8(dpic3);
image(newpart3);

mean1 = mean(dpic1(:));
mean2 = mean(dpic2(:));
mean3 = mean(dpic3(:));

meanImg1 = uint8(mean1 * ones(size(dpic1)));
meanImg2 = uint8(mean2 * ones(size(dpic2)));
meanImg3 = uint8(mean3 * ones(size(dpic3)));

meanImage = uint8(zeros(a(1), a(2), 3));
meanImage(1:a(1)/2, 1:a(2)/2, :) = meanImg1;
meanImage(1:a(1)/2, a(2)/2+1:a(2), :) = meanImg2;
meanImage(a(1)/2+1:a(1), 1:a(2), :) = meanImg3;

figure;
image(meanImage);
