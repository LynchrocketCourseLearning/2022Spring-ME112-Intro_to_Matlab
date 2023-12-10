%% 声波生成函数
function y = GW( tone, rythm )    % tone为色调，rythm为节奏。

fs = 44100;     % 采样率。

% 色调频率
freqs1 = [523,587,659,698,784,880,988];     % 高音
freqs2 = [262,294,330,349,392,440,494];     % 中音
freqs3 = [131,147,165,175,196,220,247];     % 低音
freqs4 = [66,74,83,88,98,110,124];               % 低低音
% 组合频率：高-中-低-低低-休止
freqs = [freqs1,freqs2,freqs3,freqs4,0];         

x = linspace(0,2*pi*rythm,floor(fs*rythm)); 
fx = 1 - x/(rythm*2*pi);                    % 线性衰减函数
% fx = exp(-x/(rythm*pi/2));             % 指数衰减函数
y = sin(freqs(tone)*x).*fx;                 % 输出声音

end