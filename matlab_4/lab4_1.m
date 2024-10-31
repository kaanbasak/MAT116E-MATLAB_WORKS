newPic = imread("peppers.png");
image(newPic);
size(newPic);

red = newPic(:,:,1);
green = newPic(:,:,2);
blue = newPic(:,:,3);

lred = find(red < 127);
ured = find(red >= 127);
red(lred) = 0;
red(ured) = 255;

lgreen = find(green < 127);
ugreen = find(green >= 127);
green(lgreen) = 0;
green(ugreen) = 255;

lblue = find(blue < 127);
ublue = find(blue >= 127);
blue(lblue) = 0;
blue(ublue) = 255;

newPic(:,:,1)=red;
newPic(:,:,2)=green;
newPic(:,:,3)=blue;
figure;
image(newPic);








