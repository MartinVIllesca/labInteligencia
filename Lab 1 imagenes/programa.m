%clear
%%% MArbles
%imagen = imread('marbles.JPG');
%figure(); imshow(imagen);
%imagen_gris = rgb2gray(imagen);
%figure(); imshow(imagen_gris);
%histogram(imagen_gris); axis('tic'); set(gca, 'linewidth', 2, 'fontsize', 16);
%xlabel('intensidad', 'fontsize', 16)
%
%umbral50 = imagen_gris > 0;
%%umbral50 = ~(imagen_gris.*umbral50 < 50);
%figure(); imshow(umbral50); title('umbral 50', 'fontsize', 18);
%umbral100 = imagen_gris > 100;
%figure(); imshow(umbral100); title('umbral 100', 'fontsize', 18);
%umbral100 = imagen_gris > 150;
%%umbral100 = ~(imagen_gris.*umbral100 < 200);
%figure(); imshow(umbral100); title('umbral 150', 'fontsize', 18);
%umbral100 = imagen_gris > 200;
%figure(); imshow(umbral100); title('umbral 200', 'fontsize', 18);
%umbral100 = imagen_gris > 250;
%figure(); imshow(umbral100); title('umbral 250', 'fontsize', 18);
%
%%% Marbles verdes
%imagen_verde = imagen(:,:,2);
%figure(); imshow(imagen_verde);
%histogram(imagen_verde); axis('tic'); set(gca, 'linewidth', 2, 'fontsize', 16);
%xlabel('intensidad', 'fontsize', 16)
%
%umbral100_1 = imagen_verde > 50;
%figure(); imshow(umbral100_1); title('umbral 50', 'fontsize', 18);
%umbral50 = imagen_verde > 100;
%figure(); imshow(umbral50); title('umbral 100', 'fontsize', 18);
%umbral100 = imagen_verde > 150;
%figure(); imshow(umbral100); title('umbral 150', 'fontsize', 18);
%umbral200 = imagen_verde > 200;
%figure(); imshow(umbral200); title('umbral 200', 'fontsize', 18);
%umbral200 = imagen_verde > 250;
%figure(); imshow(umbral200); title('umbral 250', 'fontsize', 18);
%%
%clear
%%% Contraste
%img_old = imread('old.jpg');
%histogram(img_old); axis('tic'); set(gca, 'linewidth', 2, 'fontsize', 20);
%xlabel('intensidad', 'fontsize', 20)
%figure();axis off
%set(gca, 'xcolor', 'w', 'ycolor', 'w', 'xtick', [], 'ytick', [])
%imshow(img_old);
%
%minimo = min(min(img_old));
%img_new = img_old - minimo;
%histogram(img_new); axis('tic'); set(gca, 'linewidth', 2, 'fontsize', 20);
%xlabel('intensidad', 'fontsize', 20)
%maximo = max(max(img_new));
%img_new2 = img_new.*(255/maximo);
%histogram(img_new2); axis('tic'); set(gca, 'linewidth', 2, 'fontsize', 20);
%xlabel('intensidad', 'fontsize', 20)
%figure(); imshow(img_new2);

%clear
%%% FFT2d
%pes = rgb2gray(imread('pessoa.png'));
%figure(); imshow(pes);
%pesFou = abs(fft2(pes));
%figure(); imshow(pesFou);
%disp(max(max(pesFou)));
%disp(min(min(pesFou)));
%hist(pesFou); axis('tic'); set(gca, 'linewidth', 2, 'fontsize', 20);
%xlabel('intensidad', 'fontsize', 20)
%
%maximoFFT = max(max(pesFou));
%C = 255/log(1+(abs(maximoFFT)));
%Q = C.*log(1+pesFou);
%figure(); imshow(uint8(fftshift(Q)));
%histogram(uint8(Q)); axis('tic'); set(gca, 'linewidth', 2, 'fontsize', 20);
%xlabel('intensidad', 'fontsize', 20)
%
clear
load zigzag_rot.mat;
%zigzag = imread('zigzag.png');
%zigzagF = abs(fft2(zigzag));
%figure(); imshow(zigzagF);
%maximoFFT = max(max(zigzagF));
%C = 255/log(1+(abs(maximoFFT)));
%Q = C.*log(1+zigzagF);
%figure(); imshow(uint8(Q));
%figure(); imshow(uint8(fftshift(Q)));

zigzagF = abs(fft2(zigzag_45));
figure(); imshow(zigzagF);
maximoFFT = max(max(zigzagF));
C = 255/log(1+(abs(maximoFFT)));
Q = C.*log(1+zigzagF);
figure(); imshow(uint8(Q));
figure(); imshow(uint8(fftshift(Q)));

zigzagF = abs(fft2(zigzag_60));
figure(); imshow(zigzagF);
maximoFFT = max(max(zigzagF));
C = 255/log(1+(abs(maximoFFT)));
Q = C.*log(1+zigzagF);
figure(); imshow(uint8(Q));
figure(); imshow(uint8(fftshift(Q)));
