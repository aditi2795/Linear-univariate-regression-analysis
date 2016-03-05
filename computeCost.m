function J = computeCost(X,Y,theta,m)
J=0;
H= X*theta;
sq= (H - Y).^2;
J =1/(2*m) * sum(sq);
end