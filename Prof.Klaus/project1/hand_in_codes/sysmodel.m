%	=== System Model: attitude dynamics ==================================

function [x_new] = sysmodel ( x_k, r, h )

m = r * h;

% Runge-Kutta <3rd order>
% f = 1 + m + 1 / 2 * m^2 + 1 / 6 * m^3;

% EULER
% f = 1 + m;

% TRAPEZOID
f = (1 + 0.5 * m) / (1 - 0.5 * m);

x_new = f * x_k;
