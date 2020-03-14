# VHDL Examples using Basys3 and Vivado 2019
![Board](https://img.shields.io/badge/Board-Basys3-%234285F4?style=flat-square)
![Vivado Version](https://img.shields.io/badge/Vivado-2019-brightgreen?style=flat-square)
[![license](https://img.shields.io/badge/license-MIT-%23F65314?style=flat-square)](LICENSE)

This repository aims to help beginners and will be used as a reference in the future.

## Examples
- **Example 1:**<br>
*Turn on the LEDs with corresponding switches.*

- **Example 2:**<br>
*Control all the LEDs with a switch and pushbutton using the process keyword and an XOR logic gate. The process statement has a sensitivity list, in this case the inputs coming from a switch and pushbutton. The changes in these inputs trigger the process and it executes the code inside of it.*

- **Example 3:**<br>
*Convert binary to decimal and display it on the 7 segment display. Use the leftmost 4 switches to control the anodes and use the rightmost ones to enter binary input.*

- **Example 4:**<br>
*A knight rider implementation using the built-in LEDs with a clock divider.*

- **Example 5:**<br>
*Convert BCD (Binary Coded Decimal) input into decimal output and display it on the seven segment display using four anodes. In this example, each four consequtive switch on the Basys3 represents a 4-bit BCD input. This is a behavioral code consisting of a counter and a selection signal changing depending on the counter. Two multiplexers are used, one for selecting the anode, and the other for selecting four switches as BCD input.*

## Getting Started

Before programming Basys3, you need to open the project file *(the one with the **xpr** extension)*, run the synthesis, then run the implementation and lastly generate the bitstream. After these steps, Basys3 will be ready to be programmed using the bit file.
