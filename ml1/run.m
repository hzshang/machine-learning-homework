load('dat.dat');
close all;
x=dat(:,1:end-1);
y=dat(:,end);
[m,n]=size(x);
x=[ones(m,1) x];
initial_theta=zeros(n+1,1);


options = optimset('GradObj', 'on', 'MaxIter', 400);
[theta, cost] = fminunc(@(t)(costFunction(t,x,y)), initial_theta, options);