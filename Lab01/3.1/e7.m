X = ones(200,300)*(128+50)

[w,h] = size(X)

box = 30

X(w/2-(box/2):w/2+(box/2),h/2-(box/2):h/2+(box/2)) = 0

imshow(X/255)
imwrite(X, 'e7.png')