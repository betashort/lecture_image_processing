% èª²é¡?10 ç»åã?®ã¨ã?ã¸æ½åº 
% æ¬¡ã®ãã­ã°ã©ã?ãåè?ã«ãã¦?¼ã¨ã?ã¸æ½åºãä½é¨ããï¼?
% å?èª?¼Lennaä»¥å¤ã?®ç»åãç¨ã?ãï¼? 
% ä¾?

ORG = imread('AMEMAN17826009_TP_V4.jpg'); % åç»åã?®å¥å?
ORG = rgb2gray(ORG); %ã«ã©ã¼ããã°ã¬ã¤ã¸ã®å¤æ
imagesc(ORG); colormap('gray'); colorbar;% ç»åè¡¨ç¤º
pause; % ä¸?æåæ­¢

IMG = edge(ORG,'prewitt'); % ã¨ã?ã¸æ½åº?¼ã?ã¬ã¦ã£ã?ãæ³ï¼?
imagesc(IMG); colormap('gray'); colorbar;% ç»åè¡¨ç¤º
pause; % ä¸?æåæ­¢

IMG = edge(ORG,'sobel'); % ã¨ã?ã¸æ½åº?¼ã½ãã«æ³ï¼?
imagesc(IMG); colormap('gray'); colorbar;% ç»åè¡¨ç¤º
pause; % ä¸?æåæ­¢

IMG = edge(ORG,'canny'); % ã¨ã?ã¸æ½åº?¼ã­ã£ãã?¼æ³ï¼?
imagesc(IMG); colormap('gray'); colorbar;% ç»åè¡¨ç¤º
pause; % ä¸?æåæ­¢



