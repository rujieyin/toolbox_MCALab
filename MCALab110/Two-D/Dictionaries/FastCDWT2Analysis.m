function coef = FastCDWT2Analysis(img,L,pars2,pars3)
% Input:  L: level of decomposition

if isstr(L) L=str2double(L); end
[w1,w2] = cdwt2(img,L);
coef = struct('coeff',[]);
coef.coeff = cat(1,w1,w2);
coef = [struct('coeff',[]),coef];% for compatibility of MCA code
