function [x, n] = impseq(n0, lb, ub)
% Generates x(n) = delta(n - n0); lb <= n <= ub
% --------------------------------------------------
%
n = [lb:ub]; x = [(n-n0) == 0];