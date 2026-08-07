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

### 1. RC Model Fit
The measured battery voltage was compared with the fitted first-order RC charging model. The model was fitted to the selected charging data using MATLAB's Curve Fitting Toolbox, with the maximum voltage set to the specified value for the battery dataset. 

<p align="center"> 
<img src="Images/Measured Voltage and Fitted RC Model.png" align="center" width="400">
</p>

<p align="center">
<b>Figure 1.</b> Measured Battery Voltage compared with the fitted first-order RC charging model.
</p>

The fitted model produced an RC time constant of **0.22793 s**, with an $R^2$ value of **0.22936** and an RMSE of **0.27328 V**. The relativity low $R^2$ value indicates that the first-order RC model does not closely represent the measured voltage data over the selected charging cycle. 

The difference between the measured data and the fitted model demonstrates the limitations of representing a real lithium-ion battery using a simple first-order RC circuit.

### 2. Voltage, Current, and Power
The voltage, current, and power measurements were analyzed over the selected battery charging cycle. Electrical power was calculated from the measured voltage and current using:

$$
P(t)=V(t)I(t)
$$

The resulting measurements were plotted as functions of elapsed time to visualize the electrical behavior of the battery throughout the cycle.


<td align="center">
<table>
  <tr>
    <td align="center"><b>Voltage vs. Time</b></td>
    <td align="center"><b>Current vs. Time</b></td>
    <td align="center"><b>Power vs. Time</b></td>
  </tr>
  <tr>
    <td><img src="Images/Voltage vs Time.png" width="500"/></td>
    <td><img src="Images/Current vs Time.png" width="500"/></td>
    <td><img src="Images/Power vs Time.png" width="500"/></td>
  </tr>
</table>
</td>
<p align="center">
<b>Figure 2.</b> Voltage, current, and power measurements during the selected battery charging cycle.
</p>

The voltage initially increases from approximately 2.02 V to 3.56 B within the first 300 seconds. After reaching this initial peak, the voltage continues to fluctuate before eventually settling near 2.0 V toward the end of the measured cycle. 

The current initially increases to approximately 6.54 A and remains relatively constant for the first 300 seconds. It then decreases through several stages before eventually becoming negative, reaching approximately -4.40 A and remaining near this value for a portion of the cycle. Near the end of the cycle, the current rises back toward zero. 

Because power is calculated from the measured voltage and current, its behavior follows changes in both quantities. The power initially reaches approximately 23.47 W before decreasing as the current changes. Later in the cycle, the power becomes negative when the measured current becomes negative, indicating that the direction of electrical power flow has changed relative to the initial portion of the cycle. 

These measurements provide insight into the battery's electrical behavior throughout the cycle. The changes in voltage and current affect the instantaneous power delivered to or from the battery, making the power profile useful for evaluating energy transfer during charging and discharging. The transition from positive to negative current also demonstrates that the selected cycle contains both charging and non-charging portions, which is important when isolating the charging phase for further analysis. These measurements are used in later calculations of charging rate, energy delivery, and resistive losses. 

## Future Improvements
/* edit */

## Authors

| Name | School | Major |
|-------|-------|-------|
| - | - | - |
| - | - | - |
| - | - | - |
| Karen Portillo | UC Irvine | Electrical Engineering |
