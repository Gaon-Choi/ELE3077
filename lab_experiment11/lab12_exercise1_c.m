b = [2 2.76 2.622 2.6740, 1.8];
k = tf2latc(b);

delta = [1 0 0 0];

output_dir = filter(b, 1, delta)
output_lat = 2 * latcfilt(k, delta)