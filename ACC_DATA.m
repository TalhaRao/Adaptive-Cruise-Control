clc;    % Clear the command window.
clear;  % Erase all

%% Ahead Vehicle
m_Ahead = 1000;     % mass [kg]
b_Ahead = 50;       % friction in kg/s

%% Follower Vehicle
m_Follower = 1500;  % mass [kg]
r  = 0.326;         % wheel radius [m]
Rf = 3.28;          % Final Drive Ratio
Rtr = 1;            % Gear Ratio
Ctr = 1.6;          % Torque ratio of torque converter
Ne = 4000;          % Engine Speed [rpm]
Kc = 1;             % Brake Pressure Gain
Kb = 0.005;         % Lumped Gain of entire braking system
Ro_A_Cd = 0.98;     % Aerodynamic factor
Cr = 0.015;         % Rolling Resistance coefficient
g = 9.81;           % Gravitational Acceleration [m/s^2]
theta = 0;          % Inclination of the road [degree]
F_aero = 1/(2*m_Follower) * Ro_A_Cd;
F_res  = Cr * g * cos(theta);
F_grav = g * sin(theta);
Tmax = 528.7 + 0.152*Ne - 0.0000217*Ne^2;
