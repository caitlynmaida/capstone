%% Group 6, ENGO 500, Fall 2021/Winter 2022
close all;
clear;
clc;

%% Plotting Parsed Data
M = readtable('INSPVAX.csv');

%% azimuth error v time
x = M.seconds(:);
y = M.azimuthsigma(:);
name = "Azimuth Error - 30 Minute Driving Test";
xlabel = "Duration [s]";
ylabel = "Azimuth Error [degrees]";

output(x,y,name,xlabel,ylabel,1,0);

%% latitude v time
x = M.seconds(:);
y = M.lat(:);
name = "Latitude - 30 Minute Driving Test";
xlabel = "Duration [s]";
ylabel = "Latitude [degrees]";

output(x,y,name,xlabel,ylabel,1,0);

%% longitude v time
x = M.seconds(:);
y = M.lon(:);
name = "Longitude - 30 Minute Driving Test";
xlabel = "Duration [s]";
ylabel = "Longitude [degrees]";

output(x,y,name,xlabel,ylabel,1,0);

%% height v time
x = M.seconds(:);
y = M.hgt(:);
name = "Height Above Mean Sea Level - 30 Minute Driving Test";
xlabel = "Duration [s]";
ylabel = "Height [m]";

output(x,y,name,xlabel,ylabel,1,0);

%% latitude v longitude
x = M.lon(:);
y = M.lat(:);
name = "Latitude v Longitude - 30 Minute Driving Test";
xlabel = "Longitude [degrees]";
ylabel = "Latitude [degrees]";

output(x,y,name,xlabel,ylabel,0,0);

%% latitude v longitude v height
x = M.lon(:);
y = M.lat(:);
z = M.hgt(:);
name = "Latitude v Longitude v Height Above Mean Sea Level - 30 Minute Driving Test";
xlabel = "Longitude [degrees]";
ylabel = "Latitude [degrees]";
zlabel = "Height Above Mean Sea Level [m]";

output(x,y,name,xlabel,ylabel,0,0,z,zlabel)