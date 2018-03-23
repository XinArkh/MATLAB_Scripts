clear;clc;
disp('Exercise 2-1  Block oriented ODE integration')
disp('(1)')
% Building up the transfer function for the system
b1 = tf([1], [0.01,1]);
b2 = tf([1], [1, 1]);
b3 = tf([1], [1, 0]);
tfModel = (b1-b2)*feedback(b3, 1)
% Calculating the lambda value of the system
ssModel = ss(tfModel);
A = ssModel.a;
B = ssModel.b;
% the max() function actually returns the smallest
% one because:
% 1) eig(A) returns an array of complex numbers with
%    0 imaginary part
% 2) the real part of these numbers is all minus
mainLambda = max(eig(A))
% According to Table 3.2 in the book, the real
% stable field of RK4 is [-2.78, 0], thus:
h_crit = 2.78 / -mainLambda