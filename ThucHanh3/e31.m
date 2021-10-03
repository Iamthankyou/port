img = imread('dark.tif');
imgOut = GammCorr(img,2.2);
subplot(1,2,1);
imshow(img);
subplot(1,2,2);
imshow(imgOut);
