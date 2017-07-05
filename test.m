clear;
clc;
data = csvread('output.csv');
X =data(:,1:end-1);
X = [ones(size(X,1),1),X]
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
xlabel('Modell');
ylabel('Shear angle value');
hold off;

figure(2);
a = linspace(-3,3,10);
b = a;
hold on;
plot(a,b);
plot(y_predict,y,'r*');
grid on;
xlabel('Predicted value');
ylabel('True value');
hold off;

figure(3);
y_error = abs(y - y_predict);
hold on;
plot(1:586,y_error,'.');
grid on;
xlabel('Modell');
ylabel('Absolute error');
hold off;