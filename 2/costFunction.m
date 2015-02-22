function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples
row_num = rows(X);
col_num = columns(X);
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
%h_theta = sigmoid(theta' * X');
%for row = 1:m	
		
%		J =   (J + [-y  * log(h_theta)-(1-y(row)) * log(1-h_theta)]);
%endfor
%J = 1/m *J;

%==============
		%h_theta = sigmoid(theta' * X');
		%J =  1/m * sum([-y * log(h_theta)-(1-y) * log(1-h_theta)]);
%J= J(1,1);
%==================

%for row = 1:row_num
	
		
%		h_theta = sigmoid(X(row));
%		J =   (J + [-y(row)* log(sigmoid(X(row)))-(1-y(row)) * log(1-sigmoid(X(row)))]);
		
	
%endfor

%=================================

%J = 1/m *J;
%h_theta= sigmoid(theta' * X');
%for row = 1:m
%	J = J +([-y(row)* log(h_theta(row))-(1-y(row)) * log(1-h_theta(row))]);
%endfor

%J = 1/m * J ;
%=================================================
h_theta = sigmoid(X * theta);
J = 1./m * ( -y' * log( h_theta ) - ( 1 - y' ) * log ( 1 - h_theta) );


grad = 1./m * ((h_theta - y)' * X);


% =============================================================

end
