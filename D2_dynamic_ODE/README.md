# Exercise D2 – Dynamically solving an ODE with Time-Varying Input

This MATLAB script numerically solves the dynamic first-order ordinary differential equation:

**df/dt = –A * tⁿ * f(t) + B * cos(wt)**, with initial condition **f(0) = f₀**

The equation is solved using Euler’s method and visualized through multiple test cases.

---

## Concepts Covered
- Numerical integration of first-order ODEs
- Time-varying coefficients and inputs
- Euler’s method for approximation
- Plotting and verifying solution behavior under different time intervals
- Conditional analytical comparison for specific cases (when _n = 0_ and _w = 0_)

---

## Files Included
- `D2_Script.m`: Final MATLAB script
- `D2_Command_Window.pdf`: Output log from the Command Window
- `D2_output_t1.jpg`: System response from 0 to t = 1 s
- `D2_output_t8.jpg`: Extended simulation from 0 to t = 8 s
- `D2_output_nw.jpg`: Special case when _n = 0_ and _w = 0_, showing analytical comparison

---

## Output Verification
When _n = 0_ and _w = 0_, the analytical solution is:

**f(t) = (f₀ – B/A) * exp(–At) + B/A**

This is compared to the numerical solution using a check plot, which should approach zero error.

---

**Author:** Anshuman Deodhar  
**Collaborator:** Rivan Juthani  
**Course:** ECE 201 – Winter 2024  
