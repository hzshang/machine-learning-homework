function new=mean(im)
	[width,height,dimension]=size(im);
	t=[0.2125,0.7154,0.0721];
	new=zeros(width,height);
	new(:)=reshape(im,[width*height 3])*t';
endfunction