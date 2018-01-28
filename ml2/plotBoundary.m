function plotBoundary(x,theta)
	m=100;
	u=linspace(-2,2,m);
	v=linspace(-2,2,m);
	z=zeros(m);
	for i=1:m
		ret=mapFeature([u(i).*ones(m,1),v'],2);
		for j=1:m
			z(i,j)=ret(j,:)*theta;
		endfor
	endfor
	z = z';
	contour(u, v, z, [0, 0], 'LineWidth', 2);
endfunction