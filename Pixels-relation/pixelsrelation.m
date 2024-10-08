
img = imread('house.jpg');
gray_img = rgb2gray(img);


figure;
subplot(2,3,1);
imshow(gray_img);
title('Original Image');

%% 1. 4-Connected and 8-Connected Neighbors

row = 100;
col = 100;


neighbors_4 = [gray_img(row-1, col);  % Above
               gray_img(row+1, col);  % Below
               gray_img(row, col-1);  % Left
               gray_img(row, col+1)]; % Right

disp('4-Connected Neighbors:');
disp(neighbors_4);


neighbors_8 = gray_img(row-1:row+1, col-1:col+1);
disp('8-Connected Neighbors:');
disp(neighbors_8);

%% 2. Pixel Intensity Difference

intensity_diff = abs(gray_img(row, col) - neighbors_8);
disp('Intensity Differences with Neighbors:');
disp(intensity_diff);

%% 3. Convolution for Neighborhood Relationship (Smoothing)

kernel = ones(3, 3) / 9;


smoothed_img = imfilter(gray_img, kernel);


subplot(2,3,2);
imshow(smoothed_img);
title('Smoothed Image');

%% 4. Sobel Edge Detection

Gx = [-1 0 1; -2 0 2; -1 0 1];  
Gy = [-1 -2 -1; 0 0 0; 1 2 1];  


Ix = imfilter(double(gray_img), Gx);
Iy = imfilter(double(gray_img), Gy);


grad_mag = sqrt(Ix.^2 + Iy.^2);


subplot(2,3,3);
imshow(uint8(grad_mag));
title('Edge Detection using Sobel');

%% 5. Correlation Between Two Regions of the Image

region1 = gray_img(50:100, 50:100);
region2 = gray_img(150:200, 150:200);


correlation_value = corr2(region1, region2);
disp('Correlation between two regions:');
disp(correlation_value);

%% 6. Morphological Operation (Dilation)

bw_img = imbinarize(gray_img, 0.5);


se = strel('square', 3);  


dilated_img = imdilate(bw_img, se);


subplot(2,3,4);
imshow(bw_img);
title('Binary Image');

subplot(2,3,5);
imshow(dilated_img);
title('Dilated Image');

%% 7. Display 8-Connected Neighborhood (Visualization)

subplot(2,3,6);
imshow(neighbors_8, []);
title('8-Connected Neighbors');
