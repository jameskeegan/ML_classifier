function images = getImagesForClass(idir, class)
    verifyImageDir(idir);
    idir
    images = dir(sprintf('%s/%s*.gif', idir, class));
end