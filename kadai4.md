# 課題4 画像のヒストグラム

ORG=imread('AMEMAN17826009_TP_V4.jpg'); % 画像の入力  
ORG=rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換  
より、画像を入力する。　　
![原画像](https://github.com/betashort/lecture_image_processing/blob/master/kadai4_image/kadai4_0.jpg)
図1　原画像  

imhist(ORG); % ヒストグラムの表示  
より、ヒストグラムを表示する。　　

![画像](https://github.com/betashort/lecture_image_processing/blob/master/kadai4_image/kadai4_1.jpg)
図2　ヒストグラム  
