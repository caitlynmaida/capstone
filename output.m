% output is a function that returns a plot after removing outliers from the
% given data

% inputs:
% c - column needed for plot
% n - plot name
% x - xlabel
% y - ylabel

function output(c,n,x,y)

c = rmoutliers(c);

figure();
plot(c, 'b-', 'LineWidth', 2);
grid on;
title(n);
xlabel(x);
ylabel(y);

end