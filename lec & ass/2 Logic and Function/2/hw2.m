%% MATLAB HW2
% Liu Leqi, 12011327
%% Problem 1
clear all; clc;
% given value
A = [0 -1 4; 9 -14 25; -34 49 64];
B = A; % copy A to B
B(B>0) = sqrt(B(B>0));
B(B<0) = B(B<0)+50;
disp(B);

%% Problem 2
clear all; clc;
% given values
acc = 500; final = 10000; cnt = 0;
% when the accumulate account less than final aim, continue the loop
while acc < final 
    acc = acc *1.05+500; % interest and new deposit
    cnt = cnt +1; % year count
end
fprintf('It takes %d years. \n', cnt);

%% Problem 3
clear all; clc;
% given values
price = [19 18 22 21 25 19 17 21 27 29];
shares = 1000; 
buy_money = 0; sell_money = 0;
% iterate the price
for i = price
    % judge if the price today matches the expectation
    if i < 20 % buy in shares
        buy_money = buy_money + 100*i;
        shares = shares +100;
    elseif i > 25 % sell out shares
        sell_money = sell_money +100*i;
        shares = shares -100;
    end
end    
fprintf('Spent in buying shares: $%d \n', buy_money);
fprintf('Received from selling shares: $%d \n', sell_money);
fprintf('Number of shares: $%d \n', shares);
fprintf('Net increase: $%d \n', sell_money-buy_money+shares*price(end)-1000*price(1));

%% Problem 4
clear all; clc;
% given values
x = [1 7 8 17 22 27]; y = [28 18 16 2 10 8]; V = [3 7 4 5 2 6];
m = 0; n = 0; C = 1000000000000000000000;
% iterate for all integer positions on the map
for p = 0:1:30
    for q = 0:1:30
        tmp = 0;
        % compute the cost
        for i = 1:1:6
            tmp = tmp + 0.5*sqrt((p-x(i))^2+(q-y(i))^2)*V(i);
        end
        % exchange for a minimum cost
        if tmp < C
            C = tmp;
            m = p; n = q;
        end
    end
end
fprintf('The location required is: (%d, %d). \n', m, n);

%% Problem 5
clear all; clc;
% given values
T1 = 70; T2 = 200; W = 2; L = 2;
% a
% for x = y = 1, verify the fact
n = 1:2:19;
w = (2./n).*sin(n*pi/L).*sinh(n*pi/L)./sinh(n*pi*W/L);
figure;
plot(n,w);

% b
mysum = 0; terms = 1; 
% loop search until find the term that satisfy the requirement
while (1)
    tmp = (2/terms)*sin(terms*pi/L)*sinh(terms*pi/L)/sinh(terms*pi*W/L);
    if abs(tmp/mysum) < 0.01
        break;
    else
        terms = terms + 2;
        mysum = mysum+tmp;
    end
end
fprintf('require %d terms. \n', terms);

% c
x = 0:0.2:L; y = 0:0.2:W;
mysum = zeros(length(x),length(y)); 
p = 0; 
for xt = 0:0.2:L
    p = p+1; q = 0;
    for yt = 0:0.2:W
        q = q+1;
        n = 1;
        while (1)
            tmp = (2/n)*sin(n*pi*xt/L)*sinh(n*pi*yt/L)./sinh(n*pi*W/L);
            if mysum(p,q) == 0 && (xt == 0 || yt == 0)
                break;
            end
            if abs(tmp/mysum(p,q)) < 0.01
                break;
            else
                n = n + 2;
                mysum(p,q) = mysum(p,q)+tmp;
            end
        end
    end
end
T = (T2-T1)*(2/pi*mysum)+T1;
[X,Y] = meshgrid(x,y);
figure;
surf(X,Y,T);

%% Problem 6
clear all; clc;
% given values
B = 10000; rate = 0.01; interest = 0; cur = 0;
disp('Current month  Interest rate  Amount of interest this month  New balance  Total interest earned');
for mon = 1:1:12
    % judge if satisfy the condition of interest rate
    if B <= 15000
        rate = 0.01;
    elseif B <= 20000
        rate = 0.015;
    else
        rate = 0.02;
    end
    cur = B*rate;
    interest = interest+B*rate;
    B = B+cur+1000;
    fprintf('%d        %.1f%%        $%.2f        $%.2f        $%.2f \n', mon, rate*100, cur, B, interest);
end    

%% Problem 7
clear all; clc;
% x data
xmin = -10+(10-(-10)).*rand;
xrange = 2+(5-2)*rand;
xmax = xmin+xrange;
numPts = 150;
x = linspace(xmin, xmax, numPts);
x2 = x-0.2*xrange;

% y data
Amp = 0.5+(2-0.5).*rand;
Freq = 0.5+(1.5-0.5).*rand;
y = Amp*sin(2*pi*Freq*x);
y2 = 2*Amp*cos(2*pi*Freq*x2);

r = 2; c = 2;

subplot(r, c, 1);
plot(x, y);
myPutText('Liu Leqi', 'NorthWest');

subplot(r, c, 2);
plot(x2, y2);
myPutText('Liu Leqi', 'NorthEast');

subplot(r, c, 3);
plot(-5*rand, 3*rand, 'o');
myPutText('Liu Leqi', 'SouthWest');

subplot(r, c, 4);
plot([5*rand 5*rand], [2*rand 6*rand]);
myPutText('Liu Leqi', 'SouthEast');

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
