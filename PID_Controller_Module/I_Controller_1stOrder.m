num = [1];
den = [1 1];

sys = tf (num,den);

figure;
t = 0:0.01:50;
ki_Values = [0.001,0.01,0.1,1,10,50,100];
openloopsRes = step(sys,t);

plot (t,openloopsRes,'--','linewidth',2,'color','b');
hold on

closedloopResWithOutController = step(sys/(1+sys),t);   % = G(s/1+G(s))      % without controller
plot (t,closedloopResWithOutController,'-','linewidth',2,'color','r');
hold on

for i = 1:length(ki_Values)
    Ki = ki_Values(i);
    I_Controller = tf (Ki,[1 0]);
    SysteWithController = series (I_Controller,sys);
    ClosedLoopSystemWithController = feedback(SysteWithController,1);

     [SystemResWithController,~] = step(ClosedLoopSystemWithController,t);

    plot (t,SystemResWithController,'linewidth',2);
    hold on

end
xlim([0,50]);
title('Effect of Ki on System Response (1st Order System)');
xlabel('time');
ylabel('SystemResponse');
legend(['open loop';'closed loop without controller';cellstr(num2str(ki_Values'))],'Location','best')