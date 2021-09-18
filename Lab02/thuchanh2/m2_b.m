X = imread('/home/duy/port/Lab02/thuchanh2/e1.jpg')
X = double(X)

h2 = [1 -1]'
Y2 = imfilter(X,h2,'replicate')
imwrite(Y2,'e2_.png')
imshow(mat2gray(Y2))
imwrite(mat2gray(Y2),'e2show_b.png')