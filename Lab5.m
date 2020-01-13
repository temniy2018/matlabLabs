Im=zeros(800,800);
%mkdir LAB5;
%cd LAB5;
imwrite(Im,gray(256),'out_img_1.bmp');

R=imnoise(Im,'gaussian');
R=255*R;
imwrite(R,gray(256),'out_img.bmp');
Im=R;

saveas(histogram(R),'DIP/Lab2/histogramm.bmp','bmp');

imshow(Im);
X=imread('img.bmp', 'bmp');
p=imnoise(X, 'gaussian');
imwrite(p, 'DIP/Lab2/img4result.bmp');


p2=imresize(p,2,'nearest');
imwrite(p2,'DIP/Lab2/img5x2result.bmp')
imshow(p2);
p05=imresize(p,0.5,'bicubic');
imwrite(p05,'DIP/Lab2/img5x05res.bmp');
imshow(p05);


X6=imread('DIP/Lab2/imgn6.bmp', 'bmp');
p6=imnoise(X6, 'gaussian');
imwrite(p6, 'DIP/Lab2/img6result.bmp');


X6otrG=flipud(X6);
p6otrG=imnoise(X6otrG, 'gaussian');
imwrite(p6otrG, 'DIP/Lab2/img6resultOtrG.bmp');

X6otrV=fliplr(X6);
p6otrV=imnoise(X6otrV, 'gaussian');
imwrite(p6otrV, 'DIP/Lab2/img6resultOtrV.bmp');


X6rot=fliplr(X6);
p6rot=imrotate(imnoise(X6rot, 'gaussian'), 45);
imwrite(p6rot, 'DIP/Lab2/img6resultRot.bmp');

F=imread('DIP/Lab2/Fon/fon.jpg');
F1=F/4;
imwrite(F,'DIP/Lab2/fon_o.jpg');
imwrite(F1,'DIP/Lab2/fon_1.jpg');

F2=rgb2gray(F1);
F2=imnoise(F2,'gaussian')*255;
F2=insertShape(F2,'Polygon',[10 80, 50 10, 130 10, 170 80, 130 150, 50 150],'LineWidth', 5,'Color','w');
F2=insertShape(F2,'FilledPolygon',[50 40, 130 40, 130 120, 50 120 ],'Opacity',1,'Color','w');
F2=insertShape(F2,'Polygon',[790 720, 750 790, 710 720],'LineWidth', 5,'Color','w');
imwrite(F2,'DIP/Lab2/fonRes.bmp');

F3=255-F2;
imwrite(F4,'DIP/Lab2/fonResNegative.bmp');

F4=rgb2gray(F1);
F4=imnoise(F4,'gaussian')*255;
F4=insertShape(F4,'FilledRectangle',[ 450 450 150 150 ],'Opacity',1,'Color','w');
imwrite(F4,'DIP/Lab2/fonResJarc.bmp');

imwrite(F3-F2,'DIP/Lab2/fonRazn.bmp')