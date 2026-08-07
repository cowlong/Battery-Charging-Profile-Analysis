%% The following code has random values designed to test finding when the
%  battery is at 80% charge
t = 0 : 1 : 2000;
R = 4000;
C = 0.007;
tau = R .* C;

Vs = 60;
Vo = 0;
Vstep = Vs + (Vo - Vs) .* exp(-(1 ./ tau) .* t);

percent = 0.8;
Vtarget = Vs * percent;
t_target = -tau .* log(percent - 1);
% the t_target function above only works if Vo = 0

figure;
plot(t, Vstep, '-r', 'LineWidth', 1.5);
ylabel('Voltage (V)');
xlabel("Time (s)");
title('Voltage vs. Time');
hold on;

txt = '80% charged';
plot(t_target, Vtarget, 'ko', 'MarkerSize', 5);
text(t_target + 20, Vtarget, txt);