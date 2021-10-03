img = imread('dollar.tif')
Y = bitPlaneSlicing(img)

b8 = Y(:,:,8)
b7 = Y(:,:,7)
img87 = b8*128 + b7*64
b6 = Y(:,:,6)
b5 = Y(:,:,5)
