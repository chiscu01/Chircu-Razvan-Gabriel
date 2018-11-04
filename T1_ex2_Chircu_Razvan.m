x = 0: 0.002: 3;
y = -x+1;
subplot(3,1,1)
plot(x, y, 'b')
hold on
x =3:0.002:6;
y = x-5;
plot(x,y,'b'),grid,xlabel('t[s]'),ylabel('A[V]')
title('Rezolutie temporara 2ms');

x = 0:0.02:3;
y = -x+1;
subplot(3,1,2)
plot(x,y,'b')
hold on
x =3:0.02:6;
y = x-5;
plot(x,y,'b'),grid,xlabel('t[s]'),ylabel('A[V]')
title('Rezolutie temporara 20ms');

x = 0: 0.2: 3;
y = -x+1;
subplot(3,1,3)
plot(x, y, 'b')
hold on
x =3:0.2:6;
y = x-5;
plot(x,y,'b'),grid,xlabel('t[s]'),ylabel('A[V]')
title('Rezolutie temporara 200ms');