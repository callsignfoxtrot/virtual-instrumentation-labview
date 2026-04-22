% Updated Numerator and Denominator
num = [2 3 0]; % 2s^2 + 3s + 0
den = [1 5 6]; % 1s^2 + 5s + 6

% Convert to State Space
[A, B, C, D] = tf2ss(num, den)

sys = tf(num, den)

% Step Response Data
[y, t] = step(sys)

% Performance Metrics
info = stepinfo(sys)
tr = info.RiseTime
ts = info.SettlingTime
overshoot = info.Overshoot

% Root Locus Plot
rlocus(sys); 

% Bode Plot
figure;
bode(sys);

% Stability Margins
[Gm, Pm, Wcg, Wcp] = margin(sys)