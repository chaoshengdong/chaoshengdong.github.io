mu1 = 2;
mu2 = 4;
sigma1 = 2;
sigma2 = 3;
data1 = mu1 + sigma1 * randn(25,1);
data2 = mu2 + sigma2 * randn(25,1);

% H0: mu1 = mu2 null hypothesis
% H1: mu1 ~= mu2 alternative hypothesis
alpha = 0.1;
% Two-sample two sided without assuming equal variance
[h1, p1, ci1] = ttest2(data1, data2, 'vartype', 'unequal', 'alpha', alpha)

% output: 
% h = 1 reject, 0 fail to reject; 
% p: p value
% ci: confidence interval

% H0: mu1 = mu2 null hypothesis
% H1: mu1 < mu2 alternative hypothesis
alpha = 0.1;
% Two-sample one sided without assuming equal variance
[h2, p1, ci2] = ttest2(data1, data2, 'vartype', 'unequal', 'alpha', alpha, 'tail', 'left')