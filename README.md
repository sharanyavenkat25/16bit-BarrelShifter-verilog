# 16bit-BarrelShifter-verilog

Implementing a 16-bit Barrel shifter using verilog as the hardware description language.
This project was completed as a part of Digital Design and Computer Organization course at PES University.
The aim was to implement a 16-bit Barrel shifter along with the following operaions 
* Barrel shift left 
* Barrel shift right 
* And
* Or
* Addition
* Subtraction
* SLT operation

### Prerequisites

you will need iverilog installed in your system

```
sudo apt install iverilog
```
to visualise the waveform, you will need gtkwave
```
sudo apt install gtkwave
```

## Design and Simulation
commands to simulate the vcd file for visualisation.
```
iverilog -o tb_barrel lib.v barrel16.v barrel16_tb.v
vvp tb_barrel
```

followed by waveform observation with the command:
```
gtkwave tb_barrel.vcd
```





