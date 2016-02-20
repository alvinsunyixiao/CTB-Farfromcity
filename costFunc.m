function [J,grad] = costFunc(theta, X, y, lambda)

m = length(y);
J = sum(-y.*log(sigmoid(X*theta))-(1-y).*log(1-sigmoid(X*theta)))/m+...
    lambda*(sum(theta(2:size(theta),:).^2))/(2*m);
box = [0;theta(2:size(theta))];
grad = X'*(sigmoid(X*theta)-y)/m+box*lambda/m;


end

