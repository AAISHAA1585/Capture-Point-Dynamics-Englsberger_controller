clear all;clc;
global  g zc  omega2 omega  e  step_time step_length DT
global Ax Ay fx k1 k2
% 

% 
g=9.81;
omega=3.1421;
omega2=9.87279241;
t_step=0.001;
t_stop = 5;
tau=0.01;

step_time=0.8;
step_length=2;
DT= 0.05;
% 
Ax = 100;
Ay = 100;
fx =4;

zc=g/omega2;
 e = 2.73;
k1 =500;
k2=500;
