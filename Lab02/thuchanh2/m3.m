X = imread('/home/duy/port/Lab02/thuchanh2/e1.jpg')
X = double(X)

h3 = [1 0 -1; 2 0 -1; 1 0 -1]
Y3 = imfilter(X,h3,'replicate')
imwrite(Y3,'e3.png')
imshow(mat2gray(Y3))
imwrite(mat2gray(Y3),'e3show.png')