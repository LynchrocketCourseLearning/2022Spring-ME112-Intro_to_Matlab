%% HW for graphics and symbolic variable
% Liu Leqi, 12011327

%% Problem 1
clear all; clc;
% 1
syms x y
eq1 = (3*x^2+7*x*y+4 == 0);
syms x y z a b
eq2 = (a*y+b*x == z);
syms x y z
eq3 = (x-2*y+2*z == 0);
% 2
disp(solve(eq1,x));
disp(solve(eq2,x));
disp(solve(eq3,x));
% 3
[xb,yb,zb] = solve([eq1 eq2 eq3],[x y z])
% 4
eqs = subs(eq2, [a b], [4 0.3]);
[xs,ys,zs] = solve([eq1 eqs eq3],[x y z])
% 5
disp(double(xs));
disp(double(ys));
disp(double(zs));

%% Problem 2
clear all; clc;
% 1
y = poly2sym([0.3 0 0 -3 4.1 -5])
d1 = diff(y)
d2 = diff(y,2)
in = int(y)
% 2
ezplot(y);
myPutText("Liu Leqi","NorthWest");
ezplot(d1);
myPutText("Liu Leqi","NorthWest");
ezplot(d2);
myPutText("Liu Leqi","NorthWest");
ezplot(in,[-4,4]);
myPutText("Liu Leqi","NorthWest");

%% Problem 3
clear all; clc;
% 1
T = readtable('dotData.txt');
T.Properties.VariableNames = {'x','y','z'};
% 6
f = figure;
axis equal;
% 2 8
for i = 1:length(T.x)
    if T.z(i) >= 0.4
        rectangle('Position',[T.x(i) T.y(i) T.z(i) T.z(i)],'Curvature',[1 1], ...
            'FaceColor','red','EdgeColor','red');
    else
        rectangle('Position',[T.x(i) T.y(i) T.z(i) T.z(i)],'Curvature',[1 1], ...
            'FaceColor','black','EdgeColor','black');
    end
end
% 4
set(gca,'xcolor','white','ycolor','white');
% 5
myPutText('Liu Leqi', 'SouthEast');

%% Problem 4
% 1
x = 0:10:360;
y = sind(x);
theta = 0;
while theta <= 720
    y_plot = y*sind(theta);
    plot(x, y_plot);
    text(10, 0, 'Liu Leqi');
    axis([0 360 -0.5 0.5]);
    theta = theta + 10;
    pause(0.1)
end
% 2
x = 0:10:360;
y = sind(x);
theta = 0;
M(72) = struct('cdata', [], 'colormap', []);
h = figure;
h.Visible = 'off';
for i = 1:73
    y_plot = y*sind(theta);
    plot(x, y_plot);
    text(10, 0, 'Liu Leqi');
    axis([0 360 -0.5 0.5]);
    M(i) = getframe;
    theta = theta + 10;
    pause(0.1)
end
h.Visible = 'on';
writeravi = VideoWriter('Problem4_1.avi');
open(writeravi);
for k = 1:length(M)
    writeVideo(writeravi, M(k));
end
close(writeravi);

filename = 'Problem4_2.gif';
for i = 1:10
    im = frame2im(M(i));
    [imind, cm] = rgb2ind(im, 256);
    if i == 1
        imwrite(imind, cm, filename, 'gif', 'LoopCount', 1);
    else
        imwrite(imind, cm, filename, 'gif', 'WriteMode', 'append');
    end
end

%% Problem 5
% Here I use boundary value as 20 to show the result
% If want to interact with user, you can cancel the annotation of while
% block.
% 1
value = 20;
% while 1
%     value = input('Please input a value between 20 and 100: \n');
%     if value >= 20 && value <= 100
%         break;
%     end
% end

% 2
k = 5;
che = true;
while 1
    plot(fft(eye(k)));
    axis([-1 1 -1 1]);
    axis equal; % 3
    set(gca,'xcolor','white','ycolor','white'); % 4
    pause(0.05);
    if k == value
        che = false;
    end
    if che
        k = k + 2;
    else
        k = k - 2;
    end
    if (~che) && (k <= 5)
        break;
    end
end

%% Functions
function myPutText(name, position)
    switch position
        case 'NorthWest'
            x = 0.10; y = 0.90;
        case 'NorthEast'
            x = 0.70; y = 0.90;
        case 'SouthWest'
            x = 0.10; y = 0.10;
        case 'SouthEast'
            x = 0.70; y = 0.10;
        otherwise
            x = 0.00; y = 0.00;
    end
    text('string', name, 'Units', 'normalized', 'position', [x, y]);
end
