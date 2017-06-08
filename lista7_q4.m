%%

p = 10;
w = 0;
k = linspace(0, p, 10);
rx = cos(0.35*pi*k) + w;
rx(1) = rx(1) + 1;

e = exp(i*k);
Rx = toeplitz(rx);

[v, d] = eig(Rx);
U = diag(inv(abs(d) + eps));
V = abs(fft(v,1024)).^2;
Px = 10 * log10(p) - 10*log10(V*U);

figure;
plot(Px);
ylabel('Power Spectrum');
print(strcat('D:\Documents\UFRJ\Tópicos Especiais em Circuitos e Instrumentação\Lista 7 - imagens\8.4a.jpg'), '-djpeg');


%%
figure;
den = zeros(1024, 25);
for i=1:25
    rx = cos(0.35*pi*k);
    rx(1) = rx(1) + 1 + 0.1;

    Rx = toeplitz(rx);

    [v, d] = eig(Rx);
    U = diag(inv(abs(d) + eps));
    V = abs(fft(v,1024)).^2;
    
    den(:, i) = V*U;
    Px(:, i) = 10 * log10(p) - 10*log10(V*U);

    plot(Px(:, i));
    ylabel('Power Spectrum');
    hold on;
end
print(strcat('D:\Documents\UFRJ\Tópicos Especiais em Circuitos e Instrumentação\Lista 7 - imagens\8.4b.jpg'), '-djpeg');

figure;
plot(10*log10(p) - 10*log10(mean(den,2)))
print(strcat('D:\Documents\UFRJ\Tópicos Especiais em Circuitos e Instrumentação\Lista 7 - imagens\8.4b-mean.jpg'), '-djpeg');

