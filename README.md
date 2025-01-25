# FPGA Implementation of I2C Protocol

## Overview
This project implements the I2C (Inter-Integrated Circuit) protocol using Verilog on the Microsemi SmartFusion2 M2S050 FPGA. The design was created and tested using the Libero SoC Design Suite. The I2C module was verified by interfacing it with a GMC counter, and the results were analyzed on a digital oscilloscope.

---

## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Hardware and Software Requirements](#hardware-and-software-requirements)
- [FPGA Connections](#fpga-connections)

---

## Introduction
The Inter-Integrated Circuit (I2C) is a synchronous, multi-master, multi-slave serial communication protocol commonly used for connecting peripherals in embedded systems. This project implements a fully functional I2C controller capable of interfacing with I2C-compliant devices.

---

## Features
- I2C master implementation in Verilog
- Configurable clock speed
- Verified with GMC counter


---

## Hardware and Software Requirements

### Hardware
- Microsemi SmartFusion2 M2S050 FPGA Development Board
- GMC Counter
- Digital Oscilloscope
- Jumper Wires

### Software
- Libero SoC Design Suite
- ModelSim for simulation (optional)

---

## FPGA Connections
The following table lists the pin connections for the I2C interface on the M2S050 FPGA:

| Signal      | FPGA Pin |
|-------------|----------|
| `sda`       | C3       |
| `scl`       | P18      |
| `ready`     | B1       |

---
