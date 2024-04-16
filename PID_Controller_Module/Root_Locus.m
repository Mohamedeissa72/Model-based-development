k = 2;  % put k any number

num = [6];
den = [1 6 11 6];
G_OpenLoop = tf(num,den)
poles_OpenLoop = pole(G_OpenLoop)

G_ClosedLoop = feedback(k*G_OpenLoop,1)
poles_ClosedLoop = pole(G_ClosedLoop)

rlocus(G_OpenLoop)