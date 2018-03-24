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
for i=h:h:tmax
   
   x1_new=numint(r, h, x1(k), 1);
   x2_new=numint(r, h, x1(k), 2);
   x3_new=numint(r, h, x1(k), 3);
   
   k=k+1;
   x1(k)=x1_new;
   x2(k)=x2_new;
   x3(k)=x3_new;
   
   for j=length(x)+1:i
       tt(j) = j;
       x(j) = exp(r*j);
   end
   
   x1_e(k) = exp(r*h*(k-1)) - x1(k);
   x2_e(k) = exp(r*h*(k-1)) - x2(k);
   x3_e(k) = exp(r*h*(k-1)) - x3(k);
   
   t(k)=i;
   
   plotxyz
   
%  This for loop is to make a time delay 
   for j=1:1000*h
      dummy=inv(eye(3)+[0,0,1;0,0,0;0,1,0]);
   end
      
end