% Definite Parameters

wn = 1;
zeta_values = [0,0.1,0.3,0.5,0.7,0.9,1];
time_sim = 0:0.01:20; % time simulation
step_input = ones(size(time_sim));

figure;
for i = 1:length(zeta_values)
    num = [0 wn^2];
    den = [1 2*zeta_values(i)*wn wn^2];
system = tf (num,den);
  [y,t] = step(system,time_sim);
  subplot(length(zeta_values),1,i);
  plot(t,step_input,'b','LineWidth',1.5);
  hold on
  plot(t,y,'r','LineWidth',1.5);
  hold off

  xlabel ('time');
  ylabel ('system response');
  title (['Damping Ratio (\zeta)= ',num2str(zeta_values(i))]);
  legend ('step input','system response');
  
end

sgtitle ('Effect Of Damping Ratio On System Response (Constant NAtural Frequency)');