% Create the data to be plotted
TBdata = [0.0 10 0 87 0.77;
          0.1 10 0.88 93 0.78; 
          0.2 9 1.76 96 0.8; 
          0.3 8 2.88 98 0.8;
          0.4 8 4.16 98 0.79; 
          0.5 7 5.6 97 0.81];

%measles = [38556 24472 14556 18060 19549 8122 28541 7880 3283 4135 7953 1884]';
%mumps = [20178 23536 34561 37395 36072 32237 18597 9408 6005 6268 8963 13882]';
%chickenPox = [37140 32169 37533 39103 33244 23269 16737 5411 3435 6052 12825 23332]';
taxt = TBdata(:, 1);
%size = TBdata(:, 2);
size1 = [10,10,9,8,8,7];
cost1 = [0,0,0,0,0,0];
income1 = [63,60,55,47,41,29];
tasknum1 = [83,78,73,63,54,40];
quality1  = [0.77,0.77,0.76,0.75,0.75,0.74];

size2 = [12,12,11,11,10,10];
income2 = [77,76,73,72,69,64];
tasknum2 = [96,95,93,92,89,84];
quality2  = [0.8,0.8,0.79,0.78,0.78,0.77];
cost2 = 0.3 .* quality2 .* size2;

size3 = [14,13,13,13,12,11];
income3 = [76,75,73,72,70,67];
tasknum3 = [98,97,96,96,93,90];
quality3  = [0.78,0.78,0.77,0.76,0.76,0.75];
cost3 = 0.6 .* quality3 .* size3;

size4 = [17,16,16,16,16,15];
income4 = [76,76,75,74,73,72];
tasknum4 = [98,98,98,98,97,97];
quality4  = [0.78,0.78,0.77,0.76,0.76,0.75];
cost4 = 1 .* quality4 .* size4;



% Create the pie chart in position 1 of a 2x2 grid
figure;
subplot(4, 4, 1);
plot(taxt, size1, '.-');
xlabel('\tau');
ylabel('Size');
title('\lambda = 1');
axis([0 0.5 0 20]);
set(gca,'XTick',[0.0 0.1 0.2 0.3 0.4 0.5]);
grid on

% Create the bar chart in position 2 of a 2x2 grid
subplot(4, 4, 2);
plot(taxt, tasknum1, '.-');
xlabel('\tau');
ylabel('|Tasks Performed|');
title('\lambda = 1');
axis([0 0.5 0 100]);
set(gca,'XTick',[0.0 0.1 0.2 0.3 0.4 0.5]);
grid on

% Create the stem chart in position 3 of a 2x2 grid
subplot(4, 4, 3);
plot(taxt, quality1, '.-');
xlabel('\tau');
ylabel('QoS');
title('\lambda = 1');
axis([0 0.5 0 1]);
set(gca,'XTick',[0.0 0.1 0.2 0.3 0.4 0.5]);
grid on

% Create the line plot in position 4 of a 2x2 grid
subplot(4, 4, 4);
plot(taxt, cost1, '.-', taxt, income1, '*-');
xlabel('\tau');
ylabel('Cost / Income');
title('\lambda = 1');
axis([0 0.5 -1 100]);
set(gca,'XTick',[0.0 0.1 0.2 0.3 0.4 0.5]);
grid on

% Create the pie chart in position 1 of a 2x2 grid
subplot(4, 4, 5);
plot(taxt, size2, '.-');
xlabel('\tau');
ylabel('Size');
title('\lambda = 1.3');
axis([0 0.5 0 20]);
set(gca,'XTick',[0.0 0.1 0.2 0.3 0.4 0.5]);
grid on

% Create the bar chart in position 2 of a 2x2 grid
subplot(4, 4, 6);
plot(taxt, tasknum2, '.-');
xlabel('\tau');
ylabel('|tasks performed|');
title('\lambda = 1.3');
axis([0 0.5 0 100]);
set(gca,'XTick',[0.0 0.1 0.2 0.3 0.4 0.5]);
grid on

% Create the stem chart in position 3 of a 2x2 grid
subplot(4, 4, 7);
plot(taxt, quality2, '.-');
xlabel('\tau');
ylabel('QoS');
title('\lambda = 1.3');
axis([0 0.5 0 1]);
set(gca,'XTick',[0.0 0.1 0.2 0.3 0.4 0.5]);
grid on

% Create the line plot in position 4 of a 2x2 grid
subplot(4, 4, 8);
plot(taxt, cost2, '.-', taxt, income2, '*-');
xlabel('\tau');
ylabel('Cost / Income');
title('\lambda = 1.3');
axis([0 0.5 -0.5 100]);
set(gca,'XTick',[0.0 0.1 0.2 0.3 0.4 0.5]);
grid on

% Create the pie chart in position 1 of a 2x2 grid
subplot(4, 4, 9);
plot(taxt, size3, '.-');
xlabel('\tau');
ylabel('Size');
title('\lambda = 1.6');
axis([0 0.5 0 20]);
set(gca,'XTick',[0.0 0.1 0.2 0.3 0.4 0.5]);
grid on

% Create the bar chart in position 2 of a 2x2 grid
subplot(4, 4, 10);
plot(taxt, tasknum3, '.-');
xlabel('\tau');
ylabel('|tasks performed|');
title('\lambda = 1.6');
axis([0 0.5 0 100]);
set(gca,'XTick',[0.0 0.1 0.2 0.3 0.4 0.5]);
grid on

% Create the stem chart in position 3 of a 2x2 grid
subplot(4, 4, 11);
plot(taxt, quality3, '.-');
xlabel('\tau');
ylabel('QoS');
title('\lambda = 1.6');
axis([0 0.5 0 1]);
set(gca,'XTick',[0.0 0.1 0.2 0.3 0.4 0.5]);
grid on

% Create the line plot in position 4 of a 2x2 grid
subplot(4, 4, 12);
plot(taxt, cost3, '.-', taxt, income3, '*-');
xlabel('\tau');
ylabel('Cost / Income');
title('\lambda = 1.6');
axis([0 0.5 -0.5 100]);
set(gca,'XTick',[0.0 0.1 0.2 0.3 0.4 0.5]);
grid on

% Create the pie chart in position 1 of a 2x2 grid
subplot(4, 4, 13);
plot(taxt, size4, '.-');
xlabel('\tau');
ylabel('Size');
title('\lambda = 2');
axis([0 0.5 0 20]);
set(gca,'XTick',[0.0 0.1 0.2 0.3 0.4 0.5]);
grid on

% Create the bar chart in position 2 of a 2x2 grid
subplot(4, 4, 14);
plot(taxt, tasknum4, '.-');
xlabel('\tau');
ylabel('|tasks performed|');
title('\lambda = 2');
axis([0 0.5 0 100]);
set(gca,'XTick',[0.0 0.1 0.2 0.3 0.4 0.5]);
grid on

% Create the stem chart in position 3 of a 2x2 grid
subplot(4, 4, 15);
plot(taxt, quality4, '.-');
xlabel('\tau');
ylabel('QoS');
title('\lambda = 2');
axis([0 0.5 0 1]);
set(gca,'XTick',[0.0 0.1 0.2 0.3 0.4 0.5]);
grid on

% Create the line plot in position 4 of a 2x2 grid
subplot(4, 4, 16);
plot(taxt, cost4, '.-', taxt, income4, '*-');
xlabel('\tau');
ylabel('Cost / Income');
title('\lambda = 2');
axis([0 0.5 -0.5 100]);
set(gca,'XTick',[0.0 0.1 0.2 0.3 0.4 0.5]);
grid on
