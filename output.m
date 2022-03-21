% output is a function that returns a plot after removing outliers from the
% given data

% inputs:
% t - time
% c - column needed for plot
% n - plot name
% x - xlabel
% y - ylabel

function output(t,c,n,x,y)

t1 = t(1,1);

for i = 1:height(t)
    t(i,1) = t(i,1) - t1;
end

%%% - comment this section out to keep outliers
% TF = isoutlier(c);
% 
% for j = 1:height(TF)
%     if TF(j,1) == 1
%         t(j) = [];
%     end
% end
% 
% c = rmoutliers(c);
%%% - comment this section out to keep outliers

figure();
plot(t, c, 'b-', 'LineWidth', 2);
grid on;
title(n);
xlabel(x);
ylabel(y);

end