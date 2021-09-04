X = ones(200,300)*(128-50)

[w,h] = size(X)

X(w/2-5:w/2+5,:) = 0
X(:,h/2-5:h/2+5) = 255

imshow(X/255)
imwrite(X, 'e6.png')