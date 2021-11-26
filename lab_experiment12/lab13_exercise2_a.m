Fc = 200;           % cut-off frequency
Fs = 1000;          % sampling frequency
Wp = 200/(Fs/2);    % normalized cutoff frequency

Ws1 = 300/500;  % stop-frequency_1
Ws2 = 350/500;  % stop-frequency_2
Ws3 = 400/500;  % stop-frequency_3

% What will be order when stop band gets bigger?
% If stop band gets smaller...
    % - transition region will be steeper
    % - order will be increased
    % - getting closer to ideal filter.

% minimum order, about the given condition
[n1, Wn1] = buttord(Wp, Ws1, 3, 60);
[n2, Wn2] = buttord(Wp, Ws2, 3, 60);
[n3, Wn3] = buttord(Wp, Ws3, 3, 60);

disp("n1 = " + n1)
disp("n2 = " + n2)
disp("n3 = " + n3)