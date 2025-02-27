[v,T,vT]=xlsread('decision_dev2.xlsx') 
% 'xlsx' for exell 2007
%v: Double
%T and vT : cell
%use v containing numbers 

%set(0,'DefaultAxesColorOrder',[0 0 0],'DefaultAxesLineStyleOrder','-*|-.|--|.-|.|:')

i=1:10;
t=v(:,1);
%set(gcf,'Position',[100 100 800 500]);
set(gcf,'Position',[100 100 550 375]);

%subplot(1,3,1);

%plot(i,t,'--rs','LineWidth',2, 'MarkerEdgeColor','k', 'MarkerFaceColor','g', 'MarkerSize',10);
plot(i,t,'--blacks','LineWidth',2,...
                'MarkerEdgeColor','black',...
                'MarkerFaceColor','black',...
                'MarkerSize',10);
%set(h(1),'linewidth',3);
grid on;

%set(gca,'Xcolor',[0.5 0.5 0.5]);
%set(gca,'Ycolor',[0.5 0.5 0.5]);
set(gca,'XTick',1:1:10);
%set(gca,'YTick',7000:1500:18000);
%set(gca,'YTick',7000:2000:18000);
set(gca,'tickdir','in');
%set(gca,'XTickLabel',{'1';' ';' ';' ';' ';' ';' ';' ';' ';' ';
%    '11';' ';' ';' ';' ';' ';' ';' ';' ';' ';
%    '21';' ';' ';' ';' ';' ';' ';' ';' ';' ';
%    '31';' ';' ';' ';' ';' ';' ';' ';' ';' ';
%    '41';' ';' ';' ';' ';' ';' ';' ';' ';'50';});
set(gca,'XGrid','off','YGrid','on','ZGrid','off');
%set(gca,'YTickLabel',num2str(get(gca,'YTick').'));


axis([0 11 0.82 1]);

% Add legend
%hleg1 = legend('0% Deviation','10% Deviation','20% Deviation','30% Deviation','40% Deviation','50% Deviation');
%set(hleg1,'Location','NorthWest');
%set(hleg1, 'Position', [.24,.63,.1,.2]);
%set(hleg1,'Interpreter','none');
%set(hleg1,'color','none');
%set(hleg1,'FontSize',10);
%legend boxoff;

% Add title and axis labels
% title('Trigonometric Functions', 'fontsize', 10);
xlabel({'Number of Deviations';'(b)'}, 'FontSize',14);
ylabel('Ratio', 'FontSize',14);

%Caxes = copyobj(gca,gcf);
%set(Caxes, 'color', 'none', 'xcolor', 'k', 'xgrid', 'off', 'ycolor','k', 'ygrid','off');

%subplot(1,3,2);
%plot(i,t,i,y,i,z,'linewidth', 2);
%Caxes = copyobj(gca,gcf);
%set(Caxes, 'color', 'none', 'xcolor', 'k', 'xgrid', 'off', 'ycolor','k', 'ygrid','off');
