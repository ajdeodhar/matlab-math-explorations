%Anshuman Deodhar
%06/08/2024
%ECE 201 D2
%Collaborator: Rivan Juthani


%-----------USER INPUT FOR GIVEN QUANTITIES-----------------
g = input("Enter the value of g: ");
h = input("Enter the value of h: ");
a = input("Enter the value of a: ");
b = input("Enter the value of b: ");
w = input("Enter the value of w: ");

tmin = 0; %Start time, in s
tmax = input("Enter the ending time, in s: ");%user input for ending time
N = 1000; %Intervals
dt = (tmax - tmin)/N; 

%-----Numerical Solution--------
fn = zeros(1,N+1); %initializing array of zeros
fn(1) = f0; %Given condition
t = linspace(tmin, tmax,N+1);

for i = 1:N %f(t + dt) = f(t) + dt*(ht - gt*f(t))
    fn(i+1) = fn(i) + dt*(B*cos(w*t(i)) - A*(t(i)^n)*fn(i)); 
end



%Plotting the numerical solution
plot(t,fn,LineWidth=2);
ax = gca;
ax.FontSize = 14;
xlabel("time t (s)", "FontSize", 16)
ylabel("f(t)", "FontSize", 16)
title("ECE 201 D2: Numerical Solution",...
    sprintf('$$ df/dt + %d t^%d f(t) = %d\\cos(%d t), f(0) = %d $$',...
A,n,B,w,f0),"FontSize", 22, "Interpreter","latex")
grid on;

if n == 0 && w == 0
    hold on
    %----Analytical Solution-------
    fa = (f0 - B/A)*exp(-A*t) + B/A; %f(t) = Ae^-gt + B
    check_f = fa - fn; %Should be zero
    plot(t,check_f,LineWidth=2);
    legend("Numerical Solution","Check (Should be zero)","FontSize",16)
end