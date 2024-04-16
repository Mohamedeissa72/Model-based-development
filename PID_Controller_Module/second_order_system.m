wn = 2;
zeta = 0.1; % We change the zeta values ​​to see their effect on the response system

num = [0 wn^2];
den = [1 2*zeta*wn wn^2];
G = tf (num,den);
hold on
step (G)