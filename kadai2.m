% èª²é¡ï¼ã??éèª¿æ°ã¨çä¼¼è¼ªé­
% ?¼éèª¿?¼ï¼éèª¿?¼ï¼éèª¿ã®ç»åãçæ?ããï¼?
% ä¸è¨ã?¯ãµã³ãã«ãã­ã°ã©ã?ã§ãã?¼?
% èª²é¡ä½æ?ã«ããã£ã¦ã¯ãLennaãä»¥å¤ã?®ç»åãç¨ã?ãï¼?

clear; % å¤æ°ã®ãªã¼ã«ã¯ãªã¢

ORG=imread('AMEMAN17826009_TP_V4.jpg'); % åç»åã?®å¥å?
ORG = rgb2gray(ORG); colormap(gray); colorbar;
imagesc(ORG); axis image; % ç»åã?®è¡¨ç¤º
pause; % ä¸?æåæ­¢

% ?¼éèª¿ç»åã?®çæ??
IMG = ORG>128;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;

% ?¼éèª¿ç»åã?®çæ??
IMG0 = ORG>64;
IMG1 = ORG>128;
IMG2 = ORG>192;
IMG = IMG0 + IMG1 + IMG2;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;

% ?¼éèª¿ã«ã¤ã?ã¦ã¯?¼åèªæ¤è¨ãã¦ãã ãã?¼?
%12/18ç·¨é?
IMG0 = ORG>32;
IMG1 = ORG>64;
IMG2 = ORG>96;
IMG3 = ORG>128;
IMG4 = ORG>160;
IMG5 = ORG>192;
IMG6 = ORG>224;
IMG7 = ORG>256;
IMG = IMG0 + IMG1 +IMG2 + IMG3 + IMG4 + IMG5 + IMG6 + IMG7;
imagesc(IMG); colormap(gray); colorbar; axis image;
pause;
