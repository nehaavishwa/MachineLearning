function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%      
%X_norm = X_norm-mu;
%data = load('ex1data2.txt');
%X = data(:, 1); 
%num_iters = length(X);
%for iter = 1:num_iters
	%X_norm = X_norm - mu;
%	std_dev = std(X(:,1));
	%X_norm = X_norm/std_dev;
%end
%X_norm = sum(X_norm/std_dev);
%fprintf('The value of Mean Normalization is %f and standard deviation is %f \n', X_norm, std_dev);
%fprintf('The value of mu is %f \n, value of sigma is %f \n, value of mean of this feature %f \n\n', mu, sigma, X_norm);

for X_column = 1:columns(X)
	mu(1,X_column)    = mean(X(:,X_column));
	fprintf('mu is %f \n',mu);
	sigma(1,X_column) = std(X(:,X_column));
	fprintf('sigma is %f \n',sigma);
end
 %fprintf('The value of mu is %f \n, value of sigma is %f \n, value of mean of this feature %f \n\n', mu, sigma, X_norm);
%X_norm;
for row = 1:rows(X)
	for X_column = 1:columns(X)
		X_norm(row,X_column) = (X(row,X_column)-mu(1,X_column))/sigma(1,X_column);
	%	fprintf('Mean_normalization is %f \n',X_norm(row,X_column))
	end
end
% ============================================================

end
