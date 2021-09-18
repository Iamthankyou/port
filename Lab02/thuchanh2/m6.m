X = imread('/home/duy/port/Lab02/thuchanh2/cameraman.tif')
X = double(X)
X = X/255

h1 = [1 -1]
Y1 = imfilter(X,h1,'replicate')

subplot(3,4,1)
imshow(mat2gray(Y1))
title('h1-gradient_a')

h2 = [1 -1]'
Y2 = imfilter(X,h2,'replicate')
subplot(3,4,2)
imshow(mat2gray(Y2))
title('h2-gradient_b')

h3 = [1 0 -1; 2 0 -1; 1 0 -1]
Y3 = imfilter(X,h3,'replicate')
subplot(3,4,3)
imshow(mat2gray(Y3))
title('h3-sobel_a')

h4 = [2 1 0; 1 0 -1; 0 -1 -2]
Y4 = imfilter(X,h4,'replicate')
subplot(3,4,4)
imshow(mat2gray(Y4))
title('h4-sobel_b')

h5 = [1 2 1; 0 0 0 ; -1 -2 -1]
Y5 = imfilter(X,h5,'replicate')
subplot(3,4,5)
imshow(mat2gray(Y5))
title('h5-sobel_c')

h6 = [0 1 2; -1 0 1; -2 -1 0]
Y6 = imfilter(X,h6,'replicate')
subplot(3,4,6)
imshow(mat2gray(Y6))
title('h6-sobel_d')

h7 = 1/8 * [0 1 0; 1 -4 1; 0 1 0]
Y7 = imfilter(X,h7,'replicate')
subplot(3,4,7)
imshow(mat2gray(Y7))
title('h7-laplace')

h8 = fspecial('log', [15 15], 1)
Y8 = imfilter(X,h8,'replicate')
subplot(3,4,8)
imshow(mat2gray(Y8))
title('h8-log')
