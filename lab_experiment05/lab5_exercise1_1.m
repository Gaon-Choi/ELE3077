subplot(2,2,1);
num = [1];   den = [1, -0.9];
zeros = roots(num);
poles = roots(den);
zplane(zeros, poles);   zplane(num, den);
title("type I, a = 0.9");
xlabel("Real Part");    ylabel("Imaginary Part");

subplot(2,2,2);
num = [1];   den = [1, -0.95];
zeros = roots(num);
poles = roots(den);
zplane(zeros, poles);   zplane(num, den);
title("type I, a = 0.95");
xlabel("Real Part");    ylabel("Imaginary Part");

subplot(2,2,3);
num = [1, 1];   den = [1, -0.9];
zeros = roots(num);
poles = roots(den);
zplane(zeros, poles);   zplane(num, den);
title("type II, a = 0.9");
xlabel("Real Part");    ylabel("Imaginary Part");

subplot(2,2,4);
num = [1, 1];   den = [1, -0.95];
zeros = roots(num);
poles = roots(den);
zplane(zeros, poles);   zplane(num, den);
title("type II, a = 0.95");
xlabel("Real Part");    ylabel("Imaginary Part");

sgtitle("Low-pass Filter")