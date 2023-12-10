%% ICE for PDE
% Liu Leqi, 12011327

%% Problem 1
clear all; clc;
L = 0.1;
m = 0;
xmesh = linspace(0,L,20);
tspan = linspace(0,20,100);
sol = pdepe(m,@pdexlpde1,@pdexlic1,@pdexlbc1,xmesh,tspan);
colormap hot;
imagesc(xmesh,tspan,sol);
colorbar;

%% Problem 2
clear all; clc;
L = 0.1;
m = 0;
xmesh = linspace(0,L,20);
tspan = linspace(0,200,100);
sol = pdepe(m,@pdexlpde2,@pdexlic2,@pdexlbc2,xmesh,tspan);
colormap hot;
imagesc(xmesh,tspan,sol);
colorbar;

%% Problem 3
clear all; clc;
m = 0;
xmesh = 0:1:10;
tspan = 0:0.005:100;
sol = pdepe(m,@pdexlpde3,@pdexlic3,@pdexlbc3,xmesh,tspan);
concentration = sol(:,:,1);
colormap hot
imagesc(concentration);
colorbar;

%% Functions
function [c f s] = pdexlpde1(t,x,u,dudx)
rho = 10000; % density
cp = 500; % heat capacity
k = 200; % thermal conductivity
c = rho*cp;
f = k*dudx;
s = 0;
end

function u0 = pdexlic1(x)
u0 = 0;
end

function [pl ql pr qr] = pdexlbc1(xl,ul,xr,ur, t)
q = 1e6;
pl = q;
ql = 1;
pr = ur;
qr = 0;
end

function [c f s] = pdexlpde2(t,x,u,dudx)
rho = 10000; % density
cp = 500; % heat capacity
k = 200; % thermal conductivity
c = rho*cp;
f = k*dudx;
s = 0;
end

function u0 = pdexlic2(x)
u0 = 0;
end

function [pl ql pr qr] = pdexlbc2(xl,ul,xr,ur, t)
h = 10000; % heat transfer coefficient
Tbulk = 20; % atmosphere temperature
q = 1e6;
pl = q;
ql = 1;
pr = h*(ur-Tbulk);
qr = 0;
end

function [c f s] = pdexlpde3(t,x,u,dudx)
D = 100;
k = 0.15;
U = 1;
c = 1;
f = D*dudx-U;
s = -k*c;
end

function u0 = pdexlic3(x)
u0 = 0;
end

function [pl ql pr qr] = pdexlbc3(xl,ul,xr,ur,t)
pl = -100;
ql = 1;
pr = ur;
qr = 0;
end
