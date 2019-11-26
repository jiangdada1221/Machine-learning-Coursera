function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%



h = X * theta;
h = h - y;
J = h' * h / (2*m);
J = J + lambda * (theta' * theta - theta(1)*theta(1)) / (2*m);

sum1 = X * theta - y;
sum1 = X.* sum1;
sum1 = sum(sum1);

grad = sum1 / m;
grad = grad';
theta(1) = 0;
grad = grad + (lambda/m) * theta;










% =========================================================================

grad = grad(:);

end
