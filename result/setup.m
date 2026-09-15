%% 1. System Parameters
m = 1000;     % Vehicle mass (kg)
d = 50;       % Damping / Air resistance coefficient (N.s/m)
v_ref = 20;   % Target vehicle speed (m/s)

%% 2. Actuator Saturation Limits
F_max = 5000; % Maximum engine force (N)
F_min = 0;    % Minimum engine force (N)

%% 3. Step Load Disturbance Parameters (Step Noise)
t_noise = 10;     % Disturbance start time (s)
F_noise = -1500;  % Resistance force magnitude (N)

%% 4. PID Controller Parameters
Kp = 800;
Ki = 15;
Kd = 0;

%% 5. Simulation Configuration
t_sim = 50;   % Simulation stop time (s)

%% 6. Open-Loop Transfer Function & Closed-Loop Linear Evaluation
G = tf(1, [m, d]);