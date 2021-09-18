X = imread('/home/duy/port/Lab02/thuchanh2/saturn.png')
X = double(X)
X = X/255

Y = AddPeriodicNoise(X)
imshow(Y)
imwrite(Y,'e2.png')
PSNR = psnr(Y,X)
