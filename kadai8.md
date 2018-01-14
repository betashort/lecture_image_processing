# 課題8 ラベリング  

ORG=imread('AMEMAN17826009_TP_V4.jpg'); % 原画像の入力  
ORG = rgb2gray(ORG); colormap(gray); colorbar;  
imagesc(ORG); axis image; % 画像の表示  
によって，原画像を読み込み，グレースケールに変換する。
表示した結果を図１に示す。  

![原画像](https://github.com/betashort/lecture_image_processing/blob/master/kadai8_image/kadai8_0.jpg)  
図1 原画像  

IMG = ORG > 128;  
閾値128で2値化する。　　
![画像](https://github.com/betashort/lecture_image_processing/blob/master/kadai8_image/kadai8_1.jpg)
図2　２値画像  

IMG = bwlabeln(IMG);
ラベリングをする。
![画像](https://github.com/betashort/lecture_image_processing/blob/master/kadai8_image/kadai8_2.jpg)
図3 ラベリング  
