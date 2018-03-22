%	TU-Dresden Institut für Automatisierungstechnik
%	9.12.1997-T.Boge / 4.10.2002-K.Janschek

%	=== NUMERICAL INTEGRATION ===

%   Omega:               w = f ( lagedyn[w0, Momente , Tragheitsmatrix] )
%   Lagequaternion:      q = f ( lagekin[q0,w0,Schrittweite] ) 
%
%	Inputs:	q0     Vektor (4,1)  attitude quaternion (t)
%           w0     Vektor (3,1)  omega (t)
%           M      Vektor (3,1)  torques
%           J      Matrix (3,3)  inertia tensor
%           T      Skalar (1,1)  integration step size
%
%	Outputs: q      Vektor (4,1)  attitude quaternion (t+T)
%            w      Vektor (3,1)  omega (t+T)

function [q,w] = numint(q0,w0,M,J,T)

% state vector
x0=[w0;q0];

% Runge-Kutta 3. order
x_dot1 = sysmodel ( x0, M, J );
x_dot2 = sysmodel ( x0+(T/2)*x_dot1, M, J );
x_dot3 = sysmodel ( x0-T*x_dot1+2*T*x_dot2, M, J );

x = x0 + T/6*(x_dot1+4*x_dot2+x_dot3);  

w=x([1:3])
q=x([4:7]);
q=q/norm(q);