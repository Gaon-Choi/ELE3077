[b, a] = butter(3, [0.2, 0.6], 'stop');
freqz(b, a)
sgtitle("pole-zero plot of 6th order Butterworth band-stop filter")