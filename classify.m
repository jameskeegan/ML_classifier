function [classname] = classify(imagepath)
%Classify the image specified for the given image path
    load('models');
    %Assume all models use the same number of features
    N = length(models(1).mean);
    features = getFeatures(imagepath, N);
    maxscore = -inf;
    %Find out which class has the highest score
    for idx = 1:length(models)
        model = models(idx);
        mu = model.mean;
        p = model.prior;
        cov = model.cov;
        score = log(p) - 0.5*log(det(cov)) - 0.5*transpose(features' - mu)*inv(cov)*(features' - mu);
        if score > maxscore
            maxscore = score;
            bestidx = idx;
        end
    end
classname = classes(bestidx);
end
