N = 100;
k = 3;

n = linspace(1, 100, N);
omega = (pi - (-pi)).*rand(1, 100) - pi

omega1 = 0.4*pi;
omega2 = 0.5*pi;
omega3 = 1.2*pi;

%gera o vetor x
x = 2*exp(1i*(omega + n*omega1)) + 2*exp(1i*(omega + n*omega2)) + 2*exp(1i*(omega + n*omega3)) + 0.01 * randn(1, N);

%calculo da autocorrelacao
Rx = toeplitz(acf((x', 6));

[v, d] = eig(Rx);

eigValues = diag(d);



%%
X = zeros(20, 100)
for k = 1: 20
    omega = (pi - (-pi)).*rand(1, 100) - pi
    x = 2*exp(1i*(omega + n*omega1)) + 2*exp(1i*(omega + n*omega2)) + 2*exp(1i*(omega + n*omega3)) + 0.01 * randn(1, N);
    X(k, :) = x;
end

figure;
pmusic(X, 3);
print(strcat('D:\Documents\UFRJ\Tópicos Especiais em Circuitos e Instrumentação\Lista 7 - imagens\8.5', num2str(k), '.jpg'), '-djpeg');