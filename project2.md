---
title: "AE 311: Individual Project 2"
date: \today
author: "Varsha Krishnakumar, varshak3@illinois.edu"
footnote: "Source: https://github.com/varshakrishnakumar/AE-311"
---  

### **I. Assumptions in developing vortex panel method**


  In developing the vortex panel method, it can be assumed that 2-dimensional flow (that is steady, inviscid, incompressible and irrotational) is the same as it approaches the airfoil, as well as when the flow is far away from the airfoil. It can also be assumed that the airfoil is a streamline, and correspondingly, no-penetration velocity can be assumed. The approaching flow can be surmised as tangent to the airfoil. 

  The airfoil surface can be broken down into numerous discrete panels. To use the condition ${{\Delta^2}{\Phi} = 0}$, *Potential Flow* can be assumed, as well as the satisfaction of the *Kutta* condition. In developing the vortex panel method, the *First-Order Method* will be acquired.


---

### **II. Definition of Nomenclature and Coordinate Systems**


 The surface of the airfoil can be broken down into discrete "panels", where each panel is represented using a vortex sheet of linear distribution. The reasoning for this theory is that as the number of panels are increased, the velocity boundary conditions are imposed on an increasingly better representation of the airfoil surface. On the top surface of the airfoil, each panel is represented by $i$, and a numerical incrementation of 1. Similarly, each panel on the bottom surface is represented by $j$., and a numerical incrementation of 1.


 *The control point at j can be written as:* 


 $$\hat{x_j} = {x_j} + \frac{\Delta{s_j^x}}{2}$$

 Where 

 $${\Delta}s_j^x = {\Delta}s_j cos{\theta_j}$$

 And

 $$\hat{y_j} = y_j + \frac{\Delta{s_j^y}}{2}$$

 Where

 $$\Delta{s_j^y} = {\Delta}s_j sin{\theta_j}$$

 The vortex strength at some $s_j$ along panel $j$ is:

 $${\gamma}(s_j) = {\gamma_j} + ({\gamma_{j + 1}} - {\gamma})\frac{s_j}{{\Delta}s_j}$$

  ![Figure 1: Sketch of sample airfoil containing singular panel analysis](Figures\Q2sketch.PNG){#fig:Q2sketch width=80% height=80%}

---



### **III. Procedure for developing the panel method**



 Noting that each vortex strength $\gamma$ would be constant on a panel (but may vary from panel to panel), the normal velocity equation for a single vortex can be expanded to solve for the velocity potential at the control point of each panel. The calculation of the (normal) derivative of the resultant equation results in normal velocities. 

 The corresponding resultant is ${K_{ij}}$ (the geometric integral of the normal velocity) and the flow existing around the airfoil. Setting the notmal derivatives at each control point to zero, the resulting celocity is the superposition of the uniform flow velocity and the induced velocity produced by all the vortex panels. With resulting $N$ unknowns - the signification of which are the vortex panel strengths, $\gamma_{j}$ - the acquired equation represents the flow boundary consition which is evaluated at the control point of the $i^{th}$ panel. The equation can then be applied the all the control points of the panels, and a system of $N$ Linear Equations and unkowns are obtained. Assuming that the two panels at the trailing edge are insignificant, the *Kutta* condition can be applied to the trailing edge (given by $\gamma(TE) = 0$). 

 Assuming that there are two points close enough to the trailing edge, the strengths of the two vortex panels cancel at the point where they meet at the trailing edge (i.e., $\gamma_1 + \gamma_N = 0$). Therefore, the *Kutta* condition is imposed. To ensure that the System of Linear Equations (referred to as "linsys") is not overdetermined, one of the control points can be ignored; $V_{\infty, N} + V_N = 0$ is evaluated at $N - 1$ control points. 


---

### **IV. Unknowns from the Linear System and its Relevance**

 The unknown variables to be determined are the spanwise vortex strength distribution, $\gamma$. The strengths are constant across each individual panel, however, the strengths will vary for each vortex panel.

 The sum of the distribution, $\Gamma$, determines *the lift per unit span*. The objective of the panel technique is to solve for $\gamma_j$ , summed from $j = 1$ to $N$, such that the body surface becomes streamlined in relation to the flow. Using this information, the tangential velocity equation can be used to solve for tangential velocities, and correspondingly, the *Pressure Coefficients* of each panel.

---

### **V. Developing a solvable Linear System.**

 Given that from the sample airfoil figure, *Panel $i$* represents a single panel on the top surface, and *Panel $j$* represents a single panel on the bottom surface, a Linear System relating the velocity potential of the flow around the airfoil and the coefficients of pressure can be implemented in the standard form of $Ax = b$. Here, $A$ represents a matrix of coefficients of the form $[c_{1,{ij}}, c_{2,ij}]$, where $i$ and $j$ are free indices summed from $i = 1,...,m$ and $j = i,...,m$. As per *Figure 1*, $m$ represents the *control point*, or, *midpoint* of the selected panel.

 Accounting for the freestream (aoa of $\alpha$) and the linearly distributed vortex sheets along each panel, the *velocity potential* for the flow is:

 $$\phi(x,y) = U_{\infty} (x{cos\alpha} + y{sin\alpha}) - \Sigma_{j=1}^m {\int_0^{\Delta s_j} \frac{\gamma(s_j)}{2\pi}\arctan}(\frac{y - y_i}{x - x_j})ds_j$$

 Setting the normal derivative of the velocity potential at each control point to zero:

 $$(\frac{\partial \phi}{\partial n_i}) = \Delta \phi_{(x,y) = (\hat{x_i}, \hat{y_i} )} \cdot n_i = \begin{bmatrix}
\frac{\partial \phi}{\partial x}   \\
\frac{\partial \phi}{\partial y} 
\end{bmatrix} \cdot n_i = 0$$
 
 Using these properties, the Linear System obtained is:

 $$\begin{bmatrix}
c_{1,11} & {c_{2,11} + c_{1,12}} & ... & {c_{2,1(m-1)} + c_{1,1m}} & c_{2,1m} \\
c_{1,21} & {c_{2,21} + c_{1,22}} & ... & {c_{2,2(m-1)} + c_{1,2m}} & c_{2,2m}   \\
... & ... & ... & ... & ...    \\
c_{1,m1} & {c_{2,m1} + c_{1,m2}} & ... & {c_{2,m(m-1)} + c_{1,mm}} & c_{2,mm} \\
1 & 0 & ... & 0 & 1
\end{bmatrix} \begin{bmatrix} \gamma_1 \\ \gamma_2 \\ ... \\ \gamma_m \\ \gamma_{m + 1}\end{bmatrix}$$ 

$$=$$
$$2\pi U_\infty \begin{bmatrix} \sin_(\theta_1 - \alpha) \\ \sin_(\theta_2 - \alpha) \\ ... \\ \sin_(\theta_m - \alpha) \\ 0 \end{bmatrix}$$
 
 The complete working of this Linear System set up is given in Appendix A[^1].

[^1]:  https://github.com/varshakrishnakumar/AE-311/Appendices

 In addition, the solution to the integral of the form:

$$\int_0^{\Delta s_j} (as_j + b) \frac{As_j + B}{s_j^2 + Cs_j + D} ds_j$$ 
  
  which is obtained from performing the calculation of the normal derivative of the velocity potential, can be found in Appendix B. 