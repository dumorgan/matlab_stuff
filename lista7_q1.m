%%
%Letra a

N = 256;
s = randn(1, 256);

x = filter(1, [1 -0.5 1 -0.25 0.25], s);

p = 4;

arcoeffs = aryule(x, p);
