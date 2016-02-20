clear ; close all; clc
Iteration = 1000;
count = 0;
load('allData.mat');
load('theta.mat');
X = Xall(:,2:end);
y = yall;
%X = featureMap(X);
X = FeatureScale(X);
X = [ones(size(X,1),1) X];
initialTheta = ones(size(X,2),1);
thetaCount = initialTheta*0;
for i = 1:Iteration
%[X_train, y_train, X_test, y_test] = shuffle(X, y, 0.85);
X_train = X;X_test = X;y_train = y;y_test = y;
lambda = 0.6;
options = optimset('GradObj','on','MaxIter',400);

[theta cost] = fminunc(@(t)(costFunc(t,X_train ,y_train,lambda)),initialTheta,options);
thetaCount = thetaCount + theta;
count = count + predict(theta,X_test,y_test);
end
thetaCount = thetaCount / Iteration
count = count / Iteration

