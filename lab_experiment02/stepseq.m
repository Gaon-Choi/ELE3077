function [x, n] = stepseq(n0, lb, ub)
% Generates x(n) = u(n-n0); lb <= n <= ub
% --------------------------------------------------
%
n = [lb:ub]; x = [(n-n0) >= 0];