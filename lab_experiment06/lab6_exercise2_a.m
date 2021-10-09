N = 64;

for n = 1:N
    x(n) = ((0.95)^n) * cos(n * pi/20);
end

plot(x)