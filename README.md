## Hybrid Manoeuvres: Interplanetary Trajectory from Earth to Mars

Code for NASA's General Mission Analysis Tool (GMAT)

Spacecraft: Human Mars Lander (HML)

Transfer method: Orbit Raising

## Design Requirements
• The HML shall undergo an interplanetary transfer from Earth to Mars.

• The HML shall arrive in the Martian orbit before MAVERIC does on the 19th of June 2040.

## Assumptions
• Earth and Mars are coplanar.

• The HML is equipped with both chemical and electrical propulsion systems.

## Mathematical Models, Implementation and Software

MATLAB was used to create this hybrid trajectory design. The HML would start in an
orbit around Earth, where it would propagate to the perigee and undertake its first impulsive burn
to escape the Earth’s sphere of influence. This chemical escape is defined by Equation 2, ∆𝑉1. 

![image](https://github.com/user-attachments/assets/007a0021-eafb-4010-9436-ad7c462e9d0c)

Figure 1. My report

## Script Results

![image](https://github.com/user-attachments/assets/d7875b80-d0b8-439f-b3e3-4d7b2766ed1a)


Figure 2. Script Results Combined Electrical and Chemical Transfer Solution
