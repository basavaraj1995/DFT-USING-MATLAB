clc; close all; clear all;
N = input('Enter the the value of N for N-Point DTFT = ');
xn = input('Enter the sequence for which DFT to be calculated = ');
n=[0:1:7];
WN = exp(-j * n*2*pi*1/N) ;
Xk = xn * WN;

MagX=abs(Xk);
PhaseX=angle(Xk)*180/pi; 
subplot(2,1,1); 
stem(n,MagX); 
subplot(2,1,2); 
stem(n,PhaseX);