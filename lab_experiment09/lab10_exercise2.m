[y, Fs] = audioread(".\dsp2_experiment10.wav");

% N = length(y);

%for i = 1:N-2
%    %yh(i) = (y(i+1)-y(i))/2;
%    yl(i) = (y(i+2) + 2*y(i+1) + y(i))/4;
%end

% sound(y, Fs);

h = [-1/2 1/2];
pad = zeros(1, 30);
h = [h,pad]; H = fft(h); H = fftshift(H);
magH = abs(H); plot(magH);
lpf = [1/2 1/2]; hpf = [-1/2 1/2];
audio_low = conv(y, lpf);
audio_high = conv(y, hpf);

% original sound
% sound(y, Fs)

% low-pass filtered sound
% sound(audio_low, Fs);

% high-pass filtered sound
% sound(audio_high, Fs);

index = -pi:2*pi/(length(y)-1):pi;
subplot(3, 1, 1); plot(-pi:2*pi/(length(y)-1):pi, abs(fftshift(fft(y))));
title("original sound"); xlabel("angular frequency (w)");
subplot(3, 1, 2); plot(-pi:2*pi/(length(y)):pi, abs(fftshift(fft(audio_low))));
title("low-pass filtered sound"); xlabel("angular frequency (w)");
subplot(3, 1, 3); plot(-pi:2*pi/(length(y)):pi, abs(fftshift(fft(audio_high))));
title("high-pass filtered sound"); xlabel("angular frequency (w)");