%% Group 6, ENGO 500, Fall 2021/Winter 2022
close all;
clear;
clc;

%% Plotting Parsed Data
M = readtable('INSPVAX.csv');

% column = M.azimuthsigma(:);
% name = "Azimuth Error - 30 Minute Driving Test";
% xlabel = "Duration [s]";
% ylabel = "Azimuth Error [degrees]";
% 
% output(column,name,xlabel,ylabel);

% column = M.lat(:);
% name = "Latitude - 30 Minute Driving Test";
% xlabel = "Duration [s]";
% ylabel = "Latitude [degrees]";
% 
% output(column,name,xlabel,ylabel);

% column = M.lon(:);
% name = "Longitude - 30 Minute Driving Test";
% xlabel = "Duration [s]";
% ylabel = "Longitude [degrees]";
% 
% output(column,name,xlabel,ylabel);

column = M.hgt(:);
name = "Height Above Mean Sea Level - 30 Minute Driving Test";
xlabel = "Duration [s]";
ylabel = "Height [m]";

output(column,name,xlabel,ylabel);