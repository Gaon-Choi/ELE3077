n = 0:10;
x = 0.5 .^ n .* stepseq(0, 0, 10);

y = zeros(1, 10);

for i = 1:10
    if i == 1
        y(i) = x(i);
    else
        y(i) = y(i - 1) + x(i);
    end
end

disp("y = ")
disp(y)