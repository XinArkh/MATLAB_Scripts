play=1;
axHndl=gca;
figNumber=gcf;
hndlList=get(figNumber,'UserData');

set(figNumber,'Backingstore','off');
% grid on
% The graphics axis limits are set to values known 
% to contain the solution.
set(axHndl, ...
   'Userdata',play, ...
   'Drawmode','fast', ...
   'Visible','on', ...
   'NextPlot','add', ...
   'Userdata',play, ...
   'xgrid','on', ...
   'ygrid','on', ...
   'gridlinestyle','-');

% axis([0 200 -2 3])
xlabel('time/(s)')
ylabel('x')

cla;

bodyx = line( ...
   'color','r', ...
   'LineStyle','-', ...
   'erase','xor', ...
   'xdata',[],'ydata',[]);

% legend('Runge-Kutta 3rd')
% legend('EULER')
% legend('TRAPEZOID')
title('Simulation Results ')