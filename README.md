| | |
|---|---|
| <img src="Images/Battery-banner.jpg" width="320"> | <h1>Battery Charging Profile Modeling and Analysis</h1><hr><p>Use MATLAB to model a lithium-ion battery charging profile using an RC circuit analog, curve fitting, numerical integration, and engineering analysis.</p> |

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

### Goal

Visualize battery charging behavior.

Three MATLAB subplots were created:

- Voltage vs Time
- Current vs Time
- Power vs Time

The fitted exponential model was overlaid on the voltage plot for comparison.

/* Insert images here with descriptions */

---

# Results

/* insert results here with descriptions, including images*/ 
---

### Deliverables

- Exponential charging curve
- Experimental data comparison
- Goodness-of-fit metrics

<p align="center">
<img src="images/curvefit.png" width="700">
</p>

Using calculus and electrical engineering principles to evaluate charging performance.. 
- \frac{dV}{dT} , used to determine how quickly the battery voltage changes during charging
- E = \int P(t)\,dt , used to calculate the total energy being delivered
- P=I^2R , used to calculate estimated resistive loss

Using the estimations of these equations and MATLAB tools, our results output the values in the table below. 

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

/* note for later, delete in final */

matlab tools used:
- Curve Fitting Toolbox
- Numerical Integration (`trapz`)
- Numerical Differentiation (`gradient`)
- Data Visualization
- Subplots
- Live Scripts
- Matrix Operations
- Vectorized Calculations

learning outcomes: 
This project demonstrates the application of:

- MATLAB programming
- RC circuit modeling
- Battery charging analysis
- Curve fitting techniques
- Numerical calculus
- Data visualization
- Engineering data analysis

Future Improvements:
* edit * 

/* end of note, delete in final */


# Authors

| Name | Major |
|------|-------|
| Name | Major |
| Name | Major |
| Name | Major |
| Name | Major |
