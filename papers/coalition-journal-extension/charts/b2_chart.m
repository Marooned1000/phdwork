% Create the data to be plotted

xvalue = (1:1:17);
normal1 = [0,30,2,12,28,30,20,20.38911783,12,0,8,14.3407453,30.4505339814,6,18,22.40716691,0];
attack1 = [0,6,18,14,2,4,16,16.00020658,30.40608844,0.380149844,14.51470829,32.45285167,24.60898207,17.5649118,7.167914855,0,0];

% Create the pie chart in position 1 of a 2x2 grid
hFig = figure(1);
set(hFig, 'Position', [100 100 600 400])
%set(0,'DefaultAxesColorOrder',[1 0 0],'DefaultAxesLineStyleOrder','-|+|--|.|:')
set(0,'DefaultAxesColorOrder',[0 0 0;0.5 0.5 0.5])


% Create the bar chart in position 1 of a 3x2 grid
plot(xvalue, normal1, 's-', xvalue, attack1, '*-', 'linewidth', 2, 'markers',4);
xlabel('Processes');
ylabel('Distance');
%title('TITLE');
axis([1 18 0 60]);
%set(gca,'XTick',[0.0 0.1 0.2 0.3 0.4 0.5]);

hleg1 = legend('Normal data', 'Attacks');
set(hleg1, 'Position', [.448,.862,.1,.2]);
set(hleg1,'Interpreter','none');
set(hleg1,'Orientation','horizontal');
set(hleg1,'FontSize',10);
grid on


