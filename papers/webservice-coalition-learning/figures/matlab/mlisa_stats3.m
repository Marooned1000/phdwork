[v,T,vT]=xlsread('mlisa_chart_stats.xlsx') 
% 'xlsx' for exell 2007
%v: Double
%T and vT : cell
%use v containing numbers 

set(0,'DefaultAxesColorOrder',[0 0 0],'DefaultAxesLineStyleOrder','-|-.|--|+-|.|:')

i=0:62;
t=v(:,7);y=v(:,8);z=v(:,9);tt=v(:,10);
%set(gcf,'Position',[100 100 800 500]);
set(gcf,'Position',[100 100 550 375]);

%subplot(1,3,1);

%h = plot(i,t,i,y,i,z,i,tt,'linewidth', 2);
h = plot(i,t,'--g+',i,y,'--ko',i,z,':bs',i,tt,'-.r*', 'MarkerSize',3, 'linewidth', 1);
%set(h(1),'linewidth',3);
grid on;

%set(gca,'Xcolor',[0.5 0.5 0.5]);
%set(gca,'Ycolor',[0.5 0.5 0.5]);
set(gca,'XTick',1:1:63);
%set(gca,'YTick',7000:1500:18000);
set(gca,'YTick',0:0.5:3.5);
set(gca,'tickdir','in')
set(gca,'XTickLabel',{'1';' ';' ';' ';' ';' ';' ';' ';' ';' ';
    '11';' ';' ';' ';' ';' ';' ';' ';' ';' ';
    '21';' ';' ';' ';' ';' ';' ';' ';' ';' ';
    '31';' ';' ';' ';' ';' ';' ';' ';' ';' ';
    '41';' ';' ';' ';' ';' ';' ';' ';' ';' ';
    '51';' ';' ';' ';' ';' ';' ';' ';' ';' ';
    ' ';' ';'63';});
set(gca,'XGrid','off','YGrid','on','ZGrid','off');
set(gca,'YTickLabel',num2str(get(gca,'YTick').'));


axis([0 63 0 3.5]);

% Add legend
hleg1 = legend('R=0.20','R=0.10','R=0.07','R=0.05');
%set(hleg1,'Location','NorthWest');
set(hleg1, 'Position', [.74,.69,.1,.2]);
set(hleg1,'Interpreter','none');
%set(hleg1,'color','none');
set(hleg1,'FontSize',10);
%legend boxoff;

% Add title and axis labels
% title('Trigonometric Functions', 'fontsize', 10);
xlabel({'Time';'(a)'}, 'FontSize',14);
ylabel('Utility Gain', 'FontSize',14);

%Caxes = copyobj(gca,gcf);
%set(Caxes, 'color', 'none', 'xcolor', 'k', 'xgrid', 'off', 'ycolor','k', 'ygrid','off');

%subplot(1,3,2);
%plot(i,t,i,y,i,z,'linewidth', 2);
%Caxes = copyobj(gca,gcf);
%set(Caxes, 'color', 'none', 'xcolor', 'k', 'xgrid', 'off', 'ycolor','k', 'ygrid','off');
