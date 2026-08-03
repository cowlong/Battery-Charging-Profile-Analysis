<table>
<tr>
<td width="20% align="center">
<img src="Battery-banner.jpg" width="180">
</td>

<td width="80%">

<h1>Battery Charging Profile Modeling and Analysis</h1>

<p>
Use MATLAB to model a lithium-ion battery charging profile using an RC circuit analog, curve fitting, numerical integration, and engineering analysis
</p>
</td>
</tr>
</table>

## Project Description

This project models the charging behavior of a real lithium-ion battery using MATLAB. By representing the battery as a first-order RC circuit, the charging voltage is modeled with an exponential function and compared against experimental data using MATLAB's Curve Fitting Toolbox.
The primary objectives of this project were to: 
- Model lithium-ion battery charging as an RC circuit through exponential charging equations to real battery data
- Analyze voltage, current, and power over time
- Apply numerical differentiation and integration
- Visualize battery behavior using MATLAB

### Goal
The primary goal of this project was to model and analyze the charging profile of a lithium-ion battery using MATLAB. The experimental battery data is analyzed through curve fitting, numerical differentiation, and numerical integration to evaluate charging performance, energy delivery, voltage change, and resistive losses. The resulting models and visualizations provide insight into battery charging dynamics and demonstrate the application of engineering analysis as well as engineering techniques to real-world electrical systems. 

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
---

## Results

/* insert results here with descriptions, including images*/ 
---

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
