% 課題３　閾値処理
% 閾値を4パターン設定し,閾値処理た画像を示せ．
% 下記はプログラムである．
clear; % 変数のオールクリア

ORG=imread('AMEMAN17826009_TP_V4.jpg'); % 画像の入力
ORG= rgb2gray(ORG); %　カラー画像を白黒濃淡画像へ変換

imagesc(ORG); colormap(gray); colorbar; % 画像の表示
pause;

IMG = ORG > 64; % 輝度値64以上の画像を1, その他を0に変化
imagesc(IMG); colormap(gray); colorbar;
pause;

IMG = ORG > 96;
imagesc(IMG); colormap(gray); colorbar;
pause;

IMG = ORG > 128;
imagesc(IMG); colormap(gray); colorbar;
pause;

IMG = ORG > 192;
imagesc(IMG); colormap(gray); colorbar;
