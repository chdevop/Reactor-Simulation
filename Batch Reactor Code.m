%% Batch Reactor Simulation
% Simulate the behavior of a batch reactor for a first-order reaction

% Parameters
k = 0.1; % Reaction rate constant (1/min)
C_A0 = 1; % Initial concentration of reactant (mol/L)
t_span = [0, 50]; % Time span for simulation (minutes)

% Rate law for a first-order reaction
dCAdt = @(t, C_A) -k * C_A;

% Solve the differential equation using ode45
[t, C_A] = ode45(dCAdt, t_span, C_A0);

% Plot the results
figure;
plot(t, C_A, 'b-', 'LineWidth', 2);
xlabel('Time (min)');
ylabel('Concentration of A (mol/L)');
title('Batch Reactor: Concentration vs Time');
grid on;
