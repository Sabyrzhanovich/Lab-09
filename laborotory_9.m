%L=imread('images.jpg');
%L1=imrotate(L,35,'bicubic');
%figure,imhist(L);
%L1=histeq(L);
%H=fspecial('unsharp');
%h=fspecial('laplacian',.5);
%L1=imfilter(L,h,'replicate');
%h=fspecial('log', 3, .5);
%S = qtdecomp(I,.27);
%blocks = repmat(uint8(0),size(S));
%BW = roicolor(I,112,225);
L=imread('images.jpg');
L=L(:,:,1);
imshow(L);
BW1=L<150;
figure,imshow(BW1);
BW2=bwmorph(BW1,'erode',12);
figure,imshow(BW2);
BW2=bwmorph(BW2,'thicken',Inf);
figure,imshow(BW2);
BW1=BW1&BW2;
figure,imshow(BW1);