[v,T,vT]=xlsread('least_core.xlsx') 
% 'xlsx' for exell 2007
%v: Double
%T and vT : cell
%use v containing numbers 

set(0,'DefaultAxesColorOrder',[0 0 0],'DefaultAxesLineStyleOrder','+|--|--|.|:')

i=0:99;
t=0:0.01:1;
y=v(:,1);
%set(gcf,'Position',[100 100 800 500]);
set(gcf,'Position',[100 100 550 375]);

%subplot(1,3,1);

h = plot(i,y,'linewidth', 2);
%set(h(1),'linewidth',3);
grid on;

%set(gca,'Xcolor',[0.5 0.5 0.5]);
%set(gca,'Ycolor',[0.5 0.5 0.5]);
%set(gca,'XTick',0:10:100);
%set(gca,'YTick',7000:1500:18000);
set(gca,'YTick',0:0.1:1);
set(gca,'tickdir','in')
set(gca,'XTickLabel',{'0';'0.1';'0.2';'0.3';'0.4';'0.5';'0.6';'0.7';'0.8';'0.9';
    '1';' ';' ';' ';' ';' ';' ';' ';' ';' ';
    '0.4';' ';' ';' ';' ';' ';' ';' ';' ';' ';
    '0.6';' ';' ';' ';' ';' ';' ';' ';' ';' ';
    '0.8';' ';' ';' ';' ';' ';' ';' ';' ';'1';});
set(gca,'XGrid','off','YGrid','on','ZGrid','off');
set(gca,'YTickLabel',num2str(get(gca,'YTick').'));

axis([0 100 0 1.1]);
%axis([0 50 0 1600]);

% Add legend
hleg1 = legend('Least e-Core');
%set(hleg1,'Location','NorthWest');
set(hleg1, 'Position', [.31,.69,.05,.1]);
set(hleg1,'Interpreter','none');
%set(hleg1,'color','none');
set(hleg1,'FontSize',10);
%legend boxoff;

% Add title and axis labels
% title('Trigonometric Functions', 'fontsize', 10);
xlabel({'Epsilon (ratio)'}, 'FontSize',14);
ylabel('Core Non-Empty', 'FontSize',14);

%Caxes = copyobj(gca,gcf);
%set(Caxes, 'color', 'none', 'xcolor', 'k', 'xgrid', 'off', 'ycolor','k', 'ygrid','off');

%subplot(1,3,2);
%plot(i,t,i,y,i,z,'linewidth', 2);
%Caxes = copyobj(gca,gcf);
%set(Caxes, 'color', 'none', 'xcolor', 'k', 'xgrid', 'off', 'ycolor','k', 'ygrid','off');
