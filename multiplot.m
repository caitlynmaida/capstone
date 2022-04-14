% inputs:
% x1 - 1st x axis data
% y1 - 1st y axis data
% x2 - 2nd x axis data
% y2 - 2nd y axis data
% n - plot name
% xl - x axis label
% yl - y axis label
% l1 - 1st legend entry
% l2 - 2nd legend entry
% t - x axis = time? [yes(1) or no(0)]
% o - remove outliers? [yes(1) or no(0)]
% z1 - 1st z axis data [optional]
% z2 - 2nd z axis data [optional]
% zl - z axis label [optional]

function multiplot(x1,y1,x2,y2,n,xl,yl,l1,l2,t,o,z1,z2,zl)

if nargin < 12 % no 3d data
    z1 = 0;
    z2 = 0;
end

if t == 1 % time on x axis
    t11 = x1(1,1);
    t12 = x2(1,1);
    
    for i = 1:height(x1)
        x1(i,1) = x1(i,1) - t11;
    end
    for i = 1:height(x2)
        x2(i,1) = x2(i,1) - t12;
    end
end

if o == 1 % remove outliers
    TF1 = isoutlier(y1);
    TF2 = isoutlier(y2);
    
    for j = 1:height(TF1)
        if TF1(j,1) == 1
            x1(j) = [];
        end
    end
    for j = 1:height(TF2)
        if TF2(j,1) == 1
            x2(j) = [];
        end
    end
    
    y1 = rmoutliers(y1);
    y2 = rmoutliers(y2);
end

if z1 == 0
    figure();
    plot(x1, y1, 'b-', 'LineWidth', 2);
    hold on;
    plot(x2, y2, 'r-', 'LineWidth', 2);
    hold off;
    grid on;
    title(n);
    legend(l1,l2);
    xlabel(xl);
    ylabel(yl);
else
    figure();
    plot3(x1, y1, z1, 'b-', 'LineWidth', 2);
    hold on;
    plot3(x2, y2, z2, 'r-', 'LineWidth', 2);
    hold off;
    grid on;
    title(n);
    legend(l1,l2);
    xlabel(xl);
    ylabel(yl);
    zlabel(zl);
end
end