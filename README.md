# ANN-In-Electrical-Systems

## These are MATLAB Projects for different electrical systems(Automatic Voltage Regulator & Thermal/Hydro Powerplant).

1. ANN.mat: This is the neural network data in systematic format.  
2. AVR.slx: Simulink design for Automatic Voltage Regulator
3. Ann.m: Simulation file for ANN training of Hydro/Thermal Power Plant
4. AnnTrain.m: Simulation file for ANN training
5. ThermalPowerPlant.slx: Simulink design for Thermal Power Plant system
6. HydroPowerPlant.slx: Simulink design for original Hydro Power Plant system

A power plant is normally a large scale system with complex nonlinear dynamics. But, for the purpose of load frequency control, it can be approximated by a linear model, linearized about the operating point. The major components of single area power plants are alternator, turbine, governor and load. Fig. depicts the linear model of a single area power plant consisting of various components

Further we used Governor, Non reheated Turbine, Load and Machine in our system:
1. Governor: is the main controller of the hydraulic turbine. G(s)=1/(T_g (s)+1)
2. Non Reheated Turbine: Non reheat steam turbines are efficient, capable of satisfying a wide range of steam cycles, site conditions and operating modes for both 50 and 60 Hz applications.  G_t1 (s)=1/(T_t (s)+1)
3. Load and Machine: This is the rotating mass for the functional execution of power plant.  G_p (s)=K_p/(T_p (s)+1)

For Thermal Power plant specifications taken are:

Governor time const = 0.2 s
Inertia Constant for Rotating mass and load = 5 MWs
Turbine time constant = 0.5 s
Load varies by 0.8 percent for a 1 percent change in frequency
Speed regulation is set to R = 0.05 per unit
The turbine rated power is 250 MW at nominal frequency of 60 Hz (Working Frequency)
A sudden load change of 50 MW occurs (ΔPL = 0.2 per unit = Load change/rated power)
Steady State Frequency Deviation = ΔF = Fn-Fi = -0.0096 per unit
The steady state frequency deviation in Hertz will be equal to Fbase * ΔF per unit = -0.576
F actual = Fi + ΔF actual = 60 – 0.576 = 59.424 Hz
Load Change in 50MW 
ΔPL = 50/250 = 0.2 per unit
ΔPL (of load) = 0.2 * 250 = 50MW
ΔPL (after Load Correction) = 250 + 50 = 300 MW

For Hydro Power plant specifications taken are:

Governor time const = 0.08 s
Inertia Constant for Rotating Mass and Load = 5 s
Turbine time constant = 0.3 s
Load varies by 1 percent for a 1 percent change in frequency
Speed regulation is set to R = 2 per unit
The turbine rated power is 21.5 MW at nominal frequency of 50 Hz (Working Frequency)
A sudden load change of 20 MW occurs (ΔPL = 0.93 per unit = Load change/rated power)
Steady State Frequency Deviation = ΔF = Fn-Fi = -1.996 per unit
Load Change in 50MW 
ΔPL = 20/21.5 = 0.93 per unit
Normal Operating Load = 1000 MW

Simulink Design For Thermal Power Plant
![image](https://user-images.githubusercontent.com/86974424/171811466-c2b55d13-d5bc-4f93-b3ec-0c682286d376.png)
Simulink Design For Hydro Power Plant
![image](https://user-images.githubusercontent.com/86974424/171811527-065911b8-d95c-42bd-8843-1212ff88dadd.png)
