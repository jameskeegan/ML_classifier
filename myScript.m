results = zeros(1,20);

for i = 1:length(results)
    results(i) = run(i);
end

results
title('Changing N')
xlabel('N value') % x-axis label
ylabel('Accuracy (in %)') % y-axis label