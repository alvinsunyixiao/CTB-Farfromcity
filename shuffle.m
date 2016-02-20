function [X_train, y_train, X_test, y_test] = shuffle(X,y,rate)
%SHUFFLE Summary of this function goes here
%   Detailed explanation goes here
all = [X y];
all = all(randperm(length(all)),:);
cut = round(size(X,1)*rate);
X_train = all(1:cut,1:end-1);
X_test = all(cut+1:end,1:end-1);
y_train = all(1:cut,end);
y_test = all(cut+1:end,end);

end

