%%
%Letra a

N = 256;
s = randn(1, 256);

x = filter(1, [1 -2.737 0.0941 -2.62752 0.9126], s);

N = 256;

spectrums = zeros(20, N);

p = 4;
arcoeffs = zeros(p + 1);
figure;
for i = 1:20
   s = randn(1, N);
   x =  filter(1, [1 -0.5 1 -0.25 0.25], s);
   arcoeffs = aryule(x, p)';
   spectrums(i, :) = abs(fft(arcoeffs, N));
   plot(spectrums(i, :));
   hold on
end
title('Espectro de potencia ensemble com p = 4');
print(strcat('D:\Documents\UFRJ\Tópicos Especiais em Circuitos e Instrumentação\Lista 7 - imagens\8.2-', num2str(p), '.jpg'), '-djpeg')

figure;
plot(mean(spectrums));
title('Espectro de potencia medio com p = 4');
print(strcat('D:\Documents\UFRJ\Tópicos Especiais em Circuitos e Instrumentação\Lista 7 - imagens\8.2-', num2str(p), 'm.jpg'), '-djpeg')

p = 6;
arcoeffs = zeros(p + 1);
figure;
for i = 1:20
   s = randn(1, N);
   x =  filter(1, [1 -0.5 1 -0.25 0.25], s);
   arcoeffs = aryule(x, p)';
   spectrums(i, :) = abs(fft(arcoeffs, N));
   plot(spectrums(i, :));
   hold on
end
title('Espectro de potencia ensemble com p = 6');
print(strcat('D:\Documents\UFRJ\Tópicos Especiais em Circuitos e Instrumentação\Lista 7 - imagens\8.2-', num2str(p), '.jpg'), '-djpeg')

figure;
plot(mean(spectrums));
title('Espectro de potencia medio com p = 6');
print(strcat('D:\Documents\UFRJ\Tópicos Especiais em Circuitos e Instrumentação\Lista 7 - imagens\8.2-', num2str(p), 'm.jpg'), '-djpeg')

p = 8;
arcoeffs = zeros(p + 1);
figure;
for i = 1:20
   s = randn(1, N);
   x =  filter(1, [1 -0.5 1 -0.25 0.25], s);
   arcoeffs = aryule(x, p)';
   spectrums(i, :) = abs(fft(arcoeffs, N));
   plot(spectrums(i, :));
   hold on
end
title('Espectro de potencia ensemble com p = 8');
print(strcat('D:\Documents\UFRJ\Tópicos Especiais em Circuitos e Instrumentação\Lista 7 - imagens\8.2-', num2str(p), '.jpg'), '-djpeg')

figure;
plot(mean(spectrums));
title('Espectro de potencia medio com p = 8');
print(strcat('D:\Documents\UFRJ\Tópicos Especiais em Circuitos e Instrumentação\Lista 7 - imagens\8.2-', num2str(p), 'm.jpg'), '-djpeg')

p = 12;
arcoeffs = zeros(p + 1);
figure;
for i = 1:20
   s = randn(1, N);
   x =  filter(1, [1 -0.5 1 -0.25 0.25], s);
   arcoeffs = aryule(x, p)';
   spectrums(i, :) = abs(fft(arcoeffs, N));
   plot(spectrums(i, :));
   hold on
end
title('Espectro de potencia ensemble com p = 12');
print(strcat('D:\Documents\UFRJ\Tópicos Especiais em Circuitos e Instrumentação\Lista 7 - imagens\8.2-', num2str(p), 'jpg'), '-djpeg')

figure;
plot(mean(spectrums));
title('Espectro de potencia medio com p = 12');
print(strcat('D:\Documents\UFRJ\Tópicos Especiais em Circuitos e Instrumentação\Lista 7 - imagens\8.2-', num2str(p), 'm.jpg'), '-djpeg')
