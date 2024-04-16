% Definite Parameters

zeta = 1;
wn_values = 1:1:5;
timesim = 0:0.02:20;
stepinput = ones(size(timesim));

figure;
for i = 1:length(wn_values)
    num = [0 wn_values(i)^2];
    den = [1 2*zeta*wn_values(i) wn_values(i)^2];
system = tf (num,den);
  [y,t] = step(system,time_sim);
  subplot(length(wn_values),1,i);
  plot(t,step_input,'b','LineWidth',1.5);
  hold on
  plot(t,y,'r','LineWidth',1.5);
  hold off

  xlabel ('time');
  ylabel ('system response');
  title (['Natural Frequence (\omega_n)= ',num2str(wn_values(i))]);
  legend ('step input','system response');
  
end
sgtitle ('Effect Of NAtural Frequency On System Response (Constant Damping Ratio)');