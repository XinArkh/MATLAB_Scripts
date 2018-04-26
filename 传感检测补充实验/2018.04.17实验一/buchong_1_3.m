% ·½²¨ÐÅºÅ
%%
T = (Xms(2) - Xms(1)) / 1000; % Sample time
Fs = 1/T;                     % Sampling frequency
L = length(Xms);              % Length of signal
t = (0:L-1)*T;                % Time vector
y = YV;
%%
NFFT = 2^nextpow2(L); % Next power of 2 from length of y
Y = fft(y,NFFT)/L;
f = Fs/2*linspace(0,1,NFFT/2+1);
%%
plot(XHz, 10.^(YdB/20))
grid on
hold on
plot(f,2*abs(Y(1:NFFT/2+1)))
axis([0 2050 0 2])
xlabel('Frequency (Hz)')
ylabel('Signal (V)')
legend('Sampled', 'Calculated')