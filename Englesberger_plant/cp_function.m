function out = cp_function(u)
global omega
cp_ox = u(1);
cp_oy=u(2);
px = u(3);
py=u(4);
t = u(5);
m = t - floor(t);
%zetax = px + exp(omega*m)*(cp_ox - px);
%zetay = py + exp(omega*m)*(cp_oy - py);
zetax= exp(omega*m)*cp_ox+(1-(exp(omega*m)))*px;
zetay= exp(omega*m)*cp_oy+(1-(exp(omega*m)))*py;
out=[zetax, zetay];
end