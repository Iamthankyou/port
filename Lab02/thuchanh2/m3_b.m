X = imread('/home/duy/port/Lab02/thuchanh2/e1.jpg')
X = double(X)

h4 = [2 1 0; 1 0 -1; 0 -1 -2]
Y4 = imfilter(X,h4,'replicate')
imwrite(Y4,'e4.png')
imshow(mat2gray(Y4))
imwrite(mat2gray(Y4),'e4show.png')