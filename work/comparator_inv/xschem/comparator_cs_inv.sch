v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 300 -320 300 -260 {lab=VSS}
N 300 -500 300 -440 {lab=VDD}
N 160 -400 220 -400 {lab=VSS}
N 160 -380 220 -380 {lab=Vin}
N 160 -360 220 -360 {lab=VcrtN}
N 590 -320 590 -260 {lab=VSS}
N 590 -500 590 -440 {lab=VDD}
N 690 -380 770 -380 {lab=Vout}
N 450 -400 510 -400 {lab=VSS}
N 450 -360 510 -360 {lab=VcrtN}
N 400 -380 510 -380 {lab=#net1}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/gate_cs_inv/xschem/cs_inv.sym} -120 -60 0 0 {name=x1}
C {lab_wire.sym} 160 -400 0 0 {name=p7 sig_type=std_logic lab=VSS
value=0}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/gate_cs_inv/xschem/cs_inv.sym} 170 -60 0 0 {name=x2}
C {lab_wire.sym} 590 -260 2 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 590 -500 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 450 -360 0 0 {name=p20 sig_type=std_logic lab=VcrtN
}
C {lab_wire.sym} 450 -400 0 0 {name=p21 sig_type=std_logic lab=VSS
value=0}
C {opin.sym} 770 -380 0 0 {name=p1 lab=Vout
}
C {iopin.sym} 300 -260 1 0 {name=p4 lab=VSS}
C {iopin.sym} 300 -500 1 1 {name=p5 lab=VDD}
C {ipin.sym} 160 -380 0 0 {name=p2 lab=Vin
}
C {ipin.sym} 160 -360 0 0 {name=p3 lab=VcrtN
}
