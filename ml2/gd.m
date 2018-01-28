function [theta,cost]=gd(x,y)
	alpha=10;
	iterNum=50000;
	cost=zeros(1,iterNum);
	[m,n]=size(x);
	theta=zeros(n,1);
	cost=zeros(1,iterNum);
	for i=1:iterNum
		[cost(i),grad]=costFunction(theta,x,y);
		theta+=alpha.*grad;
	end
endfunction