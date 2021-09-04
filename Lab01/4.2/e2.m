X1 = imread('/home/duy/Lab01/cameraman.tif')
X1 = double(X1)
X1 = X1/255

p = 0.05
X3 = imnoise(X1,'salt & pepper',p)
imwrite(X3,'e2.png')
PSNR_3 = psnr(Y2_3,X1)
% subplot(1,2,1)
% imshow(X3)
% subplot(1,2,2)
% imshow(Y3)
% 

PSNR = psnr(Y3,X1)

% PSNR = 26.7468
