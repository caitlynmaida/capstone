%% Group 6, ENGO 500, Fall 2021/Winter 2022
close all;
clear;
clc;

%% Plotting Parsed Data
M = readtable('INSPVAX_H75.csv');
N = readtable('INSPVAX_HPP.csv');
O = readtable('BESTGNSSPOS_H75.csv');
P = readtable('BESTGNSSPOS_HPP.csv');

%% azimuth error - INS
% y1 = M.azimuthsigma(:);
% x1 = M.seconds(:);
% y2 = N.azimuthsigma(:);
% x2 = N.seconds(:);
% name = "Azimuth Error - Highway - INS";
% xlabel = "Duration [seconds]";
% ylabel = "Azimuth Error [degrees]";
% legend1 = "OEM 7500";
% legend2 = "PwrPak";
% 
% multiplot(x1,y1,x2,y2,name,xlabel,ylabel,legend1,legend2,1,0);

%% 2d position error
% x1 = M.lon(:);
% y1 = M.lat(:);
% x2 = N.lon(:);
% y2 = N.lat(:);
% e2ins = errors(x1,y1,x2,y2,1);
% 
% x1 = O.lon(:);
% y1 = O.lat(:);
% x2 = P.lon(:);
% y2 = P.lat(:);
% e2gnss = errors(x1,y1,x2,y2,1);
% 
% for i = 1:height(e2gnss)
%     if e2gnss(i) > 5
%         e2gnss(i) = 0;
%     end
% end
% 
% y1 = e2ins;
% x1 = M.seconds(:);
% y2 = e2gnss;
% x2 = O.seconds(:);
% name = "2D Position Error - Highway - OEM7500 v PwrPak";
% xlabel = "Duration [seconds]";
% ylabel = "2D Position Error [m]";
% legend1 = "INS";
% legend2 = "No INS";
% 
% multiplot(x1,y1,x2,y2,name,xlabel,ylabel,legend1,legend2,1,0);

%% latitude v longitude - INS
% x1 = M.lon(:);
% y1 = M.lat(:);
% x2 = N.lon(:);
% y2 = N.lat(:);
% name = "Latitude v Longitude - Highway - INS";
% xlabel = "Longitude [degrees]";
% ylabel = "Latitude [degrees]";
% legend1 = "OEM 7500";
% legend2 = "PwrPak";
% 
% multiplot(x1,y1,x2,y2,name,xlabel,ylabel,legend1,legend2,0,0);

%% latitude v longitude - No INS
% x1 = O.lon(:);
% y1 = O.lat(:);
% x2 = P.lon(:);
% y2 = P.lat(:);
% name = "Latitude v Longitude - Highway - No INS";
% xlabel = "Longitude [degrees]";
% ylabel = "Latitude [degrees]";
% legend1 = "OEM 7500";
% legend2 = "PwrPak";
% 
% multiplot(x1,y1,x2,y2,name,xlabel,ylabel,legend1,legend2,0,0);

%% latitude v longitude v height - INS
% x1 = M.lon(:);
% y1 = M.lat(:);
% z1 = M.hgt(:);
% x2 = N.lon(:);
% y2 = N.lat(:);
% z2 = N.hgt(:);
% name = "Latitude v Longitude v Height Above Mean Sea Level - Highway - INS";
% xlabel = "Longitude [degrees]";
% ylabel = "Latitude [degrees]";
% zlabel = "Height Above Mean Sea Level [m]";
% legend1 = "OEM 7500";
% legend2 = "PwrPak";
% 
% multiplot(x1,y1,x2,y2,name,xlabel,ylabel,legend1,legend2,0,0,z1,z2,zlabel);

%% latitude v longitude v height - No INS
% x1 = O.lon(:);
% y1 = O.lat(:);
% z1 = O.hgt(:);
% x2 = P.lon(:);
% y2 = P.lat(:);
% z2 = P.hgt(:);
% name = "Latitude v Longitude v Height Above Mean Sea Level - Highway - No INS";
% xlabel = "Longitude [degrees]";
% ylabel = "Latitude [degrees]";
% zlabel = "Height Above Mean Sea Level [m]";
% legend1 = "OEM 7500";
% legend2 = "PwrPak";
% 
% multiplot(x1,y1,x2,y2,name,xlabel,ylabel,legend1,legend2,0,0,z1,z2,zlabel);

%% available satellites
x1 = O.seconds(:);
y1 = O.numberofmultisats(:);
x2 = P.seconds(:);
y2 = P.numberofmultisats(:);
name = "Number of Multi-Frequency Satellites Used in Solution - Highway - No INS";
xlabel = "Duration [seconds]";
ylabel = "# Satellites";
legend1 = "OEM 7500";
legend2 = "PwrPak";

multiplot(x1,y1,x2,y2,name,xlabel,ylabel,legend1,legend2,1,0);