n1 = [-5:5];
x1 = 2 * impseq(-2, -5, 5) - impseq(4, -5, 5);
 
n2 = [0:20];
x2 = n2 .* (stepseq(0, 0, 20) - stepseq(10, 0, 20)) + 10 * exp(-0.3 * (n2 - 10)) .* (stepseq(10, 0, 20) - stepseq(20, 0, 20));
 
subplot(1, 2, 1);
stem(n1, x1); title("Problem (1)");
xlabel("n"); ylabel("x(n)");
 
subplot(1, 2, 2);
stem(n2, x2); title("Problem (2)");
xlabel("n"); ylabel("x(n)");