results = zeros(1,100);

for i = 1:length(results)
    i
    results(i) = run(i);
end

plot(results)
title('Testing accuray when using different number of features (N)')
xlabel('N values') % x-axis label
ylabel('Accuracy (in %)') % y-axis label

% for 80-20 -- peaks at 4, 9, and 11 (93.18181%); levels off at 44.3182% at
% 77


% for orig -- peaks at 5,6 (81.9005); levels off at 44.7964% at 50