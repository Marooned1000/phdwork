[v,T,vT]=xlsread('task_qos_opt.xlsx') 
% 'xlsx' for exell 2007
%v: Double
%T and vT : cell
%use v containing numbers 

set(0,'DefaultAxesColorOrder',[0 0 0],'DefaultAxesLineStyleOrder','-.|-+|--|.|:')

i=1:10;
%t=v(:,1);y=v(:,2);z=v(:,3);tt=v(:,4);yy=v(:,5);
t = [0.01,0.20,0.15,0.05,0.22,0.02,0.11,0.21,0.10,0.05];
y = [0.01,0.99,0.15,0.95,0.22,0.80,0.11,0.75,0.07,1];
z = [0.99,0.98,0.95,0.99,0.90,0.90,0.80,0.95,0.90,1];
%set(gcf,'Position',[100 100 800 500]);
set(gca,'Position',[0.1 0.1 0.6 0.8]);
set(gcf,'Position',[100 100 800 375]);

%subplot(1,3,1);

h = plot(i,t,i,y,i,z,'linewidth', 2);
%set(h(1),'linewidth',3);
grid on;

%set(gca,'Xcolor',[0.5 0.5 0.5]);
%set(gca,'Ycolor',[0.5 0.5 0.5]);
set(gca,'XTick',1:1:10);
%set(gca,'YTick',7000:1500:18000);
%set(gca,'YTick',0:200:1600);
set(gca,'tickdir','in')
set(gca,'XTickLabel',{'M0';'M1';'M2';'M3';'M4';'M5';'M6';'M7';'M8';'M9';});
set(gca,'XGrid','off','YGrid','on','ZGrid','off');
%set(gca,'YTickLabel',num2str(get(gca,'YTick').'));

axis([0.5 10.5 0 1.2]);
%axis([0 50 0 1600]);

% Add legend
hleg1 = legend('Optimal epsilon-core','Our depth-2 Convex','Our depth-1 Convex');
%set(hleg1,'Location','NorthWest');
set(hleg1, 'Position', [0.8,.4,.1,.1]);
set(hleg1,'Interpreter','none');
%set(hleg1,'color','none');
set(hleg1,'FontSize',10);
%legend boxoff;

% Add title and axis labels
% title('Trigonometric Functions', 'fontsize', 10);
% xlabel({'Certainty Index';'(b)'}, 'FontSize',14);
ylabel('Certainty Index', 'FontSize',14);

%Caxes = copyobj(gca,gcf);
%set(Caxes, 'color', 'none', 'xcolor', 'k', 'xgrid', 'off', 'ycolor','k', 'ygrid','off');

%subplot(1,3,2);
%plot(i,t,i,y,i,z,'linewidth', 2);
%Caxes = copyobj(gca,gcf);
%set(Caxes, 'color', 'none', 'xcolor', 'k', 'xgrid', 'off', 'ycolor','k', 'ygrid','off');
