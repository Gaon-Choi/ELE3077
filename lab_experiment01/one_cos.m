function [time,value] = one_cos(amp, freq, pha, dur)
%ONE_COS plotting function of plotting function
%   time : corresponding time
%   value : corresponding value
time = 0:(2 * pi/freq) / 20:dur;
value = amp * cos((freq * time) + pha);
end

