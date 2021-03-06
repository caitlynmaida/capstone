% inputs:
% x1 - 1st x axis data
% y1 - 1st y axis data
% x2 - 2nd x axis data
% y2 - 2nd y axis data
% m - convert to meters? [yes(1) or no(0)]
%
% outputs:
% e - error dataset

function e = errors(x1,y1,x2,y2,m)

x = x2 - x1;
y = y2 - y1;

if m == 1
    [e,az] = distance(y1,x1,y2,x2,referenceEllipsoid('wgs84'));
else
    e = sqrt(x.^2 + y.^2);
end

end