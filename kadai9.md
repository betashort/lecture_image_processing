# 課題９ メディアンフィルタと先鋭化  

ORG=imread('AMEMAN17826009_TP_V4.jpg'); % 原画像の入力  
ORG = rgb2gray(ORG); colormap(gray); colorbar;  
imagesc(ORG); axis image; % 画像の表示  
によって，原画像を読み込み，グレースケールに変換する。
表示した結果を図１に示す。  

![原画像](https://github.com/betashort/lecture_image_processing/blob/master/kadai9_image/kadai9_0.jpg)  
図1 原画像

ORG = imnoise(ORG,'salt & pepper',0.02); % ノイズ添付  

![画像](https://github.com/betashort/lecture_image_processing/blob/master/kadai9_image/kadai9_1.jpg)  
図2 ノイズを添付  

IMG = filter2(fspecial('average',3),ORG); % 平滑化フィルタで雑音除去  
![画像](https://github.com/betashort/lecture_image_processing/blob/master/kadai9_image/kadai9_2.jpg)
図3 平滑化フィルタ  

IMG = medfilt2(ORG,[3 3]); % メディアンフィルタで雑音除去  
![画像](https://github.com/betashort/lecture_image_processing/blob/master/kadai9_image/kadai9_3.jpg)
図4 メディアンフィルタ  
f=[0,-1,0;-1,5,-1;0,-1,0]; % フィルタの設計  
IMG = filter2(f,IMG,'same'); % フィルタの適用  
![画像](https://github.com/betashort/lecture_image_processing/blob/master/kadai9_image/kadai9_4.jpg)
図5 フィルタ  
