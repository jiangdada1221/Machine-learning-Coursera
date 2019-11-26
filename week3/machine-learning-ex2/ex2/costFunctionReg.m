function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta


h = X * theta;
J = J + theta' * theta * lambda / (2*m) - lambda/(2*m)*theta(1)^2;
J = J - (y' * log(1 ./ (exp(-h) + 1)) + (1-y)' * log(1 -1./ (1 + exp(-h))))/m;

grad = X' * (1 ./ (exp(-h) + 1) - y) / m + lambda * theta / m;
grad(1) = grad(1) - lambda/m * theta(1);




% =============================================================

end
