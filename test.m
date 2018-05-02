function [accuracy] = test(imagedirtest)
%UNTITLED12 Summary of this function goes here
%   Detailed explanation goes here
    load('models');
    correct = 0;
    %known = zeros(1, getNumImages(imagedirtest));
    classes = getClasses('images/test');
    known = zeros(1,getNumImages(imagedirtest));
    predictions = zeros(1, length(known));
    count = 0;
    for idx = 1:length(models)
        name = models(idx).name;
        images = getImagesForClass(imagedirtest,name);
        numImages = getNumImagesForClass(imagedirtest,name);
        for jdx = 1:numImages
            count = count + 1;
            
            imagepath = sprintf('%s/%s', imagedirtest, images(jdx).name);
            choice = classify(imagepath);
            if strcmp(name,choice{1})
                correct = correct + 1;
            end
            known(count) = getIndex(name, classes);
            predictions(count) = getIndex(choice{1}, classes);
        end
    end
    accuracy = (correct / getNumImages(imagedirtest)) * 100;
    C = confusionmat(known, predictions)
end