@echo off
REM ****************************************************************************
REM Vivado (TM) v2018.1 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Sat Oct 06 21:45:54 +0330 2018
REM SW Build 2188600 on Wed Apr  4 18:40:38 MDT 2018
REM
REM Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
call xelab  -wto c5fa44d5fb1046d0b321c20e8140b53c --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_top_behav xil_defaultlib.tb_top -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
