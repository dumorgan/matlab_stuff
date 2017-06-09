N = 100;

n = linspace(1, 100, N);
omega = pi*(2*rand -1);

omega1 = 0.4*pi;
omega2 = 0.5*pi;
omega3 = 1.2*pi;

%gera o vetor x
x = 2*exp(1i*omega) * (exp(1i*n*omega1) + exp(1i*n*omega2) + exp(1i*n*omega3)) + randn(1, N);


[v, d] = eig(Rx);

eigValues = diag(d);



%%
X = zeros(20, 100);
for k = 1: 20
    omega = pi*(2*rand -1);
    x = 2*exp(1i*omega) * (exp(1i*n*omega1) + exp(1i*n*omega2) + exp(1i*n*omega3)) + randn(1, N);
    X(k, :) = x;
end

figure;
pmusic(X, 3);
print(strcat('D:\Documents\UFRJ\Tópicos Especiais em Circuitos e Instrumentação\Lista 7 - imagens\8.5', num2str(k), '.jpg'), '-djpeg');