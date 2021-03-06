function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

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
%
% Note: grad should have the same dimensions as theta
%

h_of_x = sigmoid(X * theta);

J = 1 / m * sum( -1 * y' * log(h_of_x) - (1-y') * log(1 - h_of_x) );
grad = 1 / m * (X' * (h_of_x - y));

%for i = 1:m
%  J = J + -y(i,:).*log(sigmoid(X(i,:))) - (1-y(i,:)).*log(1-sigmoid(X(i,:)));
%endfor
%
%J = J / m;
%
%%gradients (outer loop goes through thetas, inner is for feature rows)
%for j = 1:length(grad)
%  for i = 1:m
%    grad(j) = grad(j) + (1/m).*(sigmoid(X(i,:))-y(i,:))*(theta(j));
%  endfor
%endfor

% =============================================================

end
