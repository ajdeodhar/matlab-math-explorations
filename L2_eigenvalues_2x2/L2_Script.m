%Anshuman Deodhar
%05/29/2024 11:42AM
%ECE 201 L2
%Finding the eigenvalues and eigenvectors of any 2 x 2 matrix

clear

%Defining the four given matrices
P = [3 2; 4 1];
Q = [3 -1; -2 4];
R = [1 -2; -4 8];
S = [2 3; -3 8];

M = input("Choose a matrix from P,Q,R,S: ") %User Input for Matrices


d = det(M); %Determinant (M11*M22 - M21*M12)
t = trace(M); %Trace ie sum of diagonals (M11+M22)

e1 = (t + sqrt(t^2 - 4*d))/2 %First eigenvalue
e2 = (t - sqrt(t^2 - 4*d))/2 %Second eigenvalue

TR1 = -M(1,2)/(M(1,1) - e1); % Ratio for Top Row using first eigenvalue
BR1 = (e1 - M(2,2))/M(2,1); %Ratio for Bottom Row using first eigenvalue

TR2 = -M(1,2)/(M(1,1) - e2); %Ratio for Top Row using second eigenvalue
BR2 = (e2 - M(2,2))/M(2,1); %Ratio for Bottom Row using second eigenvalue

%Checking if the ratios are equal
check_e1 = TR1 - BR1 %Should be zero
check_e2 = TR2 - BR2 %Should be zero

x1 = [-M(1,2); M(1,1)-e1] %First unnormalized eigenvector
x2 = [-M(1,2); M(1,1)-e2] %Second unnormalized eigenvector

%Checking if the first element is negative
if x1(1) < 0
    x1 = -x1; %Fixing x1
end

if x2(1) < 0
    x2 = -x2; %Fixing x2
end

n1 = x1/sqrt(x1'*x1) %First normalized eigenvector
n2 = x2/sqrt(x2'*x2) %Second normalized eigenvector

%Checking if the N values are correct
check_n1 = M*n1 - e1*n1 %Should be zero
check_n2 = M*n2 - e2*n2 %Should be zero

%------------------------ANSWERS--------------------------
%A)If t > 0 and 0 < 4d < t^2, then both the eigenvalues will be positive.
%B)If d < 0 then one eigenvalue will be positive and the other eigenvalue
%  will be negative.
%C)If d = 0, then one of the eigenvalues will be equal to zero.
%D)If t^2 = 4d, then there will only be one eigenvalue.

