num = [1];
den = conv([1 1],[1 5]);
sys_openloop = tf (num,den);

k = 20.8;
sys_closedloop = feedback(k*sys_openloop,1);
step(sys_closedloop)
% rlocus(sys)

