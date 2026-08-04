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

## Project Overview

This project uses MATLAB to model and analyze the charging behavior of a real lithium-ion battery. The battery charging profile is approximated using a first-order RC-circuit analog and an exponential charging model. 

Real battery data is analyzed using MATLAB's Curve Fitting Toolbox, numerical differentiation, numerical integration, and data visualization tools. The analysis focuses on the relationship between voltage, current, power, charging time, and energy transfer during a battery charging cycle. 

### Objective
The primary objective of this project is to determine how well a first-order RC model can represent the charging behavior of a real lithium-ion battery.

The project analyzes experimental battery data to:
- Fit an exponential charging model to measured voltage data
- Evaluate the quality of the model using goodness-of-fit statistics
- Visualize voltage, current, and power throughout a charging cycle
- Calculate the rate of voltage change using numerical differentation
- Determine the time required to reach 80% and 100% charge
- Calculate the total electrical energy delivered to the battery
- Estimate energy lost through internal resistance
- Interpret the charging behavior using engineering and calculus principles

## Mathematical Model
A first-order RC circuit was used to approximate the charging characteristics of a lithium-ion battery. The voltage profile was modeled using the exponential charging equation
<p align="center">

$$
V(t)=V_{\text{max}}\left(1-e^{-t/(RC)}\right)
$$

</p>
where V<sub>max</sub> is the maximum battery voltage and RC represents the system time constant. MATLAB's Curve Fitting Toolbox was used to determine the equivalent resistance and capacitance that best matched the battery data that was measured.

In addition to the curve-fitting analysis, the measured voltage, current, and power data were visualized using MATLAB subplots. These plots illustrate the evolution of the charging cycle and they provide a foundation for calculating voltage rates of change, total energy delivered, charging times, and resistive losses. 

/* Insert images here with descriptions */



## Results

/* insert results here with descriptions, including images*/ 



### Deliverables

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

/* end of note, delete in final */


## Authors

| Name | School | Major |
|-------|-------|-------|
| - | - | - |
| - | - | - |
| - | - | - |
| Karen Portillo | UC Irvine | Electrical Engineering |
