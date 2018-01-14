% 課�?7�?�?イナミ�?クレンジの拡大
% 画�?の�?イナミ�?クレンジを０から２５５にせよ?�?
% 下記�?�プログラ�?である?�?

ORG = imread('AMEMAN17826009_TP_V4.jpg'); % 画像�?�入�?
ORG = rgb2gray(ORG); % 白黒�?淡画像に変換
imagesc(ORG); colormap(gray); colorbar; % 画像�?�表示
pause;
imhist(ORG); % �?度ヒストグラ�?を生成�?�表示
pause;
ORG = double(ORG);
mn = min(ORG(:)); % �?度値の�?小�?�を算�?�
mx = max(ORG(:)); % �?度値の�?大値を算�?�
ORG = (ORG-mn)/(mx-mn)*255;
imagesc(ORG); colormap(gray); colorbar; % 画像�?�表示
pause;
imhist(ORG);
pause;
ORG = uint8(ORG); 
imhist(ORG);
