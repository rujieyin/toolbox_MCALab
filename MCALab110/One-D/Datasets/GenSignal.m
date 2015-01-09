function [sig,parts] = GenSignal(Name, n)
% InputSignal -- Input 1-d Signals
%  Usage:
%	sig = MakeExample(Name[, n])
%  Inputs:
%	Name	string
%		Artificial signal names:
%		'Hydrogen', 'Carbon', 'FM', 'Gong', 'Mallat',
%		'HeaviSine', 'Bumps', 'Blocks','Doppler', 'Ramp', 
%		'Cusp', 'Werner Sorrows', 'Bumps-GCosine', 'Bumps-LCosine'
%		Data Sets:
%		'Star', 'Greasy', 'Transients', 'Earthquake', 'Eeg-fMRI'
%	n	desired signal length; ignored for datasets
%  Outputs
%	sig	1-d signal; column vector
%
% Adapted from the original code S. Chen in the Atomizer toolbox.
%

if nargin < 2,
	n = 1024;
end
t = (1:n)' / n;
if strcmp(Name, 'Hydrogen'),
	D = log2(n);
	d = floor(D/2); b = 2^(d-1) -1; k = 2^(D-d-1)-1;
	qmf = MakeONFilter('Symmlet', 8);
	[m L] = SizeOfDict1(n, 'WP', D, qmf, 0);
	c = zeros(m,1);
	c(1+b*n/2^d+k+d*n) = 1;
	sig = FastS1(c, n, 'WP', D, qmf, 0);
elseif strcmp(Name, 'Helium'),
	D = log2(n);
	d = floor(D/2);
	qmf = MakeONFilter('Symmlet', 8);
	[m L] = SizeOfDict1(n, 'WP', D, qmf, 0);
	c = zeros(m,1);
	c(n/2) = 1; c(m-n/2) = 1;
	sig = FastS1(c, n, 'WP', D, qmf, 0);
elseif strcmp(Name, 'Beryllium')
	D = log2(n);
	d = floor(D/2);
	qmf = MakeONFilter('Symmlet', 8);
	[m L] = SizeOfDict1(n, 'WP', D, qmf, 0);
	c = zeros(m,1);
	c(1 + (2^(d-1)-1)*n/2^d + 2^(D-d-1)-1 + d*n) = 1;
	c(1 + (2^(d-1)-1)*n/2^d + 2^(D-d-1)   + d*n) = 1;
	c(1 + (2^(d-1))*n/2^d   + 2^(D-d-1)   + d*n) = 1;
	c(1 + (2^(d-1))*n/2^d   + 2^(D-d-1)+1 + d*n) = 1;
	sig = FastS1(c, n, 'WP', D, qmf, 0);
