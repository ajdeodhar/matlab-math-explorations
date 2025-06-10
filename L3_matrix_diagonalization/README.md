# Exercise L3 – Matrix Diagonalization

This MATLAB script symbolically diagonalizes a user-input 2×2 matrix using the computed eigenvectors and eigenvalues.

## Concepts Covered
- Matrix diagonalization: A = V * D * V⁻¹
- Computing eigenvalues and eigenvectors without `eig()`
- Verifying the result by reconstructing A from V, D, and V⁻¹
- Symbolic inverse computation and numerical rounding

## Files Included
- `L3_script.m`: MATLAB code for diagonalizing 2×2 matrices
- `L3_derivation.pdf`: Supporting handwritten derivation steps
- `L3_output_command_window.pdf`: Terminal output showing reconstruction checks

## Output Verification
- Computes symbolic V, D, and V⁻¹
- Confirms that V * D * V⁻¹ = A (within rounding error)

---

**Author:** Anshuman Deodhar  
**Course:** ECE 201 – Winter 2024  
