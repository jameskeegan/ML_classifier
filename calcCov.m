function [ C2 ] = calcCov( dataMatrix )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

    [m,n] = size(dataMatrix);
    C2 = zeros(n,n);
    
    mu = calcMean(dataMatrix);
    
   for i = 1:n
       for j = i:n
           x = dataMatrix(:,i) - mu(i);
           y = dataMatrix(:,j) - mu(j);
           out = sum(x .* y);
           C2(i,j) = out;
           C2(j,i) = out;
       end
   end
   
   % (1/(m-1)) * 
   C2 = C2/(m-1);
end

