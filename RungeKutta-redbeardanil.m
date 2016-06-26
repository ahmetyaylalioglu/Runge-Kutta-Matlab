
% Uygulamalý Matematik Ödevi
% Ahmet Yaylalioglu
% no:201220407039
% Uygulamalý Matematik - Yrd.Doç.Dr Bayram Esen
% 19/04/2016

clc;                                               
clear all;

x(1)=1;
y(1)=0;
h=0.25;
for i=1:10
    k1=h*(1-y(i));
    k2=h*(1-(y(i)+0.5*k1));
    k3=h*(1-(y(i)+0.5*k2));
    k4=h*(1-(y(i)+k3));
    y(i+1)=y(i)+1/6*(k1+2*k2+2*k3+k4);
    x(i+1)=x(i)+h;
end
hold on
plot(x,y,'+ -','Linewidth',1.5,'color','blue')
xlabel('x')
ylabel('y')
legend('rk4')
    