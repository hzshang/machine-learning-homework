function newIm=bloom(im,threshold=0.6)
	im=im2double(im);
	meanIm=mean(im);
	dark=(meanIm-threshold)>0;
	bloomIm=dark.*im;
	bloomIm=gaosi(bloomIm);
	newIm=bloomIm*0.3+im;
endfunction
