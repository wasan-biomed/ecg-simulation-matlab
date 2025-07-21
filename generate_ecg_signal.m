% ECG signal generator - simple synthetic signal
fs = 500; % تردد أخذ العينات (500 Hz)
t = 0:1/fs:10; % مدة 10 ثواني
ecg = 1.5 * sin(2*pi*1.3*t) + 0.25*randn(size(t)); % إشارة ECG تقريبيّة مع ضوضاء

% عرض الإشارة
figure;
plot(t, ecg)
xlabel('Time (s)')
ylabel('Amplitude (mV)')
title('Raw ECG-like Signal')

% حفظ الإشارة لاستخدامها لاحقًا
save('ecg_signal.mat', 'ecg', 'fs', 't')
