function images = getImagesForClass(idir, class)
    verifyImageDir(idir);
    images = dir(sprintf('%s/%s*.gif', idir, class));
end