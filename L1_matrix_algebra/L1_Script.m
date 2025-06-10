%Anshuman Deodhar
%01/01/2024 6:00PM
%ECE 201 L1
%Answering the given questions based on the three given matrices

clear; %removes all variables from the workspace

%------Defining the 3 matrices---------
A = [6 -5 -2; 2 -4 5; 0 1 -8];
B = [2 3 5; -1 1 6; 8 -5 -3];
C = [-1 -4 1; 2 2 0; -4 3 2];

%------Part A-------
AB = A*B % AB
BA = B*A % BA

check_a = BA - AB %Should not be a 3x3 matrix of zeros

%------Part B-------
BC = B*C; % BC

check_b = AB*C - A*BC % Should be a 3x3 matrix of zeros

%------Part C-------
check_c = (A+B)*C - (A*C + BC) %Should be a 3x3 matrix of zeros

%------Part D-------
AB_T = AB.';
A_T = A.';
B_T = B.';

check_d1 = AB_T - B_T*A_T %Should be a 3x3 matrix of zeros
check_d2 = AB_T - A_T*B_T %Should not be a 3x3 matrix of zeros

%-----Part E--------
A_in = inv(A)
B_in = inv(B)
AB_in = inv(AB)

check_e1 = AB_in - A_in*B_in %Should not be a 3x3 matrix of zeros
check_e2 = AB_in - B_in*A_in %Should be a 3x3 matrix of zeros

%------Part F--------
dA = det(A)
dB = det(B)
dAB = det(AB)

check_f = dAB - dA*dB %Should be a 3x3 matrix of zeros

%------Part G--------
check_g = det(1.2*A) - (1.2^3)*dA %Should be a 3x3 matrix of zeros


