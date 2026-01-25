v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 540 -460 {}
N 690 -360 690 -330 {lab=VDD}
N 690 -180 690 -140 {lab=VSS}
N 550 -270 590 -270 {lab=Vcrt}
N 550 -250 590 -250 {lab=RST}
N 550 -230 590 -230 {lab=Vref}
N 800 -250 830 -250 {lab=VOUT}
N 30 -220 30 -200 {lab=GND}
N 30 -320 30 -280 {lab=VDD}
N 110 -220 110 -200 {lab=GND}
N 110 -320 110 -280 {lab=VSS}
N 190 -220 190 -200 {lab=GND}
N 190 -320 190 -280 {lab=Vcrt}
N 290 -220 290 -200 {lab=GND}
N 290 -320 290 -280 {lab=Vref}
N 410 -220 410 -200 {lab=GND}
N 410 -320 410 -280 {lab=RST}
C {title.sym} 160 -40 0 0 {name=l5 author="Juan pablo luengas -- Nicolas Velasco"}
C {lab_wire.sym} 690 -140 2 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 690 -360 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 830 -250 2 0 {name=p4 sig_type=std_logic lab=VOUT}
C {lab_wire.sym} 560 -270 0 0 {name=p10 sig_type=std_logic lab=Vcrt}
C {lab_wire.sym} 560 -250 0 0 {name=p11 sig_type=std_logic lab=RST}
C {lab_wire.sym} 560 -230 0 0 {name=p12 sig_type=std_logic lab=Vref}
C {vsource.sym} 30 -250 0 0 {name=V1 value=\{VDD\} savecurrent=false}
C {gnd.sym} 30 -200 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 30 -320 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {vsource.sym} 110 -250 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} 110 -200 0 0 {name=l1 lab=GND
value=0}
C {lab_wire.sym} 110 -320 0 0 {name=p5 sig_type=std_logic lab=VSS
value=0}
C {vsource.sym} 190 -250 0 0 {name=V3 value=\{Vcrt\} savecurrent=false}
C {gnd.sym} 190 -200 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 190 -320 0 0 {name=p6 sig_type=std_logic lab=Vcrt}
C {code.sym} 992.5 -400 0 0 {name=barridos1 only_toplevel=TRUE 
value="

.param Vcrt =0.65
.param Vref = 0.7
.param VDD=1.2
.save all
.control
TRAN  1n 100n
plot vout

.endc
"}
C {devices/code_shown.sym} 995 -212.5 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ_stat
"}
C {vsource.sym} 290 -250 0 0 {name=V4 value=\{Vref\} savecurrent=false}
C {gnd.sym} 290 -200 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 290 -320 0 0 {name=p77 sig_type=std_logic lab=Vref}
C {vsource.sym} 410 -250 0 0 {name=V5 value=0 savecurrent=false}
C {gnd.sym} 410 -200 0 0 {name=l6 lab=GND}
C {lab_wire.sym} 410 -320 0 0 {name=p95 sig_type=std_logic lab=RST}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/integrator/xschem/integrator.sym} 530 -90 0 0 {name=x1}
