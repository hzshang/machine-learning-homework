m=500;
close all;
x=(rand(m,1)-0.5)*4;
y=(rand(m,1)-0.5)*4;
r=x.^2+y.^2-x.*y.-1;
in=find(r<0);
z=zeros(m,1);
z(in)=1;
dat=[x y z];
save 'dat.dat' dat;
figure; hold on;
plotData(x,y,z);
hold off;