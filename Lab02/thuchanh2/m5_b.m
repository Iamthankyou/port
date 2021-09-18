X = imread('/home/duy/port/Lab02/thuchanh2/e1.jpg')
X = double(X)

h8_1 = fspecial('log', [15 15], 0.5)
h8_2 = fspecial('log', [15 15], 1)
h8_3 = fspecial('log', [15 15], 1.5)
Y8_1 = imfilter(X,h8_1,'replicate')
Y8_2 = imfilter(X,h8_2,'replicate')
Y8_3 = imfilter(X,h8_3,'replicate')

subplot(1,3,1)
imshow(mat2gray(Y8_1))
subplot(1,3,2)
imshow(mat2gray(Y8_2))
subplot(1,3,3)
imshow(mat2gray(Y8_3))



