
X1 = imread('/home/duy/Lab01/cameraman.tif')
X1 = double(X1)
X1 = X1/255

m = 0
v = 0.01
X2 = imnoise(X1,'gaussian',m,v)

p = 0.05
X3 = imnoise(X1,'salt & pepper',p)
% 
% h_x2 = fspecial('gaussian',[3,3],2)
% Y2_1 = imfilter(X2,h_x2,'replicate')
% 
% h_x2 = fspecial('gaussian',[3,3],1.5)
% Y2_2 = imfilter(X2,h_x2,'replicate')
% 
% h_x2 = fspecial('gaussian',[3,3],1)
% Y2_3 = imfilter(X2,h_x2,'replicate')
% 
% h_x2 = fspecial('gaussian',[3,3],0.5)
% Y2_4 = imfilter(X2,h_x2,'replicate')


Y2_1 = medfilt2(X3,[3 3])
Y2_2 = medfilt2(X3,[5 5])
Y2_3 = medfilt2(X3,[7 7])

PSNR_1 = psnr(Y2_1,X1)
PSNR_2 = psnr(Y2_2,X1)
PSNR_3 = psnr(Y2_3,X1)
% PSNR_4 = psnr(Y2_4,X1)
% psnr1_x2 = 24.3815, psnr2_x2=22.6191, psnr_x23=21.4945

% h_x2_gauss = fspecial('gaussian',[3,3],2)
% Y2_1 = imfilter(X2,h_x2_gauss,'replicate')
% psnr_1 = psnr(Y2_1,X1)
% % psnr_1 = 24.5731
% % 
% h_x2_gauss = fspecial('gaussian',[3,3],1.5)
% Y2_1 = imfilter(X2,h_x2_gauss,'replicate')
% psnr_1 = psnr(Y2_1,X1)
% % psnr_2 = 24.7183
% % 
% h_x2_gauss = fspecial('gaussian',[3,3],1)
% Y2_1 = imfilter(X2,h_x2_gauss,'replicate')
% psnr_1 = psnr(Y2_1,X1)
% psnr_3 = 20.8334

% h_x2_gauss = fspecial('gaussian',[3,3],0.5)
% Y2_1 = imfilter(X2,h_x2_gauss,'replicate')
% psnr_1 = psnr(Y2_1,X2)
% psnr_4 = 27.1972

% Y3 = medfilt2(X2,[3 3])
% f = psnr(Y3,X2)
