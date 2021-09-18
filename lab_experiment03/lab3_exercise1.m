w = [0:1:500] * pi / 500;   % [0, pi] axis divided into 501 points
X = exp(j*w) ./ (exp(j*w) - 0.5 * ones(1, 501));

magX = abs(X);      % magnitude
angX = angle(X);    % angle
realX = real(X);    % real part
imagX = imag(X);    % imaginary part

subplot(2, 2, 1);   plot(w, magX); grid
xlabel("Angular Frequency (w)"); ylabel("Magnitude");
title("Magnitude Part");

subplot(2, 2, 2);   plot(w, angX); grid
xlabel("Angular Frequency (w)"); ylabel("Angle");
title("Angle Part");

subplot(2, 2, 3);   plot(w, realX); grid
xlabel("Angular Frequency (w)"); ylabel("Real");
title("Real Part");

subplot(2, 2, 4);   plot(w, imagX); grid
xlabel("Angular Frequency (w)"); ylabel("Imaginary");
title("Imaginary Part");