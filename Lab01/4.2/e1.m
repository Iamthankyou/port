X1 = imread('/home/duy/Lab01/cameraman.tif')
X1 = double(X1)
X1 = X1/255

m = 0
v = 0.01
X2 = imnoise(X1,'gaussian',m,v)

h = fspecial('average',[3,3])
Y2 = imfilter(X2,h,'replicate')
imwrite(Y2,'e2.png')
% subplot(1,2,1)
% imshow(X2)
% subplot(1,2,2)
% imshow(Y2)
% 

PSNR = psnr(Y2,X1)

% PSNR = 24.3464

