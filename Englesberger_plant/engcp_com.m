load engcp_com.mat

% Data
t    = states_engd_com(1,:);
comx = states_engd_com(2,:);
comy = states_engd_com(3,:);

% Figure
figure('Position',[120 120 700 420]);

plot(t, comx, 'b-',  'LineWidth', 1.6); hold on
plot(t, comy, 'r--', 'LineWidth', 1.6);
grid on

% Labels & legend
xlabel('$t$ (s)', 'Interpreter','latex', 'FontSize', 12)
ylabel('COM position (m)', 'Interpreter','latex', 'FontSize', 12)
legend({'$x_{\mathrm{COM}}$','$y_{\mathrm{COM}}$'}, ...
       'Interpreter','latex', 'Location','best', 'FontSize', 11)

% Title (important for paper clarity)
title('Center of Mass Trajectory using Englsberger \textit{et al.} Controller', ...
      'Interpreter','latex', 'FontSize', 13)

% Axes formatting
ax = gca;
ax.FontSize  = 11;
ax.LineWidth = 1;
box on
