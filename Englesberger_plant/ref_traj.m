load ref_traj.mat

% Data
t     = states_ref(1,:);
zetax = states_ref(2,:);
zetay = states_ref(3,:);

% Figure
figure('Position',[120 120 700 420]);

plot(t, zetax, 'b-',  'LineWidth', 1.6); hold on
plot(t, zetay, 'r--', 'LineWidth', 1.6);
grid on

% Labels & legend
xlabel('$t$ (s)', 'Interpreter','latex', 'FontSize', 12)
ylabel('Reference Capture Point position $\zeta^{\mathrm{ref}}$ (m)', ...
       'Interpreter','latex', 'FontSize', 12)
legend({'$\zeta_x^{\mathrm{ref}}$','$\zeta_y^{\mathrm{ref}}$'}, ...
       'Interpreter','latex', 'Location','best', 'FontSize', 11)

% Title
title('Reference Capture Point Trajectory in X and Y Directions', ...
      'Interpreter','latex', 'FontSize', 13)

% Axes formatting
ax = gca;
ax.FontSize  = 11;
ax.LineWidth = 1;
box on
