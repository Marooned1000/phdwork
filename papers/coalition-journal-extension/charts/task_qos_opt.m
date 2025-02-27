[v,T,vT]=xlsread('task_qos_opt.xlsx') 
% 'xlsx' for exell 2007
%v: Double
%T and vT : cell
%use v containing numbers 

set(0,'DefaultAxesColorOrder',[0 0 0],'DefaultAxesLineStyleOrder','-|+|--|.|:')

i=0:49;
t=v(:,1);y=v(:,2);z=v(:,3);tt=v(:,4);yy=v(:,5);
%set(gcf,'Position',[100 100 800 500]);
set(gcf,'Position',[100 100 550 375]);

%subplot(1,3,1);

h = plot(i,t,i,y,i,z,i,tt,i,yy,'linewidth', 2);
%set(h(1),'linewidth',3);
grid on;

%set(gca,'Xcolor',[0.5 0.5 0.5]);
%set(gca,'Ycolor',[0.5 0.5 0.5]);
set(gca,'XTick',1:1:50);
%set(gca,'YTick',7000:1500:18000);
set(gca,'YTick',0.72:0.02:0.85);
set(gca,'tickdir','in')
set(gca,'XTickLabel',{'1';' ';' ';' ';' ';' ';' ';' ';' ';' ';
    '11';' ';' ';' ';' ';' ';' ';' ';' ';' ';
    '21';' ';' ';' ';' ';' ';' ';' ';' ';' ';
    '31';' ';' ';' ';' ';' ';' ';' ';' ';' ';
    '41';' ';' ';' ';' ';' ';' ';' ';' ';'50';});
set(gca,'XGrid','off','YGrid','on','ZGrid','off');
set(gca,'YTickLabel',num2str(get(gca,'YTick').'));

axis([0 50 0.72 0.85]);
%axis([0 50 0 1600]);

% Add legend
hleg1 = legend('Optimal epsilon-core','Our depth-2 Convex','Our depth-1 Convex','3-Way Sat','2-Player Game');
%set(hleg1,'Location','NorthWest');
set(hleg1, 'Position', [.252,.67,.1,.2]);
set(hleg1,'Interpreter','none');
%set(hleg1,'color','none');
set(hleg1,'FontSize',10);
%legend boxoff;

% Add title and axis labels
% title('Trigonometric Functions', 'fontsize', 10);
xlabel({'Iterations';'(b)'}, 'FontSize',14);
ylabel('Average QoS of Tasks Performed', 'FontSize',14);

%Caxes = copyobj(gca,gcf);
%set(Caxes, 'color', 'none', 'xcolor', 'k', 'xgrid', 'off', 'ycolor','k', 'ygrid','off');

%subplot(1,3,2);
%plot(i,t,i,y,i,z,'linewidth', 2);
%Caxes = copyobj(gca,gcf);
%set(Caxes, 'color', 'none', 'xcolor', 'k', 'xgrid', 'off', 'ycolor','k', 'ygrid','off');
