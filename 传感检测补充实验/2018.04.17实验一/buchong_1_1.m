% ×Ô¼ìÐÅºÅ
%%
T = (Xms(2) - Xms(1)) / 1000; % Sample time
Fs = 1/T;                     % Sampling frequency
L = length(Xms);              % Length of signal
t = (0:L-1)*T;                % Time vector
y = YG;
subplot(221)
plot(1000*t(1:500),y(1:500))
grid on
title('Sampled Signal')
xlabel('time (milliseconds)')
ylabel('Signal (G)')
%%
NFFT = 2^nextpow2(L); % Next power of 2 from length of y
Y = fft(y,NFFT)/L;
f = Fs/2*linspace(0,1,NFFT/2+1);
% Plot single-sided amplitude spectrum.
subplot(222)
plot(f,2*abs(Y(1:NFFT/2+1))*10) 
axis([0 500 0 20])
grid on
title('Single-Sided Amplitude Spectrum')
xlabel('Frequency (Hz)')
ylabel('Signal (m/s^2)')
%%
subplot(223)
plot(XHz, 10.^(YdB/20))
grid on
axis([0 500 0 20])
xlabel('Frequency (Hz)')
ylabel('Signal (m/s^2)')
%%
subplot(224)
plot(XHz, 10.^(YdB/20))
grid on
hold on
plot(f,2*abs(Y(1:NFFT/2+1))*10)
axis([0 500 0 20])
xlabel('Frequency (Hz)')
ylabel('Signal (m/s^2)')
legend('Sampled', 'Calculated')