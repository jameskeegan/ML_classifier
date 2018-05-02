dataMatrix = rand(10,5);
mu = mean(dataMatrix);
mu2 = calcMean(dataMatrix); % should output 1 x n
if isequal(mu,mu2)
    disp('mu = mu2: true')
else
    disp('mu != mu2: false')
end

C = cov(dataMatrix);
C2 = calcCov(dataMatrix); % should output n x n

if isequal(C,C2)
    disp('C = C2: true')
else
    disp('C != C2: false')
    C
    C2
end