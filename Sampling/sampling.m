% Read the image
img = imread('house.jpg');  % Replace with your image file

% Display the original image
subplot(2,3,2);
imshow(img);
title('Original Image');

% Uniform Sampling
sampling_rate = 4;  % Adjust sampling rate as needed (e.g., sample every 4th pixel)
uniform_sampled_img = img(1:sampling_rate:end, 1:sampling_rate:end, :);

% Display the uniform sampled image
subplot(1,3,1);
imshow(uniform_sampled_img);
title('Uniformly Sampled Image');

% Random Sampling
num_samples = 5000;  % Number of random pixels to sample
rows = size(img, 1);
cols = size(img, 2);

% Generate random pixel indices
rand_row_indices = randi(rows, [num_samples, 1]);
rand_col_indices = randi(cols, [num_samples, 1]);

% Create an empty matrix for the random sampled image
random_sampled_img = uint8(zeros(size(img)));

% Sample random pixels from the original image
for i = 1:num_samples
    random_sampled_img(rand_row_indices(i), rand_col_indices(i), :) = ...
        img(rand_row_indices(i), rand_col_indices(i), :);
end

% Display the random sampled image
subplot(1,3,3);
imshow(random_sampled_img);
title('Randomly Sampled Image');
