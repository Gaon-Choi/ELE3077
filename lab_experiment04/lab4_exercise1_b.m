R = [ -9.0000; 8.0000 ];
p = [ 0.5000; 1.0000 ];
C = 2;

% num: numerator
% den: denominator
[num, den] = residuez(R, p, C);

zeros = roots(num)
poles = roots(den)