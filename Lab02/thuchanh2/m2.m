X = imread('/home/duy/port/Lab02/thuchanh2/cameraman.tif')
X = double(X)
X = X/255

h1 = [1 -1]
Y1 = imfilter(X,h1,'replicate')
% imwrite(Y1,'e2.png')
imshow(mat2gray(Y1))
% imwrite(mat2gray(Y1),'e2show.png')