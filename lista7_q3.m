%%
N = 256;
n = linspace(1, 10000, 1);
w1 = pi/2;
w2 = 1.1 * pi/2;

fi1 = 2*pi*rand;
fi2 = 2*pi*rand;

w = randn(1, N);
wfiltered = filter([1, 2, 0, -2, -1], [1], w);

x = 2 * cos(n*w1 + fi1) + 2 * cos(n*w2 + fi2) + wfiltered;

rx = autocorr(x, 21);
fftSize = 256;
spec = fft(rx, fftSize);
omega = 2*pi * (1:(fftSize)) / fftSize;
omega = fftshift(omega);
omega = unwrap(omega - 2*pi);

figure;
plot(omega/pi, abs(fftshift(spec)));
xlabel('radians / \pi');
ylabel('Power Spectrum');
print(strcat('D:\Documents\UFRJ\Tópicos Especiais em Circuitos e Instrumentação\Lista 7 - imagens\8.3a.jpg'), '-djpeg');
    



%%
%b
rxMA = acf(wfiltered', 21);
sin1 = 2 * cos(n*w1 + fi);
sin2 = 2 * cos(n*w2 + fi);

varsin1 = var(sin1');
varsin2 = var(sin2');

spectroW = abs(fft(rxMA, N));
powerW = sum(spectroW) / N;




%%
%d)

N = 256;
n = linspace(1, 10000, 1);
w1 = pi/2;
w2 = 1.1 * pi/2;

fi = linspace(0, 2*pi, N);

w = randn(1, N);
wfiltered = filter([1, 2, 0, -2, -1], [1], w);

x = 2 * cos(n*w1 + fi) + 2 * cos(n*w2 + fi) + wfiltered;
