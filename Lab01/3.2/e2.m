X1 = imread('/home/duy/Lab01/cameraman.tif')
X1 = double(X1)
X1 = X1/255

m = 0
v = 0.01
X2 = imnoise(X1,'gaussian',m,v)
imwrite(X1,'./3.2/e2.png')

m = 0
v = 0.05
X3 = imnoise(X1,'gaussian',m,v)

subplot(1,2,1)
imshow(X2)
subplot(1,2,2)
imshow(X3)

% Phương sai đo độ lệch của dữ liệu so với giá trị trung bình nên càng tăng
% phươn sai thì càng tăng nhiễu.
