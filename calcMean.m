function [ mu ] = calcMean( dataMatrix )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    %mu = mean(dataMatrix);
    
    
    [m,n] = size(dataMatrix);
    mu = zeros(1,n);
    
    for i = 1:m
        for j = 1:n
            mu(1,j) = mu(1,j) + dataMatrix(i,j);
        end
    end
    
    mu = mu / m;
    

end

