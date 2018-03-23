%  Simulation Control

%  ODE:
%  d_x / d_t = r * x

clear
clc

% Initializing the parameters
para_sysmodel  % coefficient r, zero moment value x(0), zero moment time t(0)
para_numint  % step size h[s]
para_simcontrol  % maximum duration tmax[s]

plotvorb  % Initializing the output figure

k=1;
for i=1:h:tmax
   
   x_new=numint(r, h, x(k));
   
   k=k+1;
   x(k)=x_new;
   t(k)=t(k-1) + h;
   
   plotxyz
   
%  This for loop is to make a time delay 
   for j=1:40*h
      dummy=inv(eye(3)+[0,0,1;0,0,0;0,1,0]);
   end
      
end