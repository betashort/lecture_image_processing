% 課題６　画像の二値化
% 画像を二値化せよ．
% 下記はプログラムである．

clear; % 変数のオールクリア
ORG=imread('AMEMAN17826009_TP_V4.jpg'); % 画像の挿入
ORG = rgb2gray(ORG);
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
pause; % 一時停止


IMG = ORG>128; % 128による2値化
imagesc(IMG); colormap(gray); colorbar; % 画像の表示
pause;

IMG = dither(ORG); % ディザ法による2値化
imagesc(IMG); colormap(gray); colorbar; % 画像の表示
