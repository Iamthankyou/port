X = ones(200,300)*(128+50)
imshow(X/255)
imwrite(X, 'e3.jpg')