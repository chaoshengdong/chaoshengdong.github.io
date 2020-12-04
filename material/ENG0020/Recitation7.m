% Code for Recitation Week 7, ENGR0020
% written by TA-Shaoning Han
%generate normal samples
n = 20; % sample size
m = 1000;  % number of samples
mu = 10;  % expectation
sigma = 7; % std
samples = mu + sigma * randn(n, m); % each column is a sample
sample_means = mean(samples); 
histogram(sample_means, 'normalization','pdf');
hold on;
sigma_mean = sigma / sqrt(n);
f_normal = @(x) exp(-(x - mu).^2 ./ (2 * sigma_mean^2))./(sigma_mean * sqrt(2*pi));
fplot(f_normal, [0, 20], 'LineWidth', 2);
hold off;

%generate exponential sample
lambda = 3;
n2 = 1000; % sample size
x = rand(n2, 1); % uniform random sample
z = log(1 - x) / (-lambda);
histogram(z, 'normalization','pdf');
hold on;
f_exp = @(x) lambda * exp((-lambda) * x);
fplot(f_exp, [0, 2], 'LineWidth', 2);
hold off;
