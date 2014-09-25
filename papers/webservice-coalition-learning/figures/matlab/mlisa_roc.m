[v,T,vT]=xlsread('mlisa_chart_roc.xlsx') 
% 'xlsx' for exell 2007
%v: Double
%T and vT : cell
%use v containing numbers 

%set(0,'DefaultAxesColorOrder',[0 0 0],'DefaultAxesLineStyleOrder','-|:|--|-.')
%set(0,'DefaultAxesColorOrder',[0 0 0],'DefaultAxesLineStyleOrder','-.r*|:|--|-.')

i=0:49;
it=v(:,24);iy=v(:,24);iz=v(:,24);itt=v(:,24);
t=v(:,25);y=v(:,29);z=v(:,34);tt=v(:,36);
%set(gcf,'Position',[100 100 800 500]);
set(gcf,'Position',[100 100 550 375]);

%subplot(1,3,1);

h = plot(it,t,'--go',iy,y,'--ko',iz,z,':bs',itt,tt,'-.r*', 'MarkerSize',2);
%set(h(1),'linewidth',3);
grid on;

%set(gca,'Xcolor',[0.5 0.5 0.5]);
%set(gca,'Ycolor',[0.5 0.5 0.5]);
%set(gca,'XTick',1:1:50);
%set(gca,'YTick',7000:1500:18000);
%set(gca,'YTick',0:200:1600);
set(gca,'tickdir','in')
%set(gca,'XTickLabel',{'1';' ';' ';' ';' ';' ';' ';' ';' ';' ';
%    '11';' ';' ';' ';' ';' ';' ';' ';' ';' ';
%    '21';' ';' ';' ';' ';' ';' ';' ';' ';' ';
%    '31';' ';' ';' ';' ';' ';' ';' ';' ';' ';
%    '41';' ';' ';' ';' ';' ';' ';' ';' ';'50';});
set(gca,'XGrid','off','YGrid','on','ZGrid','off');
set(gca,'YTickLabel',num2str(get(gca,'YTick').'));


%axis([0 50 0 1600]);

% Add legend
hleg1 = legend(strcat('Case1-1, AUC = ',num2str(abs(trapz(it(1:101),t(1:101))))),strcat('Case 1-2, AUC = ',num2str(abs(trapz(iy(1:101),y(1:101))))),strcat('Case 2-1, AUC = ',num2str(abs(trapz(iz(1:101),z(1:101))))),strcat('Case 2-2, AUC = ',num2str(abs(trapz(itt(1:101),tt(1:101))))));
%set(hleg1,'Location','NorthWest');
set(hleg1, 'Position', [.66,.235,.1,.2]);
set(hleg1,'Interpreter','none');
%set(hleg1,'color','none');
set(hleg1,'FontSize',10);
%legend boxoff;

% Add title and axis labels
% title('Trigonometric Functions', 'fontsize', 10);
xlabel({'False Positive Rate'}, 'FontSize',14);
ylabel('Correct Decision Rate', 'FontSize',14);

%Caxes = copyobj(gca,gcf);
%set(Caxes, 'color', 'none', 'xcolor', 'k', 'xgrid', 'off', 'ycolor','k', 'ygrid','off');

%subplot(1,3,2);
%plot(i,t,i,y,i,z,'linewidth', 2);
%Caxes = copyobj(gca,gcf);
%set(Caxes, 'color', 'none', 'xcolor', 'k', 'xgrid', 'off', 'ycolor','k', 'ygrid','off');
