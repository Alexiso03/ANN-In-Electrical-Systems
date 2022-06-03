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

Governor time const = 0.2 s<br>
Inertia Constant for Rotating mass and load = 5 MWs<br>
Turbine time constant = 0.5 s<br>
Load varies by 0.8 percent for a 1 percent change in frequency<br>
Speed regulation is set to R = 0.05 per unit<br>
The turbine rated power is 250 MW at nominal frequency of 60 Hz (Working Frequency)<br>
A sudden load change of 50 MW occurs (ΔPL = 0.2 per unit = Load change/rated power)<br>
Steady State Frequency Deviation = ΔF = Fn-Fi = -0.0096 per unit<br>
The steady state frequency deviation in Hertz will be equal to Fbase * ΔF per unit = -0.576<br>
F actual = Fi + ΔF actual = 60 – 0.576 = 59.424 Hz<br>
Load Change in 50MW <br>
ΔPL = 50/250 = 0.2 per unit<br>
ΔPL (of load) = 0.2 * 250 = 50MW<br>
ΔPL (after Load Correction) = 250 + 50 = 300 MW

For Hydro Power plant specifications taken are:

Governor time const = 0.08 s<br>
Inertia Constant for Rotating Mass and Load = 5 s<br>
Turbine time constant = 0.3 s<br>
Load varies by 1 percent for a 1 percent change in frequency<br>
Speed regulation is set to R = 2 per unit<br>
The turbine rated power is 21.5 MW at nominal frequency of 50 Hz (Working Frequency)<br>
A sudden load change of 20 MW occurs (ΔPL = 0.93 per unit = Load change/rated power)<br>
Steady State Frequency Deviation = ΔF = Fn-Fi = -1.996 per unit<br>
Load Change in 50MW <br>
ΔPL = 20/21.5 = 0.93 per unit<br>
Normal Operating Load = 1000 MW

Why Artificial Neural Network: An artificial neural network (ANN) may be considered as a function approximator. The ANN architecture describes the way a neural network works to perform the required control action by approximating the unknown function. The parameters of the network must be adjusted so that the same output is obtained at both the unknown function output and the network output, provided that both systems experienced the same input. In this direction, any error in the system will be eliminated.
![image](https://user-images.githubusercontent.com/86974424/171814315-e359990a-dbd8-43ef-9d24-ad427eb4389a.png)

<b>Simulink Design For Thermal Power Plant
![image](https://user-images.githubusercontent.com/86974424/171811466-c2b55d13-d5bc-4f93-b3ec-0c682286d376.png)
<b>Simulink Design For Hydro Power Plant
![image](https://user-images.githubusercontent.com/86974424/171811527-065911b8-d95c-42bd-8843-1212ff88dadd.png)

Artificial Neural Network is trained with 3 layers of activation function logsigmoidal, tansigmoidal, purelin with 10,000 epochs
  
Neural Network Training is done:
![image](https://user-images.githubusercontent.com/86974424/171813539-d9a0b8e7-ba63-407c-97bc-116c6713a68a.png)
Performance of Model:
![image](https://user-images.githubusercontent.com/86974424/171813745-1f3f849c-7a70-4b2e-80fb-727dadd336d5.png

Result: PID VS ANN # It can be seen that ANN performs better than PID controller for Powerplant systems and AVR but the image here shown are for Powerplant and it is verified for AVR. 
  ![image](https://user-images.githubusercontent.com/86974424/171815969-c308d602-8a18-4e76-9fe2-5cd9d05bc394.png)
  
## Note: We have to generate artificial neural network first with simulation file of any electrical sytem and then train the model and place it in the simulation file for result, therefore the other simulation file has no neural network model 
