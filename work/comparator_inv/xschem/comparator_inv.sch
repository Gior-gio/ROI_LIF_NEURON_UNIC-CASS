v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 1410 -260 1410 -180 {}
P 4 5 1310 -300 1310 -260 1610 -260 1610 -300 1310 -300 {}
P 4 4 1310 -260 1310 -220 1610 -220 1610 -260 {}
P 4 4 1310 -220 1310 -180 1610 -180 1610 -220 {}
T {Current consumption [mA]} 1330 -290 0 0 0.4 0.4 {}
T {Imax} 1320 -210 0 0 0.4 0.4 {}
T {Imin} 1320 -250 0 0 0.4 0.4 {}
T {0.006753759} 1440 -250 0 0 0.4 0.4 {}
T {0.01374132} 1440 -210 0 0 0.4 0.4 {}
N 420 -540 490 -540 {lab=Vin}
N 700 -540 760 -540 {lab=#net1}
N 970 -540 1080 -540 {lab=Vout}
N 570 -470 570 -400 {lab=VSS}
N 570 -680 570 -610 {lab=VDD}
N 840 -680 840 -610 {lab=VDD}
N 840 -470 840 -400 {lab=VSS}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/gate_inv_L0d13/xschem/gate_inv_L0d13.sym} 350 -320 0 0 {name=x1}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/gate_inv_L0d13/xschem/gate_inv_L0d13.sym} 620 -320 0 0 {name=x2}
C {iopin.sym} 570 -680 1 1 {name=p5 lab=VDD}
C {iopin.sym} 570 -400 1 0 {name=p4 lab=VSS}
C {ipin.sym} 420 -540 0 0 {name=p2 lab=Vin
}
C {opin.sym} 1080 -540 0 0 {name=p1 lab=Vout
}
C {lab_pin.sym} 840 -680 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 840 -400 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {title.sym} 170 -40 0 0 {name=l5 author="Carlos Alvares -- Michel Salazar"}
