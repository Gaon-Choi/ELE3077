fc = 20;
fs = 200;
[z, p, k] = ellip(6, 3, 90, 2*pi*fc, 's');
[num,den] = zp2tf(z, p, k);

[BL_num, BL_den] = bilinear(num, den, fs);
freqz(BL_num, BL_den);