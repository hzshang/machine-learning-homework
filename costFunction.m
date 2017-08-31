function cost=costFunction(x,y,theta)
	m=size(x,1);
	cost=1/(2*m)*sum((x*theta.-y).^2);
endfunction