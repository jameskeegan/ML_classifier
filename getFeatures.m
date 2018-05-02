function [features] = getFeatures(imagePath, N)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
im = imread(imagePath);

% gets chain code of the image
c = chainCode(im);

angles = c(3,:)*(2*pi/8);
anglesFFT = abs(fft(angles)); %fast fourier transform

features = anglesFFT(1:N);

end

