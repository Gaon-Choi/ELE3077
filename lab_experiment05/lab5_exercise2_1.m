r1 = 0.9;   r2 = 0.95;
s1 = pi / 6;    s2 = pi / 3;

subplot(2,2,1);
num = [1];   den = [1, -2 * r1 * cos(s1), r1 * r1];
zeros = roots(num);
poles = roots(den);
zplane(zeros, poles);   zplane(num, den);
title("Ω_0 = π/6, r = 0.9");
xlabel("Real Part");    ylabel("Imaginary Part");

subplot(2,2,2);
num = [1];   den = [1, -2 * r2 * cos(s1), r2 * r2];
zeros = roots(num);
poles = roots(den);
zplane(zeros, poles);   zplane(num, den);
title("Ω_0 = π/6, r = 0.95");
xlabel("Real Part");    ylabel("Imaginary Part");

subplot(2,2,3);
num = [1];   den = [1, -2 * r1 * cos(s2), r1 * r1];
zeros = roots(num);
poles = roots(den);
zplane(zeros, poles);   zplane(num, den);
title("Ω_0 = π/3, r = 0.9");
xlabel("Real Part");    ylabel("Imaginary Part");

subplot(2,2,4);
num = [1];   den = [1, -2 * r2 * cos(s2), r2 * r2];
zeros = roots(num);
poles = roots(den);
zplane(zeros, poles);   zplane(num, den);
title("Ω_0 = π/3, r = 0.95");
xlabel("Real Part");    ylabel("Imaginary Part");

sgtitle("Resonator");