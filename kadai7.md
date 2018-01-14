# 課題7 ダイナミックレンジの拡大

ORG = imread('AMEMAN17826009_TP_V4.jpg'); % 画像の入力  
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換  
によって、原画像を読み込み，グレースケールに変換する。
表示した結果を図１に示す。
![原画像](https://github.com/betashort/lecture_image_processing/blob/master/kadai7_image/kadai7_0.jpg)  
図１　原画像　　

imhist(ORG); % 濃度ヒストグラムを生成、表示
により濃度ヒストグラムを表示する。図２に示す。
![画像](https://github.com/betashort/lecture_image_processing/blob/master/kadai7_image/kadai7_1.jpg)  
図２　原画像の濃度ヒストグラム　　

ORG = double(ORG);  
double型に変換する。
mn = min(ORG(:));  
濃度値の最小値を算出  
mx = max(ORG(:));  
濃度値の最大値を算出  

ORG = (ORG-mn)/(mx-mn) * 255;  
(mx-mn)で割ることで、全濃度領域を使用できるようにする。　　
これが、ダイナミックレンジの拡大である。
コントラストの低い画像は、見づらく、対象物の抽出や、認識が難しくなる。  
全濃度範囲を使用することにより、そのコントラスト対策となる。

imagesc(ORG); colormap(gray); colorbar;　　
により、画像を表示する。
![画像](https://github.com/betashort/lecture_image_processing/blob/master/kadai7_image/kadai7_2.jpg)  
図3　ダイナミックレンジの拡大  

ORG = uint8(ORG);   
により、8ビット符号なし整数へ変換する。  
ダイナミックレンジの拡大では、double型を使用した。  
これは、ヒストグラムのn個のビンは、それぞれの幅が、データ型によって決まっている。  
double型だと、およそ0から1の範囲のヒストグラムになる。  
![画像](https://github.com/betashort/lecture_image_processing/blob/master/kadai7_image/kadai7_4.jpg)  
図4 double型を引数としたヒストグラム  

unit8()にすることで以下のようなヒストグラムになる。  
![画像](https://github.com/betashort/lecture_image_processing/blob/master/kadai7_image/kadai7_3.jpg)  
図5 unit8を引数としたヒストグラム　　

　
