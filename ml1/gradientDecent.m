function [t,cost]=gradientDecent(x,y)
	alpha=1;
	iterNum=10000;
	[m,n]=size(x);
	t=zeros(n,1);
	cost=zeros(1,iterNum);
	for i=1:iterNum
		t-=alpha/m*x'*(x*t-y);
		cost(i)=costFunction(x,y,t);
	end
endfunction