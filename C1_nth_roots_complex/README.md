# Exercise C1 – Nth Roots of a Complex Number

This MATLAB project calculates and visually represents the nth roots of a complex number using Euler's polar form.

## 🧠 Key Concepts
- Polar form: \( z = A e^{j\phi} \)
- Roots: \( z^{1/n} = R e^{j\beta} \)
- Phase spacing: \( d\beta = 360^\circ / n \)
- Root checks: \( (X + jY)^n \approx z \)
- Vector visualization using `quiver`

## 📂 Files Included
- `C1_Script.m`: Final MATLAB script
- `C1_derivation.pdf`: Handwritten derivation
- `C1_output_command_window.pdf`: Command Window test results
- `C1_plot_1.jpg` to `C1_plot_6.jpg`: Plots for various inputs

## 🧪 Test Inputs Used

| Input # | Complex Number `z` | `n` | Plot |
|---------|---------------------|-----|------|
| 1       | 3 + 4j              | 5   | `C1_plot_1.jpg` |
| 2       | 2 - 5j              | 4   | `C1_plot_2.jpg` |
| 3       | -1                  | 3   | `C1_plot_3.jpg` |
| 4       | -1 - 0.0001j        | 3   | `C1_plot_4.jpg` |
| 5       | -j                  | 9   | `C1_plot_5.jpg` |
| 6       | 5 + 15j             | 7   | `C1_plot_6.jpg` |

## ✅ Root Verification
Each root satisfies \( (X + jY)^n = z \)  
Residuals are all close to 0 (on the order of 1e-14 or smaller).

---

**Author:** Anshuman Deodhar  
**Course:** ECE 201 – Winter 2024  
