function ddx = mf_cp(u)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here

global  omega2
% 

xc=u(1);
yc=u(2);
dxc = u(3);
dyc=u(4);
px =u(5);
py=u(6);
t = u(7);

%  
outx = omega2*(xc-px)+100*sin(4*t);
outy = omega2*(yc-py)+100*cos(4*t);

% 
ddx = [outx, outy];

end


