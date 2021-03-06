load('dat.dat');
close all;
x=dat(:,1:end-1);
y=dat(:,end);
X=mapFeature(x,2);
initial_theta=zeros(size(X,2),1);
options = optimset('GradObj', 'on', 'MaxIter', 400);
[theta, cost] = fminunc(@(t)(costFunction(t, X, y)), initial_theta, options);
figure; hold on;
plotData(x(:,1),x(:,2),y);
xlabel('x_1');
ylabel('x_2');
plotBoundary(x,theta);
hold off;
