function accuracy = testClassifierAccuracy(imagedirtest)
imagedirtest
load('models');
totalCorrect = 0;
total = 0;
for idx = 1:length(models)
    name = models(idx).name;
    images = getImagesForClass(imagedirtest,name);
    
    for jdx = 1:length(images)
        total = total + 1;
        strcat(imagedirtest,images(jdx).name)
        imagedirtest
        if(strcmp(classify(strcat(imagedirtest,images(jdx).name)),name))
            totalCorrect = totalCorrect + 1;
        end
    end
end
total
accuracy = (totalCorrect / getNumImages(imagedirtest)) * 100;