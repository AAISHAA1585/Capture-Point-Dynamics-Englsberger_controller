function px = mf_px(u)

%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here




global  omega e DT
% 
zetadx =u(1);
zetady=u(2);
zetax= u(3);
zetay=u(4);


%  
outxx = (zetadx-(e^(omega*DT))*zetax)/(1-e^(omega*DT));
outyy = (zetady-(e^(omega*DT))*zetay)/(1-e^(omega*DT));
% 
px = [outxx, outyy];

end


