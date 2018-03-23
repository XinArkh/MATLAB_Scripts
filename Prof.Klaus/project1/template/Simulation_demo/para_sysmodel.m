%	TU-Dresden Institut für Automatisierungstechnik
%	9.12.1997-T.Boge / 4.10.2002-K.Janschek

%   EXPERIMENT FRAME: System Model PARAMETER

% === System-MODEL ====================================
%  inertia tensor [kgm^2]  
J = [100      0      0
      0      50      0
      0       0     10 ];
  
%  initial conditions angular rate:  omega0 [1/s]

% stable: rotation around axis with max inertia 
   %w0 =[0.01  0.0000001  .00000001]'; 
   
       % unstabil: rotation around axis with medium inertia
       w0 =[0.00001  0.01  .00001]';
  
 % stable: rotation around axis with min inertia 
   %w0 =[0.000001  0.0000001  .01]';    
       
%  initial condition: attitude quaternion:  q0  
   q0 =[0 0  0 1]';
%  disturbance torque [Nm] 
   M =[ 0 0 0]';
