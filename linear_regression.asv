% The ?rst column is the population of a city and the second column is the
% pro?t of a food truck in that city
clc;
fprintf('Running linear regression \n' )
data = load ('ex1data1.txt');
X = data(:, 1);
Y = data(:, 2);
%axis auto;
plot (X, Y,'rx', 'Markersize', 10);
xlabel ='Profit in $10,000s';
ylabel = 'Population of City in 10,000s';
theta = zeros(2,1);
m = length(Y);
X = [ones(m,1), data(:,1)];  % Adding 1 to the X vector, X values of data

% Some gradient descent settings
iterations = 1500;
alpha = 0.01;

% compute and display initial cost

computeCost(X,Y,theta,m);
% running gradient descent to find minimum cost
J_history = zeros(iterations, 1);
sum_theta =theta;
theta_len = length(theta);
for j = 1:iterations
    
    H= (X*theta) - Y ;
    
for i =1:theta_len
    
    sum_theta(i,1) = sum (H.* X(:,i));
    
end

theta = theta - (alpha /m) * (sum_theta);
J_history(iterations) = computeCost(X,Y,theta,m);
end

fprintf('\n The values of theta1 and theta2 %f %f', theta(1), theta(2)); 
hold on; %keep previous plot visible
plot(X(:,2), X*theta, '-')
legend('Training data', 'Linear regression')
hold off % don't overlay any more plots on this figure




