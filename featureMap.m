function X_map = featureMap(X)
%FEATUREMAP Summary of this function goes here
%   Detailed explanation goes here
X_map = X;
for i = 1:size(X,2)
    for j = i:size(X,2)
        X_map = [X_map X(:,i).*X(:,j)];
    end
end
end

