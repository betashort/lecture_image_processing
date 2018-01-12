# 課題2


ORG=imread('AMEMAN17826009_TP_V4.jpg'); % 原画像の入力
ORG = rgb2gray(ORG); colormap(gray); colorbar;
imagesc(ORG); axis image; % 画像の表示

によって，原画像を読み込み，グレースケールに変換する。
表示した結果を図１に示す．

![原画像](https://github.com/betashort/lecture_image_processing/blob/master/kadai2_image/kadai2_0.jpg)  
図1 原画像

2階調画像は、画像の各画素は256階調持つので、それを2値に分ければ良い。
IMG = ORG>128;

2階調画像の結果を図２に示す．

![原画像](https://github.com/betashort/lecture_image_processing/blob/master/kadai2_image/kadai2_1.jpg)  
図2 2階調画像

同様に原画像を4階調画像は4つ、8階調画像は8つに分ければ良い。
以下にプログラムとその結果を示す。

% 4階調画像の生成
IMG0 = ORG>64;
IMG1 = ORG>128;
IMG2 = ORG>192;
IMG = IMG0 + IMG1 + IMG2;

![原画像](https://github.com/betashort/lecture_image_processing/blob/master/kadai2_image/kadai2_2.jpg)  
図3 4階調画像


% 8階調画像の生成
IMG0 = ORG>32;
IMG1 = ORG>64;
IMG2 = ORG>96;
IMG3 = ORG>128;
IMG4 = ORG>160;
IMG5 = ORG>192;
IMG6 = ORG>224;
IMG = IMG0 + IMG1 +IMG2 + IMG3 + IMG4 + IMG5 + IMG6　;

![原画像](https://github.com/betashort/lecture_image_processing/blob/master/kadai2_image/kadai2_3.jpg)  
図4 8階調画像


このように、階調を減らすと濃淡の差が小さくなるので、被写体を認識しづらくなる。
