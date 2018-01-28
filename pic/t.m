	radius=3;
	theta=2;		

	x=[1:radius];
	y=e.^(-x.^2/(2*theta**2));
	G=[flip(y) y(2:end)];
	G=G'*G;
	all=sum(sum(G));
	G=G./all;