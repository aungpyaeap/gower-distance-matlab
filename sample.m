clc; clear; close all;

% Define data
Gender = {'male'; 'female'; 'male'; 'female'; 'male'; 'male'; 'female'; 'male'};
Age = [19; 23; 36; 24; 32; 26; 22; 25];
Height = [176; 166; 185; 175; 194; 182; 170; 174];
Hobby = {'music'; 'writing'; 'football'; 'tennis'; 'basketball'; 'tennis'; 'writing'; 'music'};

dataPoints = table(Gender, Age, Height, Hobby);

fprintf('Dataset %d x %d matrix.\n', height(dataPoints), width(dataPoints));
disp(dataPoints);

DIST = gower(dataPoints);
fprintf('Gower distance matrix %d x %d matrix.\n', height(DIST), width(DIST));
disp(DIST);