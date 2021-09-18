X = imread('/home/duy/port/Lab02/thuchanh2/e1.jpg')
X = double(X)

h6 = [0 1 2; -1 0 1; -2 -1 0]
Y6 = imfilter(X,h6,'replicate')
imwrite(Y6,'e6.png')
imshow(mat2gray(Y6))
imwrite(mat2gray(Y6),'e6show.png')