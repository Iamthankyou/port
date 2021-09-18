X = imread('/home/duy/port/Lab02/thuchanh2/saturn.png')
X = double(X)
X = X/255

Y = AddPeriodicNoise(X)
FY = fft2(Y)
FY = fftshift(FY)
FY = mat2gray(10*log10(abs(FY)+0.00001))

% FY(240:245,320:325) = 0

FY(190:195,320:325) = 0

FY(285:290,320:325) = 0

imshow(FY)

h = gca;
h.Visible = 'On';

% imwrite(Y,'e2.png')
