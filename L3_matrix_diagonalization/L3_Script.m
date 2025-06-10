%Anshuman Deodhar
%06/06/2024 11:13AM
%ECE 201 L3
%Determining if a given matrix is diagonalizable and finding an invertible
%matrix that diagonalizes the given matrix
%Collaborator: Rivan Juthani
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
check_e1 = TR1 - BR1; %Should be zero
check_e2 = TR2 - BR2; %Should be zero

x1 = [-M(1,2); M(1,1)-e1]; %First unnormalized eigenvector
x2 = [-M(1,2); M(1,1)-e2]; %Second unnormalized eigenvector

%Checking if the first element is negative
if x1(1) < 0
    x1 = -x1; %Fixing x1
end

if x2(1) < 0
    x2 = -x2; %Fixing x2
end

n1 = x1/sqrt(x1'*x1); %First normalized eigenvector
n2 = x2/sqrt(x2'*x2); %Second normalized eigenvector

%Checking if the N values are correct
check_n1 = M*n1 - e1*n1; %Should be zero
check_n2 = M*n2 - e2*n2; %Should be zero

%Checking if the matrix is diagonalizable
if abs(e1 - e2) > 1e-5
    X = [x1 x2]
    D = inv(X)*M*X
else
    disp("The matrix is not diagonalizable")
end

%----------------------PROOF------------------------
%For a matrix M let D be the diagonalized matrix such that D = X^-1*M*X 
%where X is an invertible matrix with the eigenvectors x1 and x2 as its
%columns
%Taking determinants on both sides, we get
%det(D) = det(X^-1*M*X)
%det(D) = det(X^-1)*det(M)*det(X)
%det(D) = det(X^-1)*det(X)*det(M)
%Now, X^-1*X = I where I is the identity matrix [1 0; 0 1]
%Thus, det(X^-1)*det(X) = det(X^-1*X) = det(I)
%Thus, det(D) = det(I)*det(M)
%det(I) = 1*1 - 0*0 = 1
%Thus, det(D) = 1* det(M)
%Therefore, det(D) = det(M)
%Thus, we prove that the determinant of the diagonalized matrix is equal 
%to the determinant of its input matrix
