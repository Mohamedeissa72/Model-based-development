L = 1;
th0 = 0.5;
g = 9.81;


mdl = gcs;      % model = get current system
LenghtValue = 1:2:11;
for i = 1 : numel(LenghtValue)
    L = LenghtValue(i);
  results = sim (mdl);      % simulate this model (output)
  plot (results.logsout.get("AngularDisplacement").Values);
  hold on
  disp ("Simulation " + num2str(i) + " is compelete");
  legendLabels{i} = "L " + num2str(i);
end
legend(legendLabels);
