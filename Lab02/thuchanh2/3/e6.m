X = imread('/home/duy/port/Lab02/thuchanh2/saturn.png')
X = double(X)
X = X/255

Y = AddPeriodicNoise(X)
FY = fft2(Y)
FY = fftshift(FY)
[w,h] = size(FY)

% FY_1 = ifftshift(FY)
% FY_1 = ifft2(FY_1)
% imshow(Y)

Z = ones(w,h)

Z(190:195,320:325) = 0

Z(285:290,320:325) = 0


FY2 = FY.*Z

FY2 = ifftshift(FY2)
FY2 = ifft2(ifftshift(FY2))

imshow(abs(FY2))

PSNR = psnr(FY2,X)
