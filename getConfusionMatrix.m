function [C] = getConfusionMatrix(known,predictions, classes)
%Returns confusion matrix from the testing of a classifier

C = zeros(length(classes),length(classes));

for i = 1:length(known)
    C(known(i), predictions(i)) = C(known(i), predictions(i)) + 1;
end
end

