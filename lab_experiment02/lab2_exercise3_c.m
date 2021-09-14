N = 10;

n = 0:N;
x = 0.5 .^ n .* stepseq(0, 0, N);

y = zeros(1, N);

for i = 1:N+1
    if i == 1
        y(i) = x(i);
    else
        y(i) = y(i - 1) + x(i);
    end
end

stem(n, y)
title("Plot of Accumulator");
xlabel("n"); ylabel("y[n]");