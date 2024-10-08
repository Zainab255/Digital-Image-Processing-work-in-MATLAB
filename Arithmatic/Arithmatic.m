%Arithmetic
clc;
a = imread("flower1.tif"); %Read Images
b = imread("flower2.jpg");

I = imadd(a,b);              % Use inbuilt MatLab functions to Add and Subtract A & B.
Y = imsubtract(a,b);
Z = mean2(a); %Mean of all pixel values of Image A.
disp(Z);
p = a+200;
disp(p);
V = a.*2; %Change the mean value in order to change the brightness.
B = a./2;
subplot(3,3,1);
imshow(a);
title('Original image A');
subplot(3,3,3);
imshow(b);
title('Original image B');
subplot(3,3,4);
imshow(I);
title('Added image A+B');
subplot(3,3,5);
imshow(Y);
title('Subtracted image A-B');
subplot(3,3,5);
imshow(p);
title('Brightned Image A');
subplot(3,3,6);
imshow(V);
title('Darkened Image A');
subplot(3,3,7);
imshow(B);

%mean value obtained=118.7245