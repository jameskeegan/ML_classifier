function numImages = getNumImages(imagedirtest)
    verifyImageDir(imagedirtest);
    imagelist = dir(sprintf('%s/*.gif', imagedirtest));
    numImages = length(imagelist);
end