function dx = lorenz_rhs(~, X, sigma, rho, beta)
% LORENZ_RHS Evaluates the right-hand side of the Lorenz system:
%   dx/dt = sigma * (y - x)
%   dy/dt = x * (rho - z) - y
%   dz/dt = x * y - beta * z
%
% Typical chaotic parameters: sigma = 10, rho = 28, beta = 8/3

dx = zeros(3, 1);
dx(1) = sigma * (X(2) - X(1));
dx(2) = X(1) * (rho - X(3)) - X(2);
dx(3) = X(1) * X(2) - beta * X(3);
end