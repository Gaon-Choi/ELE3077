h1 = [5, 2, 3, -5, 1, 11];
h2 = [-4, 2, 0, 6, 3, 1];
n1 = -1:4; n2 = -1:4;

x = [0, 0, 4, 13, 6, -3, -1, 2, 4, 0, 0];
nx = -5:5;

[conv1, convn1] = conv_m(h1, n1, h2, n1);
[h1_h2_x, h1_h2_xn] = conv_m(conv1, convn1, x, nx);
[conv2, convn2] = conv_m(h2, n2, h1, n2);
[h2_h1_x, h2_h1_xn] = conv_m(conv2, convn2, x, nx);

title("h1*h2*x - h2*h1*x")
stem(h1_h2_xn, h1_h2_x - h2_h1_x)
xlabel("n"); ylabel("y")