function g = a15 (A)
X = A'*A
[V,D] = eig(X)
S = D^(0.5)
U = A*V*S^(-1)

endfunction