function [x_norm,max,min]=featureNormalize(x)
	max=max(x);
	min=min(x);
	x_norm=(x.-min)./(max.-min);
endfunction