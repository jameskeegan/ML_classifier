function [accuracy] = test(imagedir_test)
%Test a GMM model uses shapes in imagedir_test
    load('models');
    correct = 0;
    %known = zeros(1, getNumImages(imagedirtest));
    classes = getClasses('images/test');
    known = zeros(1,getNumImages(imagedir_test));
    predictions = zeros(1, length(known));
    count = 0;
    for idx = 1:length(models)
        name = models(idx).name;
        images = dir(sprintf('%s/%s*.gif', imagedir_test, name));
        numImages = getNumImagesForClass(imagedir_test,name);
        for jdx = 1:numImages
            count = count + 1;
            
            imagepath = sprintf('%s/%s', imagedir_test, images(jdx).name);
            choice = classify(imagepath);
            if strcmp(name,choice{1})
                correct = correct + 1;
            end
            known(count) = getIndex(name, classes);
            predictions(count) = getIndex(choice{1}, classes);
        end
    end
    accuracy = (correct / getNumImages(imagedir_test)) * 100;
    
    C = getConfusionMatrix(known, predictions, classes);
    
    figure();
    imshow(C, parula, 'InitialMagnification',10000);
    classes = string(classes);
    set(gca,'XTick',1:numel(classes),'XTickLabel',classes);
    %xticks(classes);
    colorbar
    ylabel('target');
    xlabel('predicted');
    
end