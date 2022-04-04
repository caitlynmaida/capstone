% inputs:
% x - x axis data
% y - y axis data
% n - plot name
% xl - x axis label
% yl - y axis label
% t - x axis = time? [yes(1) or no(0)]
% o - remove outliers? [yes(1) or no(0)]
% z - z axis data [optional]
% zl - z axis label [optional]

function singleplot(x,y,n,xl,yl,t,o,z,zl)

if nargin < 8
    z = 0;
end

if t == 1 % time on x axis
    t1 = x(1,1);
    
    for i = 1:height(x)
        x(i,1) = x(i,1) - t1;
    end
end

if o == 1 % remove outliers
    TF = isoutlier(y);
    
    for j = 1:height(TF)
        if TF(j,1) == 1
            x(j) = [];
        end
    end
    
    y = rmoutliers(y);
end

if z == 0
    figure();
    plot(x, y, 'b-', 'LineWidth', 2);
    grid on;
    title(n);
    xlabel(xl);
    ylabel(yl);
else
    figure();
    plot3(x, y, z, 'b-', 'LineWidth', 2);
    grid on;
    title(n);
    xlabel(xl);
    ylabel(yl);
    zlabel(zl);
end
end