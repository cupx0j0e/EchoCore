% Load the .mat file exported from Python
S = load('frame.mat');

% Extract scan-converted Cartesian image
cart = S.cart;

% Display
figure;
imshow(cart, []);
colormap gray;
axis image off;
title('Ultrasound B-mode (Scan Converted)');

% Optional post-processing
% cart_f = imgaussfilt(cart, 0.8);
% imshow(cart_f, []);

