function X = FastCDWT2Synthesis(C,L,pars2,pars3)

% Input: C     [w1;w2] = C(2).coeff;
%        L     levels of decomposition

if isstr(L) L=str2double(L); end
w = C(2).coeff;
n = size(w,1)/2;
w1 = w(1:n,:);
w2 = w(n+1:end,:);
X = icdwt2(w1,w2,L);
