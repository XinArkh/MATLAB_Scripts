%	TU-Dresden Institut für Automatisierungstechnik
%	9.12.1997-T.Boge / 4.10.2002-K.Janschek

%  Simulation Control

clear
clf
para_sysmodel
para_numint
para_simcontrol

plotvorb
q00=q0;
w00=w0;
k=1;

for i=1:T:tmax
   
   [q,w]=numint(q00,w00,M,J,T);
   
   q00=q;
   w00=w;
   qm(:,k)=q;
   wm(:,k)=w;
   k=k+1;
   
   plotxyz
   
   for j=1:4*T
      dummy=inv(eye(3)+[0,0,1;0,0,0;0,1,0]);
   end
      
end