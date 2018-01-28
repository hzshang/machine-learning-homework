function ret=mapFeature(x,degree)
	[m,n]=size(x);
	power=[];
	ret=[];
	for i=0:degree
		power=[power;mapPower(i,n)];
	endfor
	for i=1:size(power,1)
		ret(:,end+1)=prod(x.^power(i,:),2);
	endfor
endfunction