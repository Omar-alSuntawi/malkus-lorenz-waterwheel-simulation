function [x, y, z] = lorenz(rho, sigma, beta, initV, T, eps)
% LORENZ Simulates the Lorenz system and plots the 3D phase-space attractor.
%
%   [x, y, z] = lorenz(rho, sigma, beta, initV, T, eps)[cite: 8]
%
%   Inputs:
%     rho   - Rayleigh number (default/typical: 28)[cite: 5, 8]
%     sigma - Prandtl number (default/typical: 10)[cite: 5, 8]
%     beta  - Geometric/system parameter (default/typical: 8/3)[cite: 5, 8]
%     initV - Initial state [x0, y0, z0] (default: [0, 1, 1.05])[cite: 8]
%     T     - Time span vector or [t0, tf] (default: [0, 25])[cite: 8]
%     eps   - Relative ODE solver tolerance (default: 1e-6)[cite: 8]

if nargin < 3
    error('MATLAB:lorenz:NotEnoughInputs', ...
        'Provide at least (rho, sigma, beta), e.g., lorenz(28, 10, 8/3).');
end

if nargin < 4 || isempty(initV)
    initV = [0, 1, 1.05];
end
if nargin < 5 || isempty(T)
    T = [0, 25];
end
if nargin < 6 || isempty(eps)
    eps = 1e-6;
end

options = odeset('RelTol', eps, 'AbsTol', [eps, eps, eps / 10]);
odeFun = @(t, state) lorenz_rhs(t, state, sigma, rho, beta);

[~, X] = ode45(odeFun, T, initV, options);

x = X(:, 1);
y = X(:, 2);
z = X(:, 3);

figure;
plot3(x, y, z);
axis equal;
grid on;
title('Lorenz Attractor');
xlabel('X');
ylabel('Y');
zlabel('Z');
end