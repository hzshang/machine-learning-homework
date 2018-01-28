load('dat.dat');
x=dat(:,1);
y=dat(:,2);
m=size(x,1);
x=[ones(m,1) x];
val=zeros(100,100);
theta_1=linspace(-5,5,100);
theta_2=linspace(-5,5,100);
vals=zeros(length(theta_1),length(theta_2));
for i=1:length(theta_1)
	for j=1:length(theta_2)
		vals(i,j)=costFunction(x,y,[theta_1(i);theta_2(j)]);
	end
end
close all;
figure;
surf(theta_1,theta_2,vals);
xlabel('\theta_1');
ylabel('\theta_2');