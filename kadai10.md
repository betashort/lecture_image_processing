# 課題10 画像のエッジ抽出  

ORG=imread('AMEMAN17826009_TP_V4.jpg'); % 原画像の入力  
ORG = rgb2gray(ORG); colormap(gray); colorbar;  
imagesc(ORG); axis image; % 画像の表示  
によって，原画像を読み込み，グレースケールに変換する。
表示した結果を図１に示す。  

![原画像](https://github.com/betashort/lecture_image_processing/blob/master/kadai10_image/kadai10_0.jpg)  
図1 原画像  

IMG = edge(ORG,'prewitt'); %  エッジ抽出（プレウィット法）  
![画像](https://github.com/betashort/lecture_image_processing/blob/master/kadai10_image/kadai10_1.jpg)
図2 プレウィット法  

IMG = edge(ORG,'sobel'); % エッジ抽出（ソベル法）  
![画像](https://github.com/betashort/lecture_image_processing/blob/master/kadai10_image/kadai10_2.jpg)
図３ ソベル法　　

IMG = edge(ORG,'canny'); % エッジ抽出（キャニー法)  
![画像](https://github.com/betashort/lecture_image_processing/blob/master/kadai10_image/kadai10_3.jpg)
図３ キャニー法　　
