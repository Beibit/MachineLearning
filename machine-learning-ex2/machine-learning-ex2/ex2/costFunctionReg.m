function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta


h = sigmoid(X*theta);

for i=1:m,
  J = J + (-y(i)*log(h(i)) - (1-y(i))*log(1 - h(i)));
end
J=J/m;

n = length(theta);
s = 0;
for j=2:n,
  s = s + theta(j)^2;
end
J = J + s*lambda/(2*m);

for j=1:m,
    grad(1) = grad(1) + 1/m*(h(j)-y(j))*X(j);
end


for i=2:size(theta),
  for j=1:m,
    grad(i) = grad(i) + 1/m*(h(j)-y(j,1))*X(j,i);
  end
  grad(i) = grad(i) + lambda/m * theta(i);
end;


% =============================================================

end
