X1 = imread('/home/duy/Lab01/cameraman.tif')
X1 = double(X1)
X1 = X1/255

p = 0.05
X3 = imnoise(X1,'salt & pepper',p)
imwrite(X3,'./e3.png')

p= 0.01
X4 = imnoise(X1,'salt & pepper',p)

subplot(1,2,1)
imshow(X3)
subplot(1,2,2)
imshow(X4)

% Phương sai đo độ lệch của dữ liệu so với giá trị trung bình nên càng tăng
% phươn sai thì càng tăng nhiễu.
