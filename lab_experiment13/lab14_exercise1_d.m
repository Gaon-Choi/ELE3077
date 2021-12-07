% Q1-d
% requires understandings for elliptic filter
% simple API: specify specs as parameters

fs = 10;
fc = 2.5;   % WARNING: analog form -> 2pi*fc
[b, a] = ellip(3, 1, 60, 2*pi*2.5, 's');
[bz, az] = imp_invr(b, a, 1/fs);    % 3rd argument: period
figure(1)
impz(bz, az, [], fs);
% impz: returns impulse response of given transfer function
%       corresponding the coefficient of numerators
%       and denominators of given rational function.
figure(2)
impz(bz, az)