# Capture Point Dynamics (Englsberger et al.) - Overview

This project implements a **humanoid walking controller based on Capture Point (CP) dynamics**, as proposed by **Englsberger et al.** in *"Bipedal Walking Control Based on Capture Point Dynamics"*.

The controller is modeled and validated using **MATLAB/Simulink** and is intended as an **educational, reproducible reference implementation**.

## Motivation

Humanoid walking control is challenging due to:
- Underactuated dynamics
- Limited support polygon
- Balance constraints (ZMP / CoP)
- Sensitivity to disturbances and modeling errors

The Capture Point framework provides an **intuitive and mathematically elegant way** to stabilize walking by directly controlling the unstable component of the LIPM dynamics.

## Objectives

- Implement the **Capture Point based walking controller** described in the reference paper
- Model humanoid walking using the **Linear Inverted Pendulum Model (LIPM)**
- Validate controller performance in **MATLAB/Simulink**
- Visualize walking behavior using:
  - Center of Mass (CoM)
  - Capture Point (CP)
  - Zero Moment Point (ZMP)

## Reference Papers

This implementation is based on:

1. *Bipedal Walking Control Based on Capture Point Dynamics**  
   ## J. Englsberger, C. Ott, M. A. Roa, A. Albu-Schäffer, G. Hirzinger

2. *Integration of vertical COM motion and angular momentum in an extended Capture Point tracking controller for bipedal walking**  
   ## Johannes Englsberger, Christian Ott

## Control Architecture

The implemented control loop follows the structure proposed in the paper:

1. Compute CoM position and velocity
2. Calculate Capture Point
3. Apply CP control law to compute desired ZMP
4. Project ZMP to support polygon
5. Track ZMP using a lower-level controller

This cascaded structure separates **balance control (CP)** from **motion execution (ZMP / kinematics)**.

## How to Run the Simulation

### Step 1: Open MATLAB

Set the project root as the MATLAB working directory:
```bash
        Englsberger_controller
```

## Step 2: Initialize Parameters
Run the initialization script:

```bash
ref_cp.m
```

## Step 3: Open Simulink Model
```bash
cp.slx
```

## Step 4: Run Simulation
Click Run in Simulink.

# Outputs & Visualization

Simulation results can be analyzed using Simulink scopes:
- CoM position and velocity
- Capture Point trajectory
- ZMP trajectory

Snapshots and plots are available in:

```bash
Snapshots_englcp
```

## Key Features

- Intuitive Capture Point based stabilization
- Exponential stability guarantee
- Explicit ZMP constraint handling
- Suitable for push recovery and online footstep adaptation
