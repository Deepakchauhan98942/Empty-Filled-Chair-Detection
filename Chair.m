img = imread('C:\Users\DELL\Downloads\classroom.jpeg');  % Replace with actual image file
imshow(img);
title('Original Image');
disp('Crop the EMPTY chair region.');
emptyChair = imcrop(img);  % Use mouse to draw box

disp('Crop the OCCUPIED chair region.');
occupiedChair = imcrop(img);  % Use mouse to draw second box
% Convert both to grayscale for easy analysis
emptyGray = rgb2gray(emptyChair);
occupiedGray = rgb2gray(occupiedChair);

% Find min and max pixel values in both
min_empty = min(emptyGray(:));
max_empty = max(emptyGray(:));
min_occupied = min(occupiedGray(:));
max_occupied = max(occupiedGray(:));

% Display ranges
fprintf('\nEmpty Chair Pixel Range: %d to %d\n', min_empty, max_empty);
fprintf('Occupied Chair Pixel Range: %d to %d\n', min_occupied, max_occupied);
