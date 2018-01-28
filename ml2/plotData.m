function plotData(x1,x2,y)
	in=find(y==1);
	out=find(y==0);
	plot(x1(in),x2(in),'b+','LineWidth',2,'markersize',7);
	plot(x1(out),x2(out),'ro','LineWidth',2,'markersize',7);
endfunction