%% Default WaveStruct Values
% WaveStruct values are used to make changes in the real-time graph
app.WaveStruct.WaveType = 'Constant';   % Wave type
app.WaveStruct.OffsetPressure = 500;    % in hPa
app.WaveStruct.Amplitude = 100;         % in hPa
app.WaveStruct.Period = 5;              % in s
app.WaveStruct.Frequency = 0.2;         % in Hz
app.WaveStruct.SampleRate = 4;          % in Hz
app.WaveStruct.Repeat = 0;              % no Repeat
app.WaveStruct.HalfPulse = 0;           % no Half Pulse

%% Default GlobalHandles Values
% GlobalHandles values are used to make changes in the preview graph
app.GlobalHandles.SignalFigure;                 % Pop-up UI Figure
app.GlobalHandles.PreviewAxes;                  % Pop-up Axes
app.GlobalHandles.PopupTypeDropDown;            % Pop-up Type Dropdown
app.GlobalHandles.OffsetPressureTextField;      % Pop-up Offset Pressure Text Field
app.GlobalHandles.OffsetPressureEditField;      % Pop-up Offset Pressure Edit Field
app.GlobalHandles.AmplitudeTextField;           % Pop-up Amplitude Text Field
app.GlobalHandles.AmplitudeEditField;           % Pop-up Amplitude Edit Field
app.GlobalHandles.PeriodTextField;              % Pop-up Period Text Field
app.GlobalHandles.PeriodEditField;              % Pop-up Period Edit Field
app.GlobalHandles.FrequencyTextField;           % Pop-up Frequency Text Field
app.GlobalHandles.FrequencyEditField;           % Pop-up Frequency Edit Field
app.GlobalHandles.RepeatCheckbox;               % Pop-up Repeat Checkbox
app.GlobalHandles.HalfPulseCheckbox;            % Pop-up Half Pulse Checkbox
app.GlobalHandles.CancelButton;                 % Pop-up Cancel Button
app.GlobalHandles.ConfirmButton;                % Pop-up Confirm Button
app.GlobalHandles.SelectFileButton;             % Pop-up Select File Button

app.GlobalHandles.hP;                           % Real-time Graph Axes Handle
app.GlobalHandles.Timer;                        % Timer Function to callback every 0.25s
app.GlobalHandles.ErrorFlag;                    % Used to show if signals are capped or floored

%% Default Pressure and Time Vectors
% These values are used to transfer data from function to function
app.TimeVect = (-15:1/4:0)';                    % Vector for real-time plots
app.TimeAxis = 0:1/4:15;                        % Time axis for plot preview
app.PressureTar = zeros(61,1);                  % Real-time plotted set pressure
app.PressureValue =  zeros(61,1);               % Snipped pressure waveform values
app.PressurePreview = zeros(61,1);              % Pressure plotted on preview panel
app.PressureTemp = zeros(61,1);                 % Temporarily stored pressure values to be circshifted

