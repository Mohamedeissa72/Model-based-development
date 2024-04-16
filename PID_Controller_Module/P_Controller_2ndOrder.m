num = [1];
den = [1 5 6];  % Second order system = s^2+5*s+6

sys = tf (num,den);

figure;
t = 0:0.01:10;
kp_Values = [0.001,0.01,0.1,1,10,50,100];
openloopsRes = step(sys,t);

plot (t,openloopsRes,'--','linewidth',2,'color','b');
hold on

closedloopResWithOutController = step(sys/(1+sys),t);   % = G(s/1+G(s))      % without controller
plot (t,closedloopResWithOutController,'-','linewidth',2,'color','r');
hold on

for i = 1:length(kp_Values)
    Kp = kp_Values(i);
    SystemWithController = feedback(Kp*sys,1);    % = (kp*G(s))/(1+kp*G(s)*H(s))  % unityfeedback H(s)=1
    [SystemResWithController,~] = step(SystemWithController,t);

    plot (t,SystemResWithController,'linewidth',2);
    hold on

end

xlim([0,10]);
ylim([0,1.2]);
title('Effect of Kp on System Response (1st Order System)');
xlabel('time');
ylabel('SystemResponse');
legend(['open loop';'closed loop without controller';cellstr(num2str(kp_Values'))],'Location','best') % هنا حول ف الاسترينج الصف الى عمود,وامر اللوكيشن ده عشان يحطلى المربع بتاع الليجيند ده ف افضل مكان هو شايفه بالنسبه للصوره 
