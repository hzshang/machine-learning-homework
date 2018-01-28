function newIm=gaosi(im,radius=10,theta=2)
	y=[0.4026,0.2442,0.0545];
	x=linspace(1,3,radius);
	y=interp1(y,x);
	G=[flip(y) y(2:end)];
	G=G'*G;
	all=sum(sum(G));
	G=G./all;
	edge=(size(G,1)-1)/2;
	im=[im(1:edge,:,:);im;im(end-edge+1:end,:,:)];
	im=[im(:,1:edge,:) im im(:,end-edge+1:end,:)];
	E=convn(im,G,'same');
	newIm=E(edge+1:end-edge,edge+1:end-edge,:);
endfunction