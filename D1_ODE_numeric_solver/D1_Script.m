%Anshuman Deodhar
%06/02/2024 9:00PM
%ECE 201 D1
%Numerically solving a first-order differential equation that is hard or
%impossible to solve analytically

clear
clf

%-----GIVEN VALUES-----
g = 5;
h = -6;
f0 = 3;

tmin = 0; %Lower time limit, in s
tmax = 1; %Upper time limit, in s
N = 1000; %Intervals
dt = (tmax - tmin)/N;

%-----Numerical Solution--------
fn = zeros(1,N+1); %initializing array of zeros
fn(1) = f0; %Given condition
t = linspace(tmin, tmax,N+1);

for i = 1:N %f(t + dt) = f(t) + dt*(ht - gt*f(t))
    fn(i+1) = fn(i) + dt*(h - g*fn(i)); 
end

%----Analytical Solution-------
fa = (f0 - h/g)*exp(-g*t) + h/g; %f(t) = Ae^-gt + B

check_f = fa - fn; %Should be zero

plot(t,fn,t,check_f, LineWidth=2);
ax = gca;
ax.FontSize = 14;
xlabel("time t (s)", "FontSize", 16)
ylabel("f(t)", "FontSize", 16)
legend("Numerical Solution","Check (Should be zero)", "FontSize", 16)
title("ECE 201 D1: Numerical Solution",...
    "df/dt - 5f(t) = -6, f(0) = 3","FontSize", 22)
grid on