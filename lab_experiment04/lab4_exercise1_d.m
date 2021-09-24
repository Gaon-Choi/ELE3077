x = linspace(-2, 2, 51);
y = linspace(-2, 2, 51);
[X, Y] = meshgrid(x, y);

z = X + 1j * Y;
Z = abs(2 - (9 ./ (1 - 0.5*(s.^-1))) + (8 ./ (1-(s.^-1))));
mesh(X, Y, abs(Z));
title("3D plot");

xlabel("Real axis");
ylabel("Imaginary axis");