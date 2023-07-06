format long
clear clc

% Hannah's Final Attempt at Electrical Propulsion
% SEEDS Mission Analysis - Trajectory and EDL Sub-system
% Reference: Spacecraft Systems Engineering Book

%% Sun-centred transfer 
u1 = 3.98332e14; % gravitational constant of Earth
u2 = 4.26213e13; % gravitational constant of Mars
g0 = 9.81; % gravity
Isp_c = 400; % specific impulse chemical
Isp_e = 5000; % specific impulse electrical
rp2  = 3780000; % radius perigee final orbit
ra2 = 7020000; % radius apogee final orbit
rp1  = 385000000; %42164000; %6771000 %0.3633e9; % radius perigee initial orbit
ra1 = 385000000; %42164000; %0.4055e9; % radius apogee initial orbit
dry_mass = 49e3; %80e3; % dry mass
v_sqr_inf_e = (2*u1*(Isp_c^2))/(rp1*((Isp_e^2)-(Isp_c^2))); %
v_sqr_inf_c = (2*u2*(Isp_c^2))/(rp2*((Isp_e^2)-(Isp_c^2))); %
dv1 = sqrt(((2*u1)/(rp1))+(v_sqr_inf_e))-sqrt(((2*u1)/(rp1))*((ra1)/(rp1+ra1)))
dv2 = sqrt(((2*u2)/(rp2))+(v_sqr_inf_c))-sqrt(((2*u2)/(rp2))*((ra2)/(rp2+ra2)))
dvt = (dv1-(sqrt(v_sqr_inf_e)))+(dv2-(sqrt(v_sqr_inf_c)))
R = (exp((-dv1)/(g0*Isp_c)))*(exp((-dvt)/(g0*Isp_e)))*(exp((-dv2)/(g0*Isp_c))); % Mfinal/M0
wet_mass = (1/R)*dry_mass
totaldvv = [dv1 dv2 dvt];
totaldvmag = sqrt(sum(totaldvv.^2))/1000
totaldv = (dv1+dv2-dvt)/1000;

%% Further work and questions
% Do we have 130,000 kg constraint
% Can we get whatever we launch to the Moon
% What is the transfer time
% Would power be feasable 
% Simulate on GMAT?

%% Positives
% Matches up with the solar system delta V map
% Under 130 tonnes so one launch