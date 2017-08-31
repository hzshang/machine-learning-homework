load('dat.dat');
close all;
x=dat(:,1:end-1);
y=dat(:,end);
[m,n]=size(x);
[x,max,min]=featureNormalize(x);
max=[0 max];
min=[-1 min];
S=max-min;
x=[ones(m,1) x];
[theta,cost]=gradientDecent(x,y);
theta(1)=-min./S*theta;
theta(2:end)=theta(2:end)./S(2:end)';
plot([500:length(cost)],cost(500:end));
fprintf('function: y=x_1*%.3f+x^2*%.3f+%.3f\n',theta(2),theta(3),theta(1));