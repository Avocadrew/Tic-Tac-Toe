# Verilog Tic-Tac-Toe for FPGA

## Introduction:
 A Tic-Tac-Toe game written in Verilog for implementation in FPGA, incorporating MCTS searching methods for game AI position selection. Two modes are incorporated: One where the AI never loses and one where mistakes could be made and enabling player victory.
 
## Module Structure:
![Structure](https://user-images.githubusercontent.com/64970325/129384747-2f59cb0f-8191-48c4-b816-0ef898adacad.jpg)
 
## Requirements:
 Releases of .rbf and .pkg are based on the VeriInstrument SImulator by SMIMS for Altera Cyclone EP1C6Q240.  
 However the given code should be able to compile with Quartus II and be run on any selectable FPGA board.

## User Interface (In Simulator):
<p align="center">
  <img src="https://user-images.githubusercontent.com/64970325/129386087-a4a88729-e690-4c70-bad0-e5a4378bfed5.PNG" />
</p>

## Demo:
https://user-images.githubusercontent.com/64970325/129383930-2f5e2aa4-6352-4383-a69a-8a2d0d6aef00.mp4

## References:
[1] C. Browne, "UCT for PCG,"
2013 IEEE Conference on Computational Inteligence in Games (CIG) CIG), Niagara Falls, ON, 2013, pp. 1 8.

[2] J.
Togelius , G. N. Yannakakis , K. O. Stanley and C. Browne, "Search Based Procedural Content Generation: A Taxonomy and Survey," in IEEE
Transactions on Computational Intelligence and AI in Games , vol. 3, no. 3, pp. 172 186, Sept. 2011.

