% Create the data to be plotted
TBdata = [1.0 10 0 87 0.77;
          1.1 12 0.8 93 0.78; 
          1.2 14 1.96 96 0.8; 
          1.3 15 3.6 98 0.8;
          1.4 15 4.8 98 0.79; 
          1.5 16 6.4 97 0.81; 
          1.6 16 7.68 98 0.81; 
          1.7 16 8.96 98 0.82;
          1.8 16 10.24 98 0.82; 
          1.9 16 11.52 98 0.83; 
          2.0 17 13.6 98 0.83];

%measles = [38556 24472 14556 18060 19549 8122 28541 7880 3283 4135 7953 1884]';
%mumps = [20178 23536 34561 37395 36072 32237 18597 9408 6005 6268 8963 13882]';
%chickenPox = [37140 32169 37533 39103 33244 23269 16737 5411 3435 6052 12825 23332]';
taxt = TBdata(:, 1);
size = TBdata(:, 2);
cost = TBdata(:, 3);
tasknum  = TBdata(:, 4);
quality  = TBdata(:, 5);



% Create the pie chart in position 1 of a 2x2 grid
figure;
subplot(2, 2, 1);
plot(taxt, size, '.-');
xlabel('Years');
ylabel('Infection Rate');
title('Tuberculosis Cases');
axis([1 2 0 20]);
set(gca,'XTick',[1 1.2 1.4 1.6 1.8 2]);


% Create the bar chart in position 2 of a 2x2 grid
subplot(2, 2, 2);
plot(taxt, cost, '.-');
xlabel('Years');
ylabel('Infection Rate');
title('Tuberculosis Cases');
axis([1 2 0 20]);
set(gca,'XTick',[1 1.2 1.4 1.6 1.8 2]);

% Create the stem chart in position 3 of a 2x2 grid
subplot(2, 2, 3);
plot(taxt, tasknum, '.-');
xlabel('Years');
ylabel('Infection Rate');
title('Tuberculosis Cases');
axis([1 2 0 100]);
set(gca,'XTick',[1 1.2 1.4 1.6 1.8 2]);

% Create the line plot in position 4 of a 2x2 grid
subplot(2, 2, 4);
plot(taxt, quality, '.-');
xlabel('Years');
ylabel('Infection Rate');
title('Tuberculosis Cases');
axis([1 2 0 1]);
set(gca,'XTick',[1 1.2 1.4 1.6 1.8 2]);