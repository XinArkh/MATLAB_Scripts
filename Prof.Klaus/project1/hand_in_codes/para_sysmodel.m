%   EXPERIMENT FRAME: System Model PARAMETER

% === System-MODEL ====================================
r = -0.5;

x0 = 1;

x1(1) = x0;  % Runge-Kutta <3rd order>
x2(1) = x0;  % EULER
x3(1) = x0;  % TRAPEZOID

x(1) = x0;  %  The exact solution

x1_e(1) = nan;  % Error of Runge-Kutta <3rd order>
x2_e(1) = nan;  % Error of EULER
x3_e(1) = nan;  % Error of TRAPEZOID

t(1) = 0;
tt(1) = 0;