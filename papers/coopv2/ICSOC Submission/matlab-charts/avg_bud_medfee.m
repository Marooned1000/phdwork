[v,T,vT]=xlsread('avg_bud_medfee.xlsx') 
% 'xlsx' for exell 2007
%v: Double
%T and vT : cell
%use v containing numbers 
i=1:50;
t=v(:,1);y=v(:,2);z=v(:,3)
plot(i,t);
hold all;
plot(i,y);
hold all;
plot(i,z);