function[b, a] = imp_invr(c, d, T)
% c, d: denominator and numerator coefficient of Laplace form
% T: sampling period
% b, a: denominator and numerator coefficient after applying mapping
%       (iminv or bilinear) on z-transform

[R, p, k] = residue(c, d);
p = exp(p*T);
% residue : polynomial coefficient -> pole, zero, k(gain)
% residuez : pole, zero, k(gain) -> polynomial coefficient
[b, a] = residuez(R, p, k);
b = real(b'); a = real(a');