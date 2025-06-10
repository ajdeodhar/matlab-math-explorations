%Anshuman Deodhar
%06/15/2024 10:15PM
%ECE 201 D3
%Solving for coeffecients of differential equations using linear algebra
%Collaborator: Rivan Juthani

clear

%-----------USER INPUT FOR GIVEN QUANTITIES-----------------
g = input("Enter the value of g: ");
h = input("Enter the value of h: ");
a = input("Enter the value of a: ");
b = input("Enter the value of b: ");
w = input("Enter the value of w: ");

X = [h - w^2, g*w; -g*w, h - w^2];
Y = [a; b];

C = X\Y; %Since AX = B, X = A^-1*B

A = C(1) %Coeffecient of cos(wt) in the particular solution
B = C(2) %Coeffecient of sin(wt) in the particular solution