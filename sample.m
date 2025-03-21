clc; clear; close all;
rng('default');

load fisheriris.mat;

dataPoints = array2table(meas);

DIST = GowerDistance(dataPoints);
disp(DIST);