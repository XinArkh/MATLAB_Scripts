%	TU-Dresden, Institut f�r Automatisierungstechnik
%	9.12.1997-T.Boge
%   Darstellung der Lage als Dreibein

e1(k,:)=[q(1)^2-q(2)^2-q(3)^2+q(4)^2  2*(q(1)*q(2)+q(3)*q(4))       2*(q(1)*q(3)-q(2)*q(4))];
e2(k,:)=[2*(q(1)*q(2)-q(3)*q(4))      -q(1)^2+q(2)^2-q(3)^2+q(4)^2  2*(q(2)*q(3)+q(1)*q(4))];
e3(k,:)=[2*(q(1)*q(3)+q(2)*q(4))      2*(q(2)*q(3)-q(1)*q(4))       -q(1)^2-q(2)^2+q(3)^2+q(4)^2];
   
e0=[0,0,0];
   
xp=[e0;e1(k,:)];
yp=[e0;e2(k,:)];
zp=[e0;e3(k,:)];

set(bodyx,'xdata',xp(:,1),'ydata',xp(:,2),'zdata',xp(:,3))
set(bodyy,'xdata',yp(:,1),'ydata',yp(:,2),'zdata',yp(:,3))
set(bodyz,'xdata',zp(:,1),'ydata',zp(:,2),'zdata',zp(:,3))

drawnow;
