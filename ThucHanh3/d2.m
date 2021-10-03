img = imread('kids.tif');
imgOut = histeq(img);

imhist(imgOut)