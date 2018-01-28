function edge()
	im=imread('pics/t10.jpg');
	clf;
	im=im2double(im);
	EdgeOnly=0.3;
	meanIm=mean(im);
	Gx=[-1 0 1;-2 0 2;-1 0 1];
	Gy=Gx';
	E=abs(conv2(meanIm,Gx)+conv2(meanIm,Gy));
	E=E(2:end-1,2:end-1);
	edgeColor=zeros(size(im));
	backColor=ones(size(im));
	withEdgeColor=lerp(im,edgeColor,E);
	onlyEdgeColor=lerp(backColor,edgeColor,E);
	newIm=lerp(withEdgeColor,onlyEdgeColor,EdgeOnly);
	subplot(2,2,1);
	imshow(im);
	subplot(2,2,2);
	imshow(onlyEdgeColor);
	subplot(2,2,3);
	imshow(withEdgeColor);
	subplot(2,2,4);
	imshow(newIm);
endfunction

function ret=lerp(a,b,value)
	ret=b.*value+a.*(1.-value);
endfunction