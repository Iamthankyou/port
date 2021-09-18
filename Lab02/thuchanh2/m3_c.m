X = imread('/home/duy/port/Lab02/thuchanh2/e1.jpg')
X = double(X)

h5 = [1 2 1; 0 0 0; -1 -2 -1]
Y5 = imfilter(X,h5,'replicate')
imwrite(Y5,'e5.png')
imshow(mat2gray(Y5))
imwrite(mat2gray(Y5),'e5show.png')