---
title: "AE 311: Individual Project 2"
date: \today
author: "Varsha Krishnakumar, varshak3@illinois.edu"
---  

#### **1. What assumptions are you making in developing your vortex panel method?**


In developing the vortex panel method, it can be assumed that 2-dimensional flow (that is steady, inviscid, incompressible and irrotational) is the same as it approaches the airfoil, as well as when the flow is far away from the airfoil. It can also be assumed that the airfoil is a streamline, and correspondingly, no-penetration velocity can be assumed. The approaching flow can be surmised as tangent to the airfoil. 

The airfoil surface can be broken down into numerous discrete panels. To use the condition $\Delta^²\Phi = 0$, *Potential Flow* can be assumed, as well as the satisfaction of the *Kutta* condition. In developing the vortex panel method, the *First-Order Method* will be acquired. 

#### **2. Create a sketch that defines your nomenclature. How are the panels indexed and defined, what local coordinate systems and variables are needed to define quantities on each panel, etc.?** 

![alt text](Q2sketch.PNG)

The surface of the airfoil can be broken down into discrete "panels", where each panel is represented using a vortex sheet of linear distribution. The reasoning for this theory is that as the number of panels are increased, the velocity boundary conditions are imposed on an increasingly better representation of the airfoil surface. On the top surface of the airfoil, each panel is represented by $i$, and a numerical incrementation of 1. Similarly, each panel on the bottom surface is represented by $j$., and a numerical incrementation of 1. 

*The control point at j can be written as:* 


$\hat{x_j} = {x_j} + \frac{Δs_j^x}{2}$,

where 

$$Δs_j^x = Δs_j cosθ_j$$

And

$\hat{y_j} = y_j + \frac{Δs_j^y}{2}$,

where

$$Δs_j^y = Δs_j sinθ_j$$

The vortex strength at some $s_j$ along panel $j$ is:

$$γ(s_j) = γ_j + (γ_{j + 1} - γ)\frac{s_j}{Δs_j}$$




#### **3. What is the procedure for developing the panel method?**

Noting that each vortex strength $\gamma$ would be constant on a panel (but may vary from panel to panel), the normal velocity equation for a single vortex can be expanded to solve for the velocity potential at the control point of each panel. The calculation of the (normal) derivative of the resultant equation results in normal velocities. 

The corresponding resultant is ${K_{ij}}$ (the geometric integral of the normal velocity) and the flow existing around the airfoil. Setting the notmal derivatives at each control point to zero, the resulting celocity is the superposition of the uniform flow velocity and the induced velocity produced by all the vortex panels. With resulting $N$ unknowns - the signification of which are the vortex panel strengths, $\gamma_{j}$ - the acquired equation represents the flow boundary consition which is evaluated at the control point of the $i^{th}$ panel. The equation can then be applied the all the control points of the panels, and a system of $N$ Linear Equations and unkowns are obtained. Assuming that the two panels at the trailing edge are insignificant, the *Kutta* condition can be applied to the trailing edge (given by $\gamma(TE) = 0$). 

Assuming that there are two points close enough to the trailing edge, the strengths of the two vortex panels cancel at the point where they meet at the trailing edge (i.e., $\gamma_1 + \gamma_N = 0$). Therefore, the *Kutta* condition is imposed. To ensure that the System of Linear Equations (referred to as "linsys") is not overdetermined, one of the control points can be ignored; $V_{\infty, N} + V_N = 0$ is evaluated at $N - 1$ control points. 

#### **4. Describe the unknowns that you will be solving for. What are these unknowns and why are they useful in predicting the flow past an airfoil?**

The unknown variables to be determined are the spanwise vortex strength distribution, $\gamma$. The strengths are constant across each individual panel, however, the strengths will vary for each vortex panel.

The sum of the distribution, $\Gamma$, determines *the lift per unit span*. The objective of the panel technique is to solve for $\gamma_j$ , summed from $j = 1$ to $N$, such that the body surface becomes streamlined in relation to the flow. Using this information, the tangential velocity equation can be used to solve for tangential velocities, and correspondingly, the *Pressure Coefficients* of each panel.

#### 5. Develop a linear (matrix) system to solve for the problem unknowns. Your final result should be a matrix system that looks like $A = b$, where the unknowns are contained in the vector . This linear system should be solvable, so be sure you incorporate all equations needed to fully constrain the solution.

