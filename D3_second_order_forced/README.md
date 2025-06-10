# Exercise D3 – Second-Order Differential Equation with Forcing Function

This MATLAB script solves a second-order differential equation of the form:

**d²y/dt² + 2ζωₙ dy/dt + ωₙ² y = f(t)**

The system response is computed numerically and the solution is plotted for visualization.

---

## Concepts Covered
- Modeling damped second-order systems
- Using MATLAB to solve second-order ODEs numerically
- Incorporating external forcing function f(t)
- Interpreting transient and steady-state behavior

---

## Files Included
- `D3_script.m`: MATLAB implementation of the numerical solver
- `D3_derivation.pdf`: Supporting derivation for solving the equation
- `D3_output_command_window.pdf`: Output logs showing computed system response

---

## Output Verification
The MATLAB script verifies system response for given ζ (damping ratio), ωₙ (natural frequency), and f(t). The results highlight overdamped, underdamped, and critically damped behavior based on ζ.

---

**Author:** Anshuman Deodhar  
**Course:** ECE 201 – Winter 2024  
