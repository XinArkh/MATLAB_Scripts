%	TU-Dresden, Institut für Automatisierungstechnik
%	9.12.1997-T.Boge / 4.10.2002-K.Janschek

%	=== System Model: attitude dynamics ============================================= 

%   sys = d_omega / d_t = J^(-1) * ( M - omega x  J * omega )
%
%	Inputs:	x      Vektor (3,1)  state vector [w;q]
%           M      Vektor (3,1)  torque
%           J      Matrix (3,3)  inertia tensor
%           T      Skalar        integration step size
%
%	Outputs: x_dot  Vektor (3,1)  derivative of state vector
function [x_dot] = sysmodel (x,M,J)

% state vector [w=Omega,q=Lagequaternion] 
w=x([1:3]);
q=x([4:7]);

% attitude dynamics: w_dot = d_omega/d_t = J^(-1) * (M - omega x J*omega )
Jinv=inv(J);
Jw=J*w ;
wJw=cross(w,Jw);
w_dot=Jinv*(M-wJw);

% attitude kinematics:  q_dot = d_q/d_t = 1/2 * OMEGA * q
% generate "OMEGA-Matrix"
wm= [   0,  w(3), -w(2),  w(1);
    -w(3),     0,  w(1),  w(2);
     w(2), -w(1),     0,  w(3);
    -w(1), -w(2), -w(3),     0];
q_dot=1/2*wm*q;

% write outputs
x_dot=[w_dot;q_dot];
