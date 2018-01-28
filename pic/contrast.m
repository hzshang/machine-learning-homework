function newIm=contrast(im,value=2)
	meanIm=mean(im);
	newIm=meanIm*(1-value)+im*value;
endfunction
