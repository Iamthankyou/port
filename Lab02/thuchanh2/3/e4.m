X = imread('/home/duy/port/Lab02/thuchanh2/saturn.png')
X = double(X)
X = X/255

Y = AddPeriodicNoise(X)
FY = fft2(Y)
FY = fftshift(FY)
[w,h] = size(FY)

Z = ones(w,h)

Z(235:245,315:325) = 0

Z(185:195,315:325) = 0

Z(290:300,315:325) = 0

imshow(Z)
