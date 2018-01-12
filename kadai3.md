#　課題3　閾値処理

ORG=imread('AMEMAN17826009_TP_V4.jpg'); % 画像の入力  
ORG= rgb2gray(ORG); %　カラー画像を白黒濃淡画像へ変換  
により、原画像を入力し、グレースケールに変換する。
原画像を以下に示す。  

![原画像](https://github.com/betashort/lecture_image_processing/blob/master/kadai3_image/kadai3_0.jpg)  
図1 原画像  

輝度値64以上を1,その他を0に２値化する。  
IMG = ORG > 64;  
![画像](https://github.com/betashort/lecture_image_processing/blob/master/kadai3_image/kadai3_1.jpg)
図2 閾値64  

上記の輝度値の設定を96、128、192以上にした場合の結果を以下に示す。  
IMG = ORG > 96;  
![画像](https://github.com/betashort/lecture_image_processing/blob/master/kadai3_image/kadai3_2.jpg)
図3 閾値96  

IMG = ORG > 128;  
![画像](https://github.com/betashort/lecture_image_processing/blob/master/kadai3_image/kadai3_3.jpg)
図4 閾値128  

IMG = ORG > 192;  
![画像](https://github.com/betashort/lecture_image_processing/blob/master/kadai3_image/kadai3_4.jpg)

閾値が64では、被写体の輪郭がはっきりしていない。閾値が96、128では64と比べ、輪郭がはっきりしていることがわかる。閾値が192では、輝度値0の範囲が多いため、輪郭がはっきりしない。　　
このように、閾値によって画像の表現が変わることがわかる。　　
