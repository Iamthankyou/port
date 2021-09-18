X = ones(256,256)*(128-50)

[w,h] = size(X)

box = 50

X(w/2-(box/2):w/2+(box/2),h/2-(box/2):h/2+(box/2)) =128+50

ShowFilter(X/255,[1 -1])
% 
% imshow(X/255)
% imwrite(X/255, 'e1.jpg')