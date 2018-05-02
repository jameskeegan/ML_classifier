function [accuracy] = test(imagedirtest)
%UNTITLED12 Summary of this function goes here
%   Detailed explanation goes here
    load('models');
    correct = 0;
    total = 0;
    for idx = 1:length(models)
        name = models(idx).name;
        images = getImagesForClass(imagedirtest,name);
        numImages = getNumImagesForClass(imagedirtest,name);
        for jdx = 1:numImages
            total = total + 1;
            imagepath = sprintf('%s/%s', imagedirtest, images(jdx).name);
            name
            choice = classify(imagepath)
            if strcmp(name,choice{1})
                correct = correct + 1;
            end
        end
    end
    accuracy = (correct / getNumImages(imagedirtest)) * 100;
    total
end