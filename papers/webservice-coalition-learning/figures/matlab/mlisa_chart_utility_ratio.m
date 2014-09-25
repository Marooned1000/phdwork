% Create the data to be plotted

color1 = [0.0,0.0,0.5];
color2 = [0.7,0.7,0.95];
fontsize = 14;

[v,T,vT]=xlsread('mlisa_chart_utility.xlsx') 
gainR020 = v((1:1:20),1);
gainR010 = v((1:1:20),2);
gainR007 = v((1:1:20),3);
gainR005 = v((1:1:20),4);

ratioR020 = v((25:1:44),1);
ratioR010 = v((25:1:44),2);
ratioR007 = v((25:1:44),3);
ratioR005 = v((25:1:44),4);

xvalue = (1:1:20)';
wsname = vT((4:1:23),1);

% Create the pie chart in position 1 of a 2x2 grid
hFig = figure(1);
set(hFig, 'Position', [100 100 800 800])
%set(0,'DefaultAxesColorOrder',[1 0 0],'DefaultAxesLineStyleOrder','-|+|--|.|:')
set(0,'DefaultAxesColorOrder',[0 0 0;0.5 0.5 0.5])


% Create the bar chart in position 1 of a 3x2 grid
subplot(2, 2, 1);
%plot(xvalue, normal1, 's-', xvalue, attack1, '*-', 'linewidth', 2, 'markers',4);
bar(xvalue(1:1:10), ratioR020(1:1:10), 0.4, 'FaceColor',color1);
hold on
bar(xvalue(11:1:20), ratioR020(11:1:20), 0.4, 'FaceColor',color2);
xlabel('Trained WS           Rational WS','FontSize',fontsize);
ylabel('Utility Gain','FontSize',fontsize);
title ('R=0.2 (a)','FontSize',fontsize);
%title('TITLE');
axis([0 21 0 22]);
set(gca,'XTick',[1 5 10 15 20]);
hleg1 = legend('Trained', 'Rational');
grid on
set(gca,'XGrid','off','YGrid','on','ZGrid','off');
%set(gca,'XTickLabel',wsname);
%axes('xlim',[0 19],'xtick',xvalue,'xticklabel',wsname)

%hleg1 = legend('Normal data', 'Attacks');
%set(hleg1, 'Position', [.248,.842,.1,.2]);
%set(hleg1,'Interpreter','none');
%set(hleg1,'Orientation','horizontal');
%set(hleg1,'FontSize',10);
%text(19,0,'IR=[0.33,0.26,0.20,0.13,0.06,0.04]', 'Rotation', 90);


% Create the bar chart in position 2 of a 3x2 grid
subplot(2, 2, 2);
bar(xvalue(1:1:10), ratioR010(1:1:10), 0.4, 'FaceColor',color1);
hold on
bar(xvalue(11:1:20), ratioR010(11:1:20), 0.4, 'FaceColor',color2);
xlabel('Trained WS           Rational WS','FontSize',fontsize);
ylabel('Utility Gain','FontSize',fontsize);
title ('R=0.1 (b)','FontSize',fontsize);
axis([0 21 0 22]);
set(gca,'XTick',[1 5 10 15 20]);
hleg1 = legend('Trained', 'Rational');
grid on
set(gca,'XGrid','off','YGrid','on','ZGrid','off');

% Create the stem chart in position 3 of a 2x2 grid
subplot(2, 2, 3);
bar(xvalue(1:1:10), ratioR007(1:1:10), 0.4, 'FaceColor',color1);
hold on
bar(xvalue(11:1:20), ratioR007(11:1:20), 0.4, 'FaceColor',color2);
xlabel('Trained WS           Rational WS','FontSize',fontsize);
ylabel('Utility Gain','FontSize',fontsize);
title ('R=0.07 (c)','FontSize',fontsize);
axis([0 21 0 22]);
set(gca,'XTick',[1 5 10 15 20]);
hleg1 = legend('Trained', 'Rational');
grid on
set(gca,'XGrid','off','YGrid','on','ZGrid','off');

% Create the line plot in position 4 of a 2x2 grid
subplot(2, 2, 4);
bar(xvalue(1:1:10), ratioR005(1:1:10), 0.4, 'FaceColor',color1);
hold on
bar(xvalue(11:1:20), ratioR005(11:1:20), 0.4, 'FaceColor',color2);
xlabel('Trained WS           Rational WS','FontSize',fontsize);
ylabel('Utility Gain','FontSize',fontsize);
title ('R=0.05 (d)','FontSize',fontsize);
axis([0 21 0 22]);
set(gca,'XTick',[1 5 10 15 20]);
hleg1 = legend('Trained', 'Rational');
grid on
set(gca,'XGrid','off','YGrid','on','ZGrid','off');

%%%%%%%%%%%%%%%Figure 2%%%%%%%%%%%%%%

hFig = figure(2);
bar(xvalue(1:1:10), [ratioR020(1:1:10), ratioR010(1:1:10), ratioR007(1:1:10), ratioR005(1:1:10)], 1);
xlabel('Web services','FontSize',fontsize);
ylabel('Utility Gain','FontSize',fontsize);
axis([0 11 0 22]);
legend('R=0.2', 'R=0.1', 'R=0.07', 'R=0.05');

f2hleg1 = legend('R=0.2', 'R=0.1', 'R=0.07', 'R=0.05');
set(f2hleg1, 'Position', [.180,.710,.1,.2]);

grid on
set(gca,'XGrid','off','YGrid','on','ZGrid','off');



