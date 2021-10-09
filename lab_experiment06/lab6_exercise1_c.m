xn = [1 1 1 1 0 0 0 0];
yn = idft(dft(xn));

xn_minus_yn = xn - yn

plot(abs(xn-yn))
hold on
title("Plot of xn - idft(dft(xn))")