% Code for Recitation Week 1, ENGR0020
% written by TA-Shaoning Han
data = [ 6.72 6.77 6.82 6.70 6.78 6.70 6.62 6.75 6.66 6.66 6.64 6.76 6.73...
    6.80 6.72 6.76 6.76 6.68 6.66 6.62 6.72 6.76 6.70 6.78 6.76 6.67 6.70...
    6.72 6.74 6.81 6.79 6.78 6.66 6.76 6.76 6.72];
mean(data)
std(data)
median(data)
range(data)
histogram(data)
title('histogram of Ex1.22')
xlabel('diameter/inch')
ylabel('relative frequency')
boxplot(data)