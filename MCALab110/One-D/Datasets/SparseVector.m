function x = SparseVector(n, k)
% SparseVector: Generates a sparse vector unifromly at random.
%
%  Usage:
%     x = SparseVector(n, k)
%  Inputs:
%    n          vector length
%    k          number of nonzero entries which are iid Gaussian 
%  Outputs:
%    x          Sparse n vector.
%

x = [randn(k,1); zeros(n-k,1)];
p = randperm(n);
x = x(p);


