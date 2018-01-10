% 課題１�??標本化間隔と空間解像度
% 画像を�?ウンサンプリングして?��標本化間隔を大きくして?�?
% 表示せよ?�?
% 下記�?�サンプルプログラ�?である?�?
% 課題作�?�にあたっては「Lenna」以外�?�画像を用�?よ�?

clear; % 変数のオールクリア
%画像をかえるだ�?!!
ORG=imread('AMEMAN17826009_TP_V4.jpg'); % 原画像�?�入�?
imagesc(ORG); axis image; % 画像�?�表示
pause; % �?時停止

IMG = imresize(ORG,0.5); % 画像�?�縮�?
IMG2 = imresize(IMG,2,'box'); % 画像�?�拡大
imagesc(IMG2); axis image; % 画像�?�表示
pause; % �?時停止

IMG = imresize(IMG,0.5); % 画像�?�縮�?
IMG2 = imresize(IMG,4,'box'); % 画像�?�拡大
imagesc(IMG2); axis image; % 画像�?�表示
pause; % �?時停止

IMG = imresize(IMG,0.5); % 画像�?�縮�?
IMG2 = imresize(IMG,8,'box'); % 画像�?�拡大
imagesc(IMG2); axis image; % 画像�?�表示
pause; % �?時停止

IMG = imresize(IMG,0.5); % 画像�?�縮�?
IMG2 = imresize(IMG,16,'box'); % 画像�?�拡大
imagesc(IMG2); axis image; % 画像�?�表示
pause; % �?時停止

IMG = imresize(IMG,0.5); % 画像�?�縮�?
IMG2 = imresize(IMG,32,'box'); % 画像�?�拡大
imagesc(IMG2); axis image; % 画像�?�表示
