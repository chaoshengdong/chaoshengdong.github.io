%% Simple Linear Regression
% Prepare data; Excercise 11.6 p339
% independent variable
x = [26.8 25.4 28.9 23.6 27.7 23.9 24.7 28.1 26.9 27.4 22.6 25.6 ]; 
% response variable
y = [26.6 27.3 24.2 27.1 23.6 25.9 26.3 22.5 21.7 21.4 25.8 24.9 ];

% Plot (x,y) and observe the linear trend
plot(x,y,'o');
% Estimate the linear regression line y = b0 + b1x1
mdl = fitlm(x, y)
% Plot the linear regression line
plot(mdl);
% Anova table for the linear regression line
tbl = anova(mdl)

%% One-way Anova
% Prepare data; Excercise 13.4 p519
knockdownTime = [11,10,4;5,7,4;14,16,6;7,7,3;10,7,5;
                7,5,6;23,10,8;4,10,3;11,6,7;11,12,3];

anova1(knockdownTime);
