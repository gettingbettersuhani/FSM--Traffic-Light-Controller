# FSM--Traffic-Light-Controller

📌 Project Overview

This project implements a Traffic Light Controller using a Finite State Machine (FSM) in Verilog HDL.
The system controls traffic signals by transitioning through predefined states such as Red, Green, and Yellow, based on timing constraints.

It demonstrates how FSM-based design can be used to model real-world control systems in digital hardware.

⚙️ Features
FSM-based traffic signal control
States: Red → Green → Yellow
Configurable timing using counters
Predictable and structured sequential design
Fully verified through simulation


🧠 Design Approach
FSM Type
Implemented using a Moore FSM
Outputs depend only on the current state, ensuring stable behavior
State Transitions
Red → Green → Yellow → Red (cyclic operation)
Each state is active for a specific number of clock cycles
Timing Control
A counter is used to maintain delay for each state
Transition occurs when the counter reaches a threshold


💡 Technical Insight
FSM-based designs provide clear and scalable control logic
Moore FSM ensures glitch-free outputs compared to Mealy FSM
Proper state encoding improves readability and synthesis efficiency
🧪 Verification
Designed a testbench to simulate all state transitions
Verified correct sequencing and timing using waveform analysis
Ensured stable outputs across all states
🛠 Tools Used
Verilog HDL
Xilinx Vivado (Simulation & Synthesis)
