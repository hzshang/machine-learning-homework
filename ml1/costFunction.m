function [cost,grad]=costFunction(theta,x,y)
	m=size(x,1);
	cost=1/(2*m)*sum((x*theta.-y).^2);
	grad=1/m*(x'*(x*theta.-y));
endfunction