elseif strcmp(Name, 'TwinSine1');
	const = (2/n) ^ .5;
	t = ((1:n)' - .5) / n;
	x1 = const * cos(pi * ((n/2-2 + .2)  - 1) / 4 * t);
	x2 = const * cos(pi * ((n/2 + .2)  - 1) / 4 * t);
	sig = x1 + x2;
elseif strcmp(Name, 'TwinSine2');
	const = (2/n) ^ .5;
	t = ((1:n)' - .5) / n;
	x1 = const * cos(pi * ((n/2-3 + .2)  - 1) / 4 * t);
	x2 = const * cos(pi * ((n/2-1 + .2)  - 1) / 4 * t);
	sig = x1 + x2;
elseif strcmp(Name, 'Carbon')
	D = log2(n);
	d = floor(D/2);
	qmf = MakeONFilter('Symmlet', 8);
	[m L] = SizeOfDict1(n, 'WP', D, qmf, 0);
	c = zeros(m,1);
	c(n/2) = 1; c(m-n/2) = 1;
	c(1 + (2^(d-1)-1)*n/2^d + 2^(D-d-1)-1 + d*n) = 1;
	c(1 + (2^(d-1)-1)*n/2^d + 2^(D-d-1)   + d*n) = 1;
	c(1 + (2^(d-1))*n/2^d   + 2^(D-d-1)   + d*n) = 1;
	c(1 + (2^(d-1))*n/2^d   + 2^(D-d-1)+1 + d*n) = 1;
	sig = FastS1(c, n, 'WP', D, qmf, 0);
elseif strcmp(Name, 'FM'),
	t = (1:n)' /n;
	w = 4; 
	sig = cos(n * pi * ( t / 2 + .5 * cos(2*w * pi * t) / ( 4 *  w * pi)));
	sig = sig + cos(n * pi * .5 * t) * .5;
elseif strcmp(Name, 'Gong'),
        t = (1:n)' ./ n;
	sig = cos(t * pi/2 * n) ./ ((1:n) .^ .5)';
	nn = floor(n/2);
	sig = [zeros(nn,1); sig(1:(n - nn))];
elseif strcmp(Name, 'Mallat'),
	sig = zeros(n,1);
	sig((n/25):(n*3/25)) = sig((n/25):(n*3/25)) + .5;
	temp = cos(pi * (0:n*5/25)/(n*5/25));
	temp = abs(temp) .^ .25 .* sign(temp);
	sig(n*3/25:n*8/25) = .5 * (temp + 1);
	%%the bump
	temp = n*8/25:n*13/25;
	sigma = 5; alpha = 1;
	temp = abs(temp - n*10.5/25) / sigma;
	temp = exp(- temp .^ alpha) .^ 2;
	temp = (temp - min(temp)); temp = temp / max(temp);
	sig(n*8/25:n*13/25) = temp;
	%%the random walk
	randn('seed', 123456789);
	m = n - floor(n * 14/25);
	temp = cumsum(randn(m,1));
	sig(n*14/25:n) = temp/(temp(1)-temp(m))+1-temp(1)/(temp(1)-temp(m));
	sig = abs(sig);
elseif strcmp(Name,'HeaviSine'),
        sig = 4.*sin(4*pi.*t);
        sig = sig - sign(t - .3) - sign(.72 - t);
elseif strcmp(Name,'Bumps'),
        pos = [ .1 .13 .15 .23 .25 .40 .44 .65  .76 .78 .81];
        hgt = [ 4  5   3   4  5  4.2 2.1 4.3  3.1 5.1 4.2];
        wth = [.005 .005 .006 .01 .01 .03 .01 .01  .005 .008 .005];
        sig = zeros(size(t));
        for j =1:length(pos)
           sig = sig + hgt(j)./( 1 + abs((t - pos(j))./wth(j))).^4;
        end
elseif strcmp(Name,'Blocks'),
        pos = [ .1 .13 .15 .23 .25 .40 .44 .65  .76 .78 .81];
        hgt = [4 (-5) 3 (-4) 5 (-4.2) 2.1 4.3  (-3.1) 2.1 (-4.2)];
        sig = zeros(size(t));
        for j=1:length(pos)
		sig = sig + (1 + sign(t-pos(j))).*(hgt(j)/2) ;
       end
elseif strcmp(Name,'Doppler'),
       sig = sqrt(t.*(1-t)).*sin((2*pi*1.05) ./(t+.05));
elseif strcmp(Name,'Ramp'),
       sig = t - (t >= .37);
elseif strcmp(Name,'Cusp'),
       sig = sqrt(abs(t - .37));
elseif strcmp(Name,'WernerSorrows'),
       sig = sin( pi .* t .* (n/2 .* t.^2)) ;
       sig = sig +  sin( pi * (n * .6902) .* t);
       sig = sig +  sin(pi .* t .* (n .* t));
       pos = [ .1 .13 .15 .23 .25 .40 .44 .65  .76 .78 .81];
       hgt = [ 4  5   3   4  5  4.2 2.1 4.3  3.1 5.1 4.2];
       wth = [.005 .005 .006 .01 .01 .03 .01 .01  .005 .008 .005];
       for j =1:length(pos)
               sig = sig + hgt(j)./( 1 + abs((t - pos(j))./wth(j))).^4;
       end
elseif  strcmp(Name, 'Bumps-GCosine'), % Cosine wave + gaussian bumps.
	t  	   = linspace(0,1,n)';
	parts(:,1) = cos(2*pi*t*16.);
	parts(:,2) = exp(-(t-0.25).^2*1000)-exp(-(t-0.55).^2*2000)+exp(-(t-0.75).^2*2000);
	sig        = sum(parts,2);
elseif  strcmp(Name, 'Bumps-LCosine'), % Local cosine wave (W=32) + gaussian bumps.
	parts 	     = zeros(n,2);
	w  	     = n/8;
	parts(1:w,1) = cos(2*pi*linspace(0,2*w,w)'/w);
	parts(n/2+1:n/2+w,1) = cos(2*pi*linspace(0,2*w,w)'/(w/2));  
	parts(:,2)   = exp(-(t-0.33).^2*2000)+exp(-(t-0.9).^2*1000);    
	sig 	     = sum(parts,2);
elseif strcmp(Name, 'Star'),
	fid = fopen('star.asc');
	sig = fscanf(fid, '%g');
	fclose(fid);
elseif strcmp(Name, 'Greasy'),
	type greasy.doc
	fid = fopen('greasy.asc');
	sig = fscanf(fid, '%g');
	fclose(fid);
elseif strcmp(Name, 'Transients'),
	type transients.doc
	fid = fopen('transients.asc');
	sig = fscanf(fid, '%g');
	fclose(fid);
elseif strcmp(Name, 'Earthquake'),
	type earthquake.doc
	fid = fopen('earthquake.asc');
	sig = fscanf(fid, '%g');
	fclose(fid);
elseif strcmp(Name, 'EegfMRI'),
	load eegfmri.mat;
	sig = s(1:2:end)';	
end
