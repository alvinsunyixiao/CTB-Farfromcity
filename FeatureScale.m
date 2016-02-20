function X_reg = FeatureScale(X)
%FEATURESCALE Summary of this function goes here
%   Detailed explanation goes here
mu = mean(X);
sigma = std(X);
X_reg = X;
for i = 1:size(X,1)
    for j = 1:size(X,2)
        X_reg(i,j) = (X_reg(i,j)-mu(j))/sigma(j);
    end
end

end

