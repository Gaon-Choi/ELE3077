h = (1/2).^(1:50);
h = [h, zeros(1, 50)];
k = [0:length(h)-1];

H = fft(h); H = fftshift(H);
angH = angle(H);
stem(k, angH)   % NON-Linear Phase
xlabel("angular frequency"); ylabel("phase");