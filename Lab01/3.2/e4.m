X1 = imread('/home/duy/Lab01/cameraman.tif')

[w,h] = size(X1)

X1 = double(X1)
X1 = X1/255

m = 0
v = 0.01
X2 = imnoise(X1,'gaussian',m,v)

p = 0.05
X3 = imnoise(X1,'salt & pepper',p)

figure

subplot(1,3,1)
plot(1:w,X1(128,:))
subplot(1,3,2)
plot(1:w,X2(128,:))
subplot(1,3,3)
plot(1:w,X3(128,:))

