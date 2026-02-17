# Input-Output Decoupling Control for Manipulator with Moving Base

Masters Thesis – Master of Science in Engineering
(Wrocław University of Science and Technology, 2018)
Implementation of Input–Output Decoupling Control Algorithms for Mobile Manipulators with Nonholonomic Constraints and Free-Floating Space Robots

**[Read the full thesis (PDF)](Tex/Masters_thesis.pdf)**

## Problem

Mobile manipulators combine a wheeled platform with a robotic arm. The platform's rolling constraints (nonholonomic) prevent independent control of all degrees of freedom, while platform and arm dynamics are tightly coupled -- moving the arm shifts the platform's inertia and vice versa. This project implements feedback linearization techniques that decouple these interactions, enabling precise end-effector trajectory tracking.

## Implemented Algorithms

### Mobile Manipulator (Monocycle + RTR Arm)

- **Yamamoto-Yun Basic Algorithm** -- The manipulator holds a fixed high-manipulability configuration while the platform tracks the desired end-effector trajectory alone.
- **Extended Algorithm (Mazur)** -- Both platform and manipulator move in coordination, with output functions depending on the full system configuration for smoother trajectories.

### Free-Floating Robot (Satellite + RR Arm)

- Control of an unpowered base (e.g. satellite on a frictionless surface) that can only be repositioned through arm reaction forces.
- Implemented in both generalized and barycentric coordinate frames.

All algorithms use a two-loop control structure: an inner loop performs input-output decoupling via computed torque, and an outer PD controller with feedforward handles trajectory tracking.

## Project Structure

```
Tex/            LaTeX thesis source and compiled PDF
Matlab/         Simulink models and support scripts
Mathematica/    Symbolic derivation of dynamic equations
```

### Simulink Models

| Model                     | Description                                         |
| ------------------------- | --------------------------------------------------- |
| `ZiemskiAlgorytmPdst.slx` | Mobile manipulator -- basic Yamamoto-Yun algorithm  |
| `ZiemskiAlgorytmRoz.slx`  | Mobile manipulator -- extended decoupling algorithm |
| `FFBary.slx`              | Free-floating robot with barycentric coordinates    |

### Matlab Scripts

**Initialization** -- Each scenario has a dedicated setup script (`setInitConditions*.m`) that defines the full initial state: platform pose (x, y, theta), wheel angles, joint angles (RTR or RR), velocities, auxiliary velocity coordinates for nonholonomic constraints, and precomputed initial output values (Y0, Yp0) from the forward kinematics.

**Forward Kinematics** -- `coordsZiemski.m` and `coordsFF.m` compute homogeneous transformation matrices (4x4) for every link in the kinematic chain: base frame, joint frames, end-effector, and platform corners. Used both by the Simulink control loop and by the visualization scripts.

**Visualization** -- `DrawZZiemski.m` and `DrawFFBary.m` animate the full robot over time, rendering the platform body, arm links, and end-effector position at each timestep in 3D (mobile manipulator) or 2D (free-floating), with the desired trajectory overlaid for comparison. `ploto*.m` scripts generate diagnostic plots: tracking error convergence, base position/velocity, joint configurations, and barycenter drift (for free-floating case).

### Mathematica Notebooks

Three notebook groups, one per robot configuration:

- **Free-Floating (Barycentric)** and **Free-Floating (Generalized)** -- Derive the complete Lagrangian dynamics for a satellite-like body with a 2-DOF RR arm. `Symbols.nb` defines all physical parameters (masses, lengths, inertias). `ComputeH*.nb` derives the inertia matrix entry-by-entry using kinetic energy of each link. `ComputeC.nb` computes Coriolis/centrifugal terms via Christoffel symbols. `ExportKinematics.nb` exports all symbolic expressions as `.txt` files readable by Matlab.
- **Mobile Platform** -- `AlgorytmPodstawowy.nb` and `AlgorytmRozszerzony.nb` derive the decoupling matrices, Lie derivatives, and feedback linearization terms for the Yamamoto-Yun and extended algorithms. `MCD.nb` computes the full dynamic model (H, C, G) for the monocycle + RTR system with nonholonomic Pfaffian constraints.

## Running the Simulations

1. Open MATLAB (tested on R2017b+)
2. Navigate to the `Matlab/` directory
3. Run the appropriate initialization script:
   - `setInitConditionsPdst` for the basic mobile manipulator algorithm
   - `setInitConditionsRoz` for the extended algorithm
   - `setInitConditionsFFBary` for the free-floating robot
4. Open and run the corresponding `.slx` Simulink model
5. Use the `ploto*.m` or `Draw*.m` scripts to visualize results

## Technologies

- **MATLAB / Simulink** -- Simulation and control implementation
- **Wolfram Mathematica** -- Symbolic computation of dynamics
- **LaTeX** -- Thesis document

## References

The thesis builds on work by Yamamoto & Yun (1994) on coordinated mobile manipulator control and Mazur's extended decoupling algorithms for nonholonomic systems. Full bibliography is available in the thesis PDF.

## License

This repository contains academic work. Please cite appropriately if referencing this material.
