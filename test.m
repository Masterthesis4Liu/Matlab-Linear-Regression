clear;
clc;
data = csvread('output.csv');
X =data(:,1:end-1);
y = data(:,end);

%delta =inv(X'*X)*X'*y;
%pinv(X*y);
theta = X \ y;

y_predict = X*theta;
delta_y = y -y_predict;
figure(1);
hold on;
plot(1:586,y,'r.');
plot(1:586,y_predict,'.');
legend('True value','Prediction');
hold off;
figure(2);
hold on;
plot(1:586,delta_y,'.');
bar(delta_y);
legend('Error');
hold off;