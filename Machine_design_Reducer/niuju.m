%% 高速轴
plot([0 0 73.5+37.5 73.5+37.5 73.5+37.5+122.5], [0 32.73 32.73 0 0], '.-k', 'LineWidth',2)
patch([0 0 73.5+37.5 73.5+37.5 73.5+37.5+122.5], [0 32.73 32.73 0 0], [0.76 0.76 0.76])
text(115, 33, 'aT1', 'FontSize', 20)

%% 中间轴
plot([0 37.5 37.5 37.5+69.5 37.5+69.5 37.5+69.5+53], [0 0 131.71 131.71 0 0], '.-k', 'LineWidth',2)
patch([0 37.5 37.5 37.5+69.5 37.5+69.5 37.5+69.5+53], [0 0 131.71 131.71 0 0], [0.76 0.76 0.76])
text(110, 130, 'aT2', 'FontSize', 20)

%% 低速轴
plot([0 107 107 107+53+78 107+53+78], [0 0 378.9 378.9 0], '.-k', 'LineWidth',2)
patch([0 107 107 107+53+78 107+53+78], [0 0 378.9 378.9 0], [0.76 0.76 0.76])
text(80, 375, 'aT3', 'FontSize', 20)