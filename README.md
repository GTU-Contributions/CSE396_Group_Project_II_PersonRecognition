# CSE396 - Group Project II - Person Recognition
Gebze Technical University

Find the stickman on a A4 paper - Spring 2017

Instructor: Erkan Zergeroglu

Team members: 
- Ahmet Alperen BULUT
- Furkan ERDÖL
- Isa EŞ
- Hasan MEN
- Mehmed MUSTAFA
- Onur SEZER
- Recep SIVRI
- Helin YILDIRIM

Project's Demo Video: https://www.youtube.com/watch?v=VfTD-aIwbSU

## Description
The goal of this project is to create a mechanism which finds a randomly drawn stickman on a white A5 paper with the aid of a camera.
The camera is moving gradually over the paper according to the chosen movement algorithm and is taking shots at certain intervals. 
There are few movement algorithms supported. The movement path of the camera is showed on the user interface, as well as the most recently taken shot.
There is a possibility that the stickman may be divided in two or even in three parts and each part is in a different shot.
So each shot is analyzed separately and in combination with the previously taken shots with the help of an AI which is trained with supervised learning methods (SVMs). 
Once the stickman is found, the mechanism stops moving and the camera remains on top of the found stickman. 
The coordinates and the rotation angle of the stickman are reported in the message panel and a 
stickman is drawn on the user interface in the exactly same spot where it was found on the A5 paper with the same rotation angle.
The mechanism supports 2 modes: automatic and manual. In the manual mode the user can manually move the camera by using the keyboard.
The configuration settings of the system are set from the user interface.

However, in order to make the project even a bit harder there are few restrictions set by our dear instructor. :) 

They are as follows:
1. The camera cannot be motionless. We are supposed to hang it on a rope, so it shakes everytime the mechanism moves over the paper.
2. The camera is not allowed to take shots which cover more than 1/8th of the paper's surface area in a single shot.
3. The drawn stick man may have irregular form. For example it might have a single arm or leg. It might have a hand on its head or head a lot bigger than his body. In these cases the mechanism should pretend that there is not a stick man.

The created system resembles a 3D printer. 4 stepper motors are making the mechanism to move both on X and Y coordinates (2 motors for each).
Arduino Uno and Arduino CNC Shield are used to ensure the power supply and control of the stepper motors. 
The communication between the Arduino and the user interface is achieved with the RS-232 communication standard. 
