X = imread('/home/duy/port/Lab02/thuchanh2/e1.jpg')
X = double(X)

h7 = 1/8 * [0 1 0; 1 -4 1; 0 1 0]
Y7 = imfilter(X,h7,'replicate')
imwrite(Y7,'e7.png')
imshow(mat2gray(Y7))
imwrite(mat2gray(Y7),'e7show.png')
