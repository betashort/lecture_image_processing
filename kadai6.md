# 課題６　画像の二値化

ORG=imread('AMEMAN17826009_TP_V4.jpg'); % 画像の挿入  
ORG = rgb2gray(ORG);  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示  
より、画像を入力して、グレースケール変換し、それを表示させる。  
![原画像](https://github.com/betashort/lecture_image_processing/blob/master/kadai6_image/kadai6_0.jpg)
図1 原画像  

はじめに、閾値を128とする2値化。　　

IMG = ORG>128; % 128による2値化　　

![画像](https://github.com/betashort/lecture_image_processing/blob/master/kadai6_image/kadai6_1.jpg)
図2　128による2値化  

次に、ディザ法による2値化。  

IMG = dither(ORG); % ディザ法による2値化  

![画像](https://github.com/betashort/lecture_image_processing/blob/master/kadai6_image/kadai6_2.jpg)
図3　ディザ法による2値化  

このようにディザ法を使用することで、画像の被写体を識別しやすくなることがわかる。
