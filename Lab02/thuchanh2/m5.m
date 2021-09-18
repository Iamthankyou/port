X = imread('/home/duy/port/Lab02/thuchanh2/e1.jpg')
X = double(X)

h8 = fspecial('log', [15 15], 1)
Y8 = imfilter(X,h8,'replicate')
imwrite(Y8,'e8.png')
imshow(mat2gray(Y8))
imwrite(mat2gray(Y8),'e7show.png')
