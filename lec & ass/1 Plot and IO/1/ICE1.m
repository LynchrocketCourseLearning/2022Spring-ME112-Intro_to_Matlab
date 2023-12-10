%% Command Line

% 1
Name = 'Liu Leqi';
% 2
ans2 = 15/(8*10);
% 3
a = 6;
% 4
c = a*2;
% 5
w = [18 12 1;4 8 1];
% 6
ans6 = w.^3;

%% Variables and Arrays

% Problem1
M12 = ones(5,6)*12;

% Problem2
% a
ma = rand(randi(9)+1,randi(9)+1);
% b
[rows,cols] = size(ma);
% c
w = ma(end,end-1);
% d
% publish('ICE1.m','doc'); % it will lead to dead-cycle, so I commented it

% Problem3
% a
clc;
% b
% Liu Leqi HW1, Problem3
% c
y = [3 4 5;1 2 3];
% d
ra = y+16;
% e
rd = sqrt(exp(y));