# Numerical Solution for Lorenz Equations & Malkus–Lorenz Waterwheel

A project report exploring numerical ODE integration of the **Lorenz system** and its physical derivation via the **Malkus–Lorenz waterwheel**.

## Lorenz Attractor Visualization

![Lorenz Attractor in Phase Space](lorenz_attractor.png)

## Overview

The **Lorenz system** is a three-dimensional, nonlinear, deterministic set of ordinary differential equations exhibiting sensitive dependence on initial conditions (chaos):

$$\frac{dx}{dt} = \sigma(y - x)$$

$$\frac{dy}{dt} = x(\rho - z) - y$$

$$\frac{dz}{dt} = xy - \beta z$$

For classic chaotic parameters $\sigma = 10$, $\rho = 28$, and $\beta = \frac{8}{3}$, trajectories trace out the Lorenz attractor in phase space. The report also derives the governing equations of motion for a **Malkus–Lorenz waterwheel** (via mass continuity, rotational torque balance, and Fourier amplitude modes) and shows how a change of variables maps the waterwheel dynamics onto the Lorenz equations.

## Repository Structure

```text
malkus-lorenz-waterwheel-simulation/
├── README.md                      # Project summary, key results, equations, and usage instructions
├── Math202-ProjectReport.pdf      # Original Math202 project report
├── lorenz.m                       # ODE solver wrapper and 3D attractor plot
├── lorenz_rhs.m                   # Right-hand side ODE evaluations
├── lorenz_attractor.png           # Attractor plot from the report
└── .gitignore                     # Ignores MATLAB autosaves and OS files
```

## Usage in MATLAB

With the files in the repository root, run in MATLAB:

```matlab
[x, y, z] = lorenz(28, 10, 8/3);
```
