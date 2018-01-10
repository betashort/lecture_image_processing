% 課�?10 画像�?�エ�?ジ抽出 
% 次のプログラ�?を参�?にして?��エ�?ジ抽出を体験せよ�?
% �?自?��Lenna以外�?�画像を用�?よ�? 
% �?

ORG = imread('AMEMAN17826009_TP_V4.jpg'); % 原画像�?�入�?
ORG = rgb2gray(ORG); %カラーからグレイへの変換
imagesc(ORG); colormap('gray'); colorbar;% 画像表示
pause; % �?時停止

IMG = edge(ORG,'prewitt'); % エ�?ジ抽出?���?�レウィ�?ト法�?
imagesc(IMG); colormap('gray'); colorbar;% 画像表示
pause; % �?時停止

IMG = edge(ORG,'sobel'); % エ�?ジ抽出?��ソベル法�?
imagesc(IMG); colormap('gray'); colorbar;% 画像表示
pause; % �?時停止

IMG = edge(ORG,'canny'); % エ�?ジ抽出?��キャニ�?�法�?
imagesc(IMG); colormap('gray'); colorbar;% 画像表示
pause; % �?時停止



