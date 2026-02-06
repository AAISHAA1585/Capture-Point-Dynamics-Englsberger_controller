load engcp_pxy.mat

% Data
t  = states_engd_px(1,:);
px = states_engd_px(2,:);
py = states_engd_px(3,:);

% Figure
figure('Position',[120 120 700 420]);

plot(t, px, 'b-',  'LineWidth', 1.6); hold on
plot(t, py, 'r--', 'LineWidth', 1.6);
grid on

% Labels & legend
xlabel('$t$ (s)', 'Interpreter','latex', 'FontSize', 12)
ylabel('ZMP position (m)', 'Interpreter','latex', 'FontSize', 12)
legend({'$p_x$','$p_y$'}, ...
       'Interpreter','latex', 'Location','best', 'FontSize', 11)

% Title (baseline method clearly stated)
title('ZMP Trajectory using Englsberger \textit{et al.} Controller', ...
      'Interpreter','latex', 'FontSize', 13)

% Axes formatting
ax = gca;
ax.FontSize  = 11;
ax.LineWidth = 1;
box on
