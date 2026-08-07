% downloads and loads data into the cycleData object
dataFile = matlab.internal.examples.downloadSupportFile("predmaint","batteryagingdata/singlecell/v1/singleCellLifeTimeData.zip");
unzip(dataFile);
load("singleCellLifeTimeData.mat");
cycleData = data(data.Cycle_Index == 1, :);

% calculates time (final_time - initial_time)
cycleData.DateTime = seconds(cycleData.DateTime - cycleData.DateTime(1));

% calculates power (P = I*V)
cycleData.Power = cycleData.Current.*cycleData.Voltage;

% plots Voltage vs. Time subplot
figure;
plot(cycleData.DateTime, cycleData.Voltage, '-r', 'LineWidth', 1.5);
ylabel('Voltage (V)');
xlabel("Time (s)");
title('Voltage vs. Time');

% plots Current vs. Time subplot
figure;
plot(cycleData.DateTime, cycleData.Current, '-b', 'LineWidth', 1.5);
ylabel('Current (A)');
xlabel("Time (s)");
title('Current vs. Time');

% plots Power vs. Time subplot
figure;
plot(cycleData.DateTime, cycleData.Power, '-g', 'LineWidth', 1.5);
ylabel('Power (W)');
xlabel('Time (s)');
title('Power vs. Time');