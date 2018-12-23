T=40;
f=1/T;
w=2*pi*f;
pas=T/1000;
t = 0:pas:3*T;
N=50;
s=(1+square(w*t,15))/2;

for n = -N:N
    C(n+N+1) = 1/T * integral(@(t)((1+square(w*t,15))/2).*exp(-1j*n*w*t),0,T) ;
    %aflarea coeficientilor
end
sr = 0;
for n = -N:N
    srecompus = srecompus + C(n+N+1)*exp(1j*n*w*t) ;
end
%recostruirea semnalului


figure(1);
hold on
plot(t,real(srecompus),'-.r',t,imag(srecompus),'-.r');
%reprezentarea semnalului reconstruit
plot(t,s);
%reprezentarea semnalului
xlabel("Timpul");
ylabel("Semnal(t) si semnalul recompus(t)");
title("Semnalul initial si cel recompus")
hold off


figure(2);
hold on
stem((-N:N)*w,2*abs(C));
%reprezentarea spectrului de amplitudini
xlabel('Pulsatia w');
ylabel('Amplitudinile Ak');
title('Spectrul de Amplitudini');
hold off

%Analiza Fourier a semnalelor be permite sa descompunem orice
%semnal intr-o suma de semnale elementare. Aceasta metoda ne 
%este folositeare in reconstruirea unui semnal necunoscut pe baza spectrului
%sau amplitunii ce pot fi aflate cu ajutorul unui analizor de spectru.