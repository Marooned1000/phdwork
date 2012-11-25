[v,T,vT]=xlsread('task_satisfaction.xlsx') 
% 'xlsx' for exell 2007
%v: Double
%T and vT : cell
%use v containing numbers 

set(0,'DefaultAxesColorOrder',[0 0 0],'DefaultAxesLineStyleOrder','-|-.|--|:')

i=0:49;
t=v(:,1);y=v(:,2);z=v(:,3);
%set(gcf,'Position',[100 100 800 500]);
set(gcf,'Position',[100 100 550 375]);

%subplot(1,3,1);

h = plot(i,t,i,y,i,z,'linewidth', 2);
%set(h(1),'linewidth',3);
grid on;

%set(gca,'Xcolor',[0.5 0.5 0.5]);
%set(gca,'Ycolor',[0.5 0.5 0.5]);
set(gca,'XTick',1:1:50);
%set(gca,'YTick',7000:1500:18000);
%set(gca,'YTick',0:0.1:1);
set(gca,'tickdir','in')
set(gca,'XTickLabel',{'1';' ';' ';' ';' ';' ';' ';' ';' ';' ';
    '11';' ';' ';' ';' ';' ';' ';' ';' ';' ';
    '21';' ';' ';' ';' ';' ';' ';' ';' ';' ';
    '31';' ';' ';' ';' ';' ';' ';' ';' ';' ';
    '41';' ';' ';' ';' ';' ';' ';' ';' ';'50';});
set(gca,'XGrid','off','YGrid','on','ZGrid','off');
%set(gca,'YTickLabel',num2str(get(gca,'YTick').'));

axis([0 50 0 1]);
%axis([0 50 7000 18000]);

% Add legend
hleg1 = legend('Coopetitive','Random Coopetitive','Competitive');
%set(hleg1,'Location','NorthWest');
set(hleg1, 'Position', [.27,.71,.1,.2]);
set(hleg1,'Interpreter','none');
%set(hleg1,'color','none');
set(hleg1,'FontSize',11);
%legend boxoff;

% Add title and axis labels
% title('Trigonometric Functions', 'fontsize', 10);
xlabel({'Number of Runs';'(b)'}, 'FontSize',14);
ylabel('Task Satisfaction Ratio', 'FontSize',14);

%Caxes = copyobj(gca,gcf);
%set(Caxes, 'color', 'none', 'xcolor', 'k', 'xgrid', 'off', 'ycolor','k', 'ygrid','off');

%subplot(1,3,2);
%plot(i,t,i,y,i,z,'linewidth', 2);
%Caxes = copyobj(gca,gcf);
%set(Caxes, 'color', 'none', 'xcolor', 'k', 'xgrid', 'off', 'ycolor','k', 'ygrid','off');
