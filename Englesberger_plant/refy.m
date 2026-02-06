function out = refy(t)
if t < 1
    p = 0;
    cp_f = 0.05;
elseif t < 2
    p = 0.05;
    cp_f = -0.05;
elseif t < 3
    p = -0.05;
    cp_f = 0.05;
elseif t < 4
    p = 0.05;
    cp_f = -0.05;
elseif t < 5
    p = -0.05;
    cp_f = 0.05;    
else
    p = 0;
    cp_f = 0;
end
out = [p,cp_f];
end
% clear all;
% p=zeros(5);
% cp_f=zeros(5);
% for  k=1:4
%     N=(2*k)+1;
%     if N==(2*k)+1
%         
%        i= (-1)^N*(0.05);
%        p(:,i)=cp_f(:,(-1)*i);
% 
%     else 
%         N==2*k;
%         
%         i= (-1)^N*(0.05);
%         p(:,i)=cp_f(:,(-1)*i);
%     end
% end
% out = [p,cp_f];
% 




   