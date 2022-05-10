close all

% Read File
CustomSignal = uigetfile({'*.xlsx';'*.xls';'*.csv*';'*.txt';'*.*'},'File Selector');

% Get options
opts = detectImportOptions(CustomSignal);
opts.VariableNames = {'Time','Pressure'};

CustomTable = readtable(CustomSignal,opts);
Time = CustomTable.Time;
Pressure = CustomTable.Pressure;

% Modify variables
AdjustedTime = Time(1):1/4:Time(end);
RepeatVector = zeros(length(Time),1);
for i=1:length(Time)-1
    RepeatVector(i) = length(Time(i):1/4:Time(i+1))-1;
end
RepeatVector(end) = 1;
PressureValue = repelem(Pressure,RepeatVector);

% Plotting
figure(1)
plot(AdjustedTime,PressureValue,'-b');
grid on;axis tight
title('Pressure Input against Time')
xlabel('Time (s)');ylabel('Pressure (hPa)')