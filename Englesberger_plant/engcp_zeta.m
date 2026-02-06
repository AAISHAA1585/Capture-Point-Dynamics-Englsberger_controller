load engcp_zeta.mat

% Data
t     = states_engd(1,:);
zetax = states_engd(2,:);
zetay = states_engd(3,:);

% Figure
figure('Position',[120 120 700 420]);

plot(t, zetax, 'b-',  'LineWidth', 1.6); hold on
plot(t, zetay, 'r--', 'LineWidth', 1.6);
grid on

% Labels & legend
xlabel('$t$ (s)', 'Interpreter','latex', 'FontSize', 12)
ylabel('Capture Point position $\zeta$ (m)', ...
       'Interpreter','latex', 'FontSize', 12)
legend({'$\zeta_x$','$\zeta_y$'}, ...
       'Interpreter','latex', 'Location','best', 'FontSize', 11)

% Title (baseline method)
title('Capture Point Trajectory using Englsberger \textit{et al.} Controller', ...
      'Interpreter','latex', 'FontSize', 13)

% Axes formatting
ax = gca;
ax.FontSize  = 11;
ax.LineWidth = 1;
box on
