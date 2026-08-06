<table>
<tr>
<td width="20% align="center">
<img src="Images/Battery-banner.jpg" width="180">
</td>

<td width="80%">

<h1>Battery Charging Profile Modeling and Analysis</h1>

<p>
Use MATLAB to model a lithium-ion battery charging profile using an RC circuit analog, curve fitting, numerical integration, and engineering analysis
</p>
</td>
</tr>
</table>


### Project Overview

This project uses MATLAB to model and analyze the charging behavior of a real lithium-ion battery. The battery charging profile is approximated using a first-order RC-circuit analog and an exponential charging model. The measured voltage data is fitted to an exponential charging model using the Curve Fitting Toolbox, while voltage, current, and power data are analyzed throughout a charging cycle. 

Numerical differentiation is used to examine the rate of voltage change, and numerical integration is used to calculate the total energy delivered to the battery. Charging time and estimated resistive energy losses are also calculated to evaluate the battery's charging performance. 

The results are presented through MATLAB-generated plots, goodness-of-fit statistics, and a summary of key charging characteristics. The project demonstrates how circuit modeling, calculus, and MATLAB-based data analysis can be applied to real-world battery systems. 


### Objective
The primary objective of this project is to develop a MATLAB-based model of a real lithium-ion battery charging profile using a first-order RC-circuit analogy. The project aims to determine how effectively this simplified model represents the battery's measured charging behavior and to use the resulting model the characterize the charging process. 


### Mathematical Model
A first-order RC circuit was used to approximate the charging characteristics of a lithium-ion battery. The voltage profile was modeled using the exponential charging equation:

$$
V(t)=V_{\text{max}}\left(1-e^{-t/(RC)}\right)
$$

where $V_{\text{max}}$ is the maximum battery voltage and (RC) represents the system time constant. MATLAB's Curve Fitting Toolbox was used to fit the exponential model to the measured battery voltage data and estimate the RC time constant that best represents the observed charging behavior.

--- 

## Methodology

### 1. Data Preparation
The lithium-ion battery cycling data provided by MathWorks was loaded into MATLAB and a single charging cycle was selected for analysis. Cycle 1 was used to avoid combining measurements from different stages of battery aging. 

The charging portion of the cycle was isolated using the measured current, with positive current representing the charging phase. The corresponding time, voltage, and current measurements were extracted for analysis. Time was converted to elapsed seconds beginning at (t=0) for the selected charging interval.

### 2. RC Model and Curve Fitting
The measured battery voltage was modeled using the prescribed first-order RC charging equation: 

$$
V(t)=V_{\text{max}}\left(1-e^{-t/\tau}\right)
$$

where $\tau=RC$ is the RC time constant. The maximum voltage was fixed at 3.6V based on the known maximum voltage of the battery dataset. 

MATLAB's Curve Fitting Toolbox was used to perform a nonlinear least-squares fit between the measured voltage data and the exponential model. The fitted time constant was constrained to remain positive, and goodness-of-fit statistics were calculated to evaluate how well the model represented the measured charging profile.

### 3. Electrical Characteristics
The voltage and current measurements were used to characterize the electrical behavior of the battery during the charging cycle. Instantaneous electrical power was calculated from the measured voltage and current using: 

$$
P(t)=V(t)I(t)
$$

The resulting voltage, current, and power data were plotted against time using MATLAB subplots. These plots provide a visual representation of how the electrical characteristics change throughout the charging process and allow different stages of the charging profile to be identified.

### 4. Charging and Energy Analysis
Numerical methods were used to evaluate key characteristics of the charging process. The rate of voltage change was calculated using numerical differentiation to determine how quickly the battery voltage changes throughout charging.

The total electrical energy delivered to the battery was calculated by numerically integrating the power over time: 

$$
E=\int P(t),dt
$$

The MATLAB trapz function was used to approximate the area under the power-time curve. The charging data was also analyzed to determine the time required for the battery to reach 80% and 100% of its specified maximum voltage.

Estimated resistive energy loss was calculated using the measured current and the battery's internal resistance.

---

## Results

### RC Model Fit
The measured battery voltage was compared with the fitted first-order RC charging model. The model was fitted to the selected charging data using MATLAB's Curve Fitting Toolbox, with the maximum voltage set to the specified value for the battery dataset. 

<p align="center"> 
<img src="Images/Measured Voltage and Fitted RC Model.png" align="center" width="400">
</p>

<p align="center">
Figure 1. Measured Battery Voltage compared with the fitted first-order RC charging model
</p>

- Exponential charging curve
- Experimental data comparison
- Goodness-of-fit metrics

Using calculus and electrical engineering principles to evaluate charging performance.. 
- \frac{dV}{dT} , used to determine how quickly the battery voltage changes during charging
- E = \int P(t)\,dt , used to calculate the total energy being delivered
- P=I^2R , used to calculate estimated resistive loss

Using the estimations of these equations and MATLAB tools, our results output the values in the table below. 

| Metric | Value |
|---------|---------|
| Maximum Voltage | _ V |
| RC Time Constant | _ s |
| Time to 80% Charge | _ s |
| Time to Full Charge | _ s |
| Total Energy Delivered | _ J |
| Resistive Energy Loss | _ J |
| R² Value | _ |



## Future Improvements
/* edit */

## Authors

| Name | School | Major |
|-------|-------|-------|
| - | - | - |
| - | - | - |
| - | - | - |
| Karen Portillo | UC Irvine | Electrical Engineering |
