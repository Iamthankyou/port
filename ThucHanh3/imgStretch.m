function f = imgStretch(I, t1, t2)
[M,N,z] = size(I);
if(z>1)
  I=rgb2gray(I);
end

R=reshape(I,1,M*N);
lvl=1:255;
newImg= zeros(1,M*N);
for i=1:255
    index=find(lvl(i)==R);
    newImg(index)=(R(index)-t1).*(255/(t2-t1));
end
newImg=uint8(reshape(newImg,M,N));
f= newImg;
end
 