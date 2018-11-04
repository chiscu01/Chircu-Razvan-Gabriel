t=0:0.002:4;
w=2*pi*0.3333;
s=0.4*(sin(w*t)+abs(sin(w*t)));
subplot(3,1,1)
plot(t,s),grid,xlabel('t [s]'),ylabel('A [V]');
title('Rezolutie temporara de 2 ms')


t=0:0.02:4;
w=2*pi*0.3333;
s=0.4*(sin(w*t)+abs(sin(w*t)));
subplot(3,1,2)
plot(t,s),grid,xlabel('t [s]'),ylabel('A [V]');
title('Rezolutie temporara de 20 ms')


t=0:0.2:4;
w=2*pi*0.3333;
s=0.4*(sin(w*t)+abs(sin(w*t)));
subplot(3,1,3)
plot(t,s),grid,xlabel('t [s]'),ylabel('A [V]');
title('Rezolutie temporara de 200 ms')