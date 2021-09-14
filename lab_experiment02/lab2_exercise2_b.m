n = -10:10;

y = 0.8 .^ n .* stepseq(0, -10, 10);
y_1 = 0.8 .^ (n - 4) .* stepseq(4, -10, 10);
y_2 = 0.8 .^ n .* stepseq(4, -10, 10);

grid on
plot(n, y_1, 'b-',n, y_2, 'r-')
xticks(-10:2:10);
xlabel("n");    ylabel("y");