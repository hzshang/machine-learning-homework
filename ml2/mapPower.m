function power=mapPower(degree,n)
	if degree==0
		power=zeros(1,n);
	elseif n==1
		power=degree;
	else
		power=[];
		for i=0:degree
			t=mapPower(degree-i,n-1);
			t=[i*ones(size(t,1),1) t];
			power=[power;t];
		endfor
	endif
endfunction