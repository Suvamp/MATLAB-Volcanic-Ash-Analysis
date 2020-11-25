% This script will explore the dataset of 51 microprobe analyses on glass
% shards hand-picked from a volcanic ash
%
% sodium.m
% Written by Suvam S. Patel
% 10/30/2019
%
% This script will study the distribution of sodium in the 51 analyses
%
%--------------------------------------------------------------------------

% load data
Na = load('sodiumcontent.txt');
Na(end) = []

% Generate Central Tendency
SampleMean = mean(Na);
SampleMedian = median(Na);

% Generate Dispersion
r = range(Na);
StdDev = std(Na);

% Generate Distribution
s = skewness(Na);
k = kurtosis(Na);

% Generate Histogram for Sodium analyses
histogram(Na,round(sqrt(length(Na))));
title('Sodium Analyses');
xlabel('Na(wt%)');

% Display Variables
fprintf('Central Tendency \n');
fprintf('Sample size : %f \n',length(Na));
fprintf('Sample mean : %.2f wt%% \n',SampleMean);
fprintf('Sample median : %.2f wt%% \n',SampleMedian);
fprintf('\n');
fprintf('Dispersion \n')
fprintf('Range : %.2f wt%% \n',r)
fprintf('Standard Deviation : %.2f wt%% \n',StdDev)
fprintf('\n')
fprintf('Distributions Shape \n')
fprintf('Skewness: %.2f \n',s)
fprintf('Kurtosis: %.2f \n',k)