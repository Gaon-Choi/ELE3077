[imp, impn] = impseq(0, -5, 5);

h1 = [5, 2, 3, -5, 1, 11];
n1 = -1:4;

left = [-6:9 ; conv_m(h1, n1, imp, impn)]
right = [n1 ; h1]