c = [1, 1];     % numerator
d = [1, 5, 6];  % denominator
T = 1;
Fs = 1/T;
[b, a] = bilinear(c, d, Fs)