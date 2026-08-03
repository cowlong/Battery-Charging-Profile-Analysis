<p align="right">
## Battery Charging Profile Modeling and Analysis
Use MATLAB to model a lithium battery-charging profile
</p> 

<p align="left">
<img src="images/battery-banner.jpg" width="300">
</p>

## Project Description

This project models the charging behavior of a real lithium-ion battery using MATLAB. By representing the battery as a first-order RC circuit, the charging voltage is modeled with an exponential function and compared against experimental data using MATLAB's Curve Fitting Toolbox.
The primary objectives of this project were to: 
- Model lithium-ion battery charging as an RC circuit through exponential charging equations to real battery data
- Analyze voltage, current, and power over time
- Apply numerical differentiation and integration
- Visualize battery behavior using MATLAB

# Mathematical Model

The battery charging profile is modeled as a first-order RC charging circuit:

<p align="center">

\[
V(t)=V_{max}\left(1-e^{-t/(RC)}\right)
\]

</p>

Where

| Variable | Description |
|-----------|-------------|
| \(V(t)\) | Battery voltage |
| \(V_{max}\) | Maximum battery voltage |
| \(R\) | Internal resistance |
| \(C\) | Equivalent capacitance |
| \(RC\) | Time constant |

---

# Project Workflow

---

# Step 1 — Project Initialization & Data Loading

### Goal

Prepare the MATLAB environment and isolate the battery charging data.

### Tasks Completed

- Loaded the provided lithium-ion battery dataset
- Extracted:
  - Time
  - Voltage
  - Current
  - Power
- Isolated a single charging cycle
- Determined the maximum battery voltage
- Verified the dataset contained no invalid or missing values
- Confirmed sampling intervals for later numerical calculations

---

# Step 2 — Establish the Mathematical Model

### Goal

Fit an RC charging model to the experimental battery data.

The charging equation used was

\[
V(t)=V_{max}\left(1-e^{-t/(RC)}\right)
\]

### Tasks Completed

- Imported voltage vs. time data into MATLAB Curve Fitting Toolbox
- Performed nonlinear exponential curve fitting
- Determined:

  - Equivalent Resistance (R)
  - Equivalent Capacitance (C)
  - RC Time Constant

- Evaluated model quality using:

  - R²
  - Goodness-of-fit statistics

### Deliverables

- Exponential charging curve
- Experimental data comparison
- Goodness-of-fit metrics

<p align="center">
<img src="images/curvefit.png" width="700">
</p>

---

# Step 3 — Data Visualization

### Goal

Visualize battery charging behavior.

Three MATLAB subplots were created:

- Voltage vs Time
- Current vs Time
- Power vs Time

The fitted exponential model was overlaid on the voltage plot for comparison.

<p align="center">
<img src="images/subplots.png" width="850">
</p>

---

# Step 4 — Analytical Computations

### Goal

Use calculus and electrical engineering principles to evaluate charging performance.

### Numerical Differentiation

MATLAB's

```matlab
gradient()
```

was used to calculate

\[
\frac{dV}{dt}
\]

to determine how quickly the battery voltage changes during charging.

---

### Numerical Integration

MATLAB's

```matlab
trapz()
```

was used to calculate the total energy delivered:

\[
E=\int P(t)\,dt
\]

---

### Performance Metrics

The following values were computed:

- Time to reach 80% charge
- Time to reach 100% charge
- Maximum charging voltage
- Total energy delivered
- Voltage rate of change
- Internal resistive losses

Resistive losses were estimated using

\[
P=I^2R
\]

---

# 📊 Results Summary

| Metric | Value |
|---------|---------|
| Maximum Voltage | XX V |
| RC Time Constant | XX s |
| Time to 80% Charge | XX s |
| Time to Full Charge | XX s |
| Total Energy Delivered | XX J |
| Resistive Energy Loss | XX J |
| R² Value | XX |

---

# Step 5 — Final Validation

Before submission, the project was reviewed to ensure:

- MATLAB code executed without errors
- Figures were properly labeled
- Units were verified
- Curve fitting matched experimental data
- Calculations were physically reasonable
- Code was well-commented and organized

---

# 📈 MATLAB Techniques Used

- Curve Fitting Toolbox
- Numerical Integration (`trapz`)
- Numerical Differentiation (`gradient`)
- Data Visualization
- Subplots
- Live Scripts
- Matrix Operations
- Vectorized Calculations

---

# 📂 Repository Structure

```
Battery-Charging-Project
│
├── BatteryCharging_StudentProjectTemplate.mlx
├── batteryAnalysis.m
├── README.md
│
├── images
│   ├── battery-banner.jpg
│   ├── curvefit.png
│   ├── subplots.png
│   └── summary.png
│
└── data
    └── BatteryDataset.mat
```

---

# 🎯 Learning Outcomes

This project demonstrates the application of:

- MATLAB programming
- RC circuit modeling
- Battery charging analysis
- Curve fitting techniques
- Numerical calculus
- Data visualization
- Engineering data analysis

---

# Future Improvements

Possible extensions include:

- CC-CV charging phase identification
- Separate modeling of Constant Current and Constant Voltage regions
- Simscape Battery simulations
- Fast charging comparisons
- Battery temperature analysis
- Multi-stage charging optimization

---

# Technologies Used

- MATLAB
- MATLAB Live Scripts
- Curve Fitting Toolbox
- Numerical Methods
- Electrical Circuit Modeling

---

# Authors

| Name | Major |
|------|-------|
| Your Name | Electrical Engineering |
| Partner Name | Electrical Engineering |
