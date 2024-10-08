% read the image
I = imread('flower1.jpg');

% display the image
imshow(I);
% pixel info in image
impixelinfo;

% size of image
image_size = size(I);
disp('Image Size:');
disp(image_size);


if (30 <= image_size(1)) && (40 <= image_size(2))
    pixel_value = impixel(I, 40, 30);  % Note that the order is (x, y), i.e., (col, row)
    disp('Pixel value at (30, 40):');
    disp(pixel_value);
else
    disp('Pixel coordinates out of bounds');
end
