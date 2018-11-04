t=0:0.002:4;
w=2*pi*0.25;
s=1.5*abs(sin(w*t));
subplot(3,1,1)
plot(t,s),grid,xlabel('t [s]'),ylabel('A [V]');
title('Rezolutia temporara de 2ms')

t=0:0.02:4;
w=2*pi*0.25;
s=1.5*abs(sin(w*t));
subplot(3,1,2)
plot(t,s),grid,xlabel('t [s]'),ylabel('A [V]');
title('Rezolutia temporara de 20ms')

t=0:0.2:4;
w=2*pi*0.25;
s=1.5*abs(sin(w*t));
subplot(3,1,3)
plot(t,s),grid,xlabel('t [s]'),ylabel('A [V]');
title('Rezolutia temporara de 200ms')