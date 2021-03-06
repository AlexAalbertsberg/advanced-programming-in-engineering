% This script is the program to simulate the oscillator using the first
% order forward Euler method.
% Alex Aalbertsberg (s1008129)
clc

k = 5; % spring constant given (5 N/m)
m = 2; % mass given (2 kg)

T = 60; %self-defined final simulation time

MaxStap = 600000; % maximum amount of steps
DeltaT = T/MaxStap; % calculate time step

%Pre-allocate arrays
x = zeros(1,MaxStap);
t = zeros(1,MaxStap);

%initial values
x(1) = 1; v = 0; t(1) = 0;

%Time integration using Euler's method
for i=1:MaxStap-1
    t(i+1) = t(i) + DeltaT; %update time
    
    a = -k*x(i)/m; % acceleration (a = F/m)
    x(i+1) = x(i) + v * DeltaT; % calculate new spring position
    v = v + a * DeltaT; %calculate new speed
end

plot(t,x) % plot spring position as a function of time
xlabel('Time'); ylabel('Displacement');