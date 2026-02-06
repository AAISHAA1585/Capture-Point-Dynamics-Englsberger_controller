function out = cp_ref(u)
global omega
px = u(1);
py=u(2);
cp_fx = u(3);
cp_fy=u(4);
T = 1;
%cp_ox = px + exp(-omega*T)*(cp_fx - px);
%cp_oy = py + exp(-omega*T)*(cp_fy - py);
cp_ox = px+((cp_fx-px)/(exp(omega*T)));
cp_oy = py+((cp_fy-py)/(exp(omega*T)));

out=[cp_ox,cp_oy];
end