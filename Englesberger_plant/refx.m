function outx = refx(t)

if t < 1
    px = 0;
   
    cp_fx = 0.1;
   
elseif t < 2
    px = 0.1;
    
    cp_fx = 0.2;
    
elseif t < 3
    px = 0.2;
    cp_fx = 0.3;
    
elseif t < 4
    px = 0.3;
    
    cp_fx = 0.4;
elseif t < 5
    px = 0.4;
    
    cp_fx = 0.5;    
else
    px = 0;
    
    cp_fx = 0;
    
end
outx = [px,cp_fx];


end