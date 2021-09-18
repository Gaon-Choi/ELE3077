x = rand(1, 11);
n = 0:10;
k = -1000:1000;
w = (pi/500) * k;

X = x * (exp(-j * pi / 500)).^(n'*k);

y = x;  m = n + 2;
Y = y * (exp(-j * pi / 500)).^(m'*k);

Y_check = (exp(-j * 2).^w) .* X;

max_error = max(abs(Y - Y_check))