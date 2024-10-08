% Quantarization of image
close all;
clc;
I = imread("flower2.jpg");
subplot(221);
imshow(I);
title("original Image A");
gray = rgb2gray(I);
subplot(222);
imshow(gray);
title("original image B");

RG = gray;
[r , c] = size(RG);
for i = 1 : r
    for j=i: c
        f = RG(i, j);
        if f <= 64
            RG(i, j ) = 60;
        elseif f>=65 && f<=120
            RG(i , j)= 120;
        elseif f>=65 && f<=192
            RG(i , j)= 190;
        elseif f>=65 && f<256
            RG(i , j)= 250;

        end
    end
end    
subplot(223);
imshow(RG);
title("Four level Quatarization Image");

[r , c] = size(gray);
for i = 1 : r
    for j=i: c
        f = gray(i, j);
        if f <= 127
            gray(i, j ) = 0;
        
        elseif f>=127 && f<256
            gray(i , j)= 255;

        end
    end
end    
subplot(224);
imshow(RG);
title("Two level Quatarization Image");