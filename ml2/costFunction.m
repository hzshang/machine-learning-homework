function [cost,grad]=costFunction(theta,x,y)
	m=size(x,1);
	cost=1/m*sum(-y.*log(h(x,theta))-(1.-y).*log((1-h(x,theta))));
	grad=1/m*x'*(h(x,theta).-y);
endfunction