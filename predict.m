function p = predict(theta,X,y)
%PREDICT Summary of this function goes here
%   Detailed explanation goes here
rs = round(sigmoid(X*theta));
p = sum(rs==y)/size(y,1);

end

