coef_a = [16 12 2 -4 -1];
coef_b = [1 -3 11 -27 18];

[b0, B, A] = dir2cas(coef_b, coef_a)

delta = [1 0 0 0 0 0 0 0];

hcas = casfiltr(b0, B, A, delta);
hdir = filter(coef_b, coef_a, delta);
err = abs(max(hcas-hdir))