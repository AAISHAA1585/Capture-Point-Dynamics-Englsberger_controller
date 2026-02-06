function zetax = mf_zetax(u)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here

global  omega
% 
xc=u(1);
yc=u(2);
dxc=u(3);
dyc=u(4);


%  
outx = xc+(dxc/omega);
outy = yc+(dyc/omega);

% 
zetax = [outx, outy];

end


