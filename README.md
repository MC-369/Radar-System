# Radar-System
🎯 Ultrasonic Radar Detection System using Arduino + Processing

I have created a project that replicates a radar scanning system using hand-on hardware + real-time visualization! This setup combines Arduino Uno, ultrasonic sensing, a servo motor, and a custom-built radar interface using Processing.

🛠️ What it Does
A servo motor sweeps from 0° to 180° and back, moving an HC-SR04 ultrasonic distance sensor.

At each step, the sensor measures the distance to nearby objects.

The angle and distance are sent via Serial to the computer.

A Processing sketch reads this data and visualizes it in real-time — showing a moving sweep line and detection dot, just like a radar screen!

🧩 Components Used
🟢 Arduino Uno

📏 HC-SR04 Ultrasonic Distance Sensor
(for detecting objects by calculating echo return time)

⚙️ SG90 Micro Servo Motor
(to rotate the sensor across angles)

🖥️ Processing (Java-based IDE)
(for real-time radar animation)

🧵 Jumper wires, breadboard

🔌 Powered via USB

🧠 Software Overview
🧾 Arduino Code:

Controls servo sweep across 0–180°

Measures distance using the ultrasonic sensor

Sends angle,distance values to the computer via Serial.print

🖼️ Processing Code:

Reads serial input in real-time (angle,distance)

Draws radar rings, a rotating sweep line, and a moving detection dot

Provides a visual simulation of object positioning

🔍 Applications
Obstacle detection and mapping

Proximity-based robotics

DIY security systems

Educational demos on ultrasonic sensing and data visualization
