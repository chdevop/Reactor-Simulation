%% Plug Flow Reactor (PFR) Simulation
% Simulate the concentration profile along the length of a PFR

% Parameters
k = 0.1; % Reaction rate constant (1/min)
F = 1; % Flow rate (L/min)
C_A0 = 1; % Initial concentration (mol/L)
V_span = [0, 50]; % Reactor volume span (L)

% Rate law for a PFR: dC_A/dV = -k * C_A / F
dCAdV = @(V, C_A) -k * C_A / F;

% Solve the differential equation using ode45
[V, C_A] = ode45(dCAdV, V_span, C_A0);

% Plot the results
figure;
plot(V, C_A, 'r-', 'LineWidth', 2);
xlabel('Reactor Volume (L)');
ylabel('Concentration of A (mol/L)');
title('PFR: Concentration vs Reactor Volume');
grid on;
