v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 640 -580 640 -400 {}
L 4 640 -400 1020 -400 {}
L 4 1020 -580 1020 -400 {}
L 4 640 -580 1020 -580 {}
P 4 5 560 -640 1100 -640 1100 -40 560 -40 560 -640 {}
T {EXTERNAL RESISTORS} 710 -620 0 0 0.4 0.4 {}
T {NEURON 1
} 780 -680 0 0 0.4 0.4 {}
N 100 -120 100 -100 {lab=GND}
N 200 -120 200 -100 {lab=GND}
N 300 -120 300 -100 {lab=GND}
N 200 -410 200 -390 {lab=GND}
N 100 -410 100 -390 {lab=GND}
N 300 -240 300 -180 {lab=#net1}
N 100 -530 100 -470 {lab=#net2}
N 200 -240 200 -180 {lab=#net3}
N 100 -240 100 -180 {lab=#net4}
N 100 -320 100 -300 {lab=VDD}
N 200 -320 200 -300 {lab=VSS}
N 300 -320 300 -300 {lab=RST}
N 730 -500 790 -500 {lab=Vctr}
N 850 -500 910 -500 {lab=Vx}
N 920 -360 920 -320 {lab=VDD}
N 920 -120 920 -80 {lab=VSS}
N 750 -120 750 -80 {lab=Vref}
N 600 -260 640 -260 {lab=Vx}
N 600 -180 640 -180 {lab=RST}
N 1000 -260 1060 -260 {lab=MEM}
N 1000 -180 1060 -180 {lab=SPIKE}
N 100 -640 100 -590 {lab=Vref}
N 200 -640 200 -590 {lab=Vctr}
N 200 -530 200 -470 {lab=#net5}
N 480 -640 480 -560 {lab=SPIKE}
N 480 -500 480 -450 {lab=VSS}
C {code.sym} 392.5 -317.5 0 0 {name=CODE only_toplevel=false 
value="

.param VDD = CACE\{VDD\}
.param VSS = 0
.param vctr = 0.6
.param vref = 1.2
.param cap = 0.1p

.save all

.control

* >> Variables <<
let Vhigh = CACE\{VDD\}
let Vmid = Vhigh * 0.5

let tstop = 0.2u
let tstep = tstop/10k

* Run transient analysis
tran $&tstep $&tstop

let IDD = -1*i(VSP)
meas tran I_avg AVG IDD from=tstep to=tstop
let P_avg = abs(I_avg*Vhigh)

meas TRAN T_spk TRIG v(SPIKE) VAL=Vmid rise=3 TARG v(SPIKE) VAL=Vmid rise=4
let F_spk = 1 / T_spk
let E_spk = P_avg/F_spk*1e12

echo $&F_spk $&I_avg $&P_avg $&E_spk> CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data

.endc
"}
C {lab_wire.sym} 920 -360 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 300 -150 0 0 {name=VRESET value="pwl 0 CACE\{VDD\} 10n CACE\{VDD\} 20n 0"}
C {lab_wire.sym} 300 -320 0 1 {name=p12 sig_type=std_logic lab=RST}
C {gnd.sym} 300 -100 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 100 -150 0 0 {name=VSP value=CACE\{VDD\}}
C {devices/gnd.sym} 100 -100 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 100 -320 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 200 -150 0 0 {name=VSN value=\{VSS\}}
C {devices/gnd.sym} 200 -100 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 200 -320 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 200 -390 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 200 -640 0 0 {name=p8 sig_type=std_logic lab=Vctr}
C {devices/vsource.sym} 100 -440 0 0 {name=VR value=\{vref\}}
C {devices/gnd.sym} 100 -390 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 100 -640 0 0 {name=p10 sig_type=std_logic lab=Vref}
C {devices/vsource.sym} 200 -440 0 0 {name=VC value="pwl 0 \{vref\} 95n \{vref\} 105n \{vctr\}"}
C {res.sym} 200 -560 2 0 {name=R3
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 300 -270 2 0 {name=R4
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 100 -560 2 0 {name=R5
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 200 -270 2 0 {name=R6
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 100 -270 2 0 {name=R7
value=50
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 630 -180 0 0 {name=p37 sig_type=std_logic lab=RST}
C {lab_wire.sym} 1010 -180 0 1 {name=p47 sig_type=std_logic lab=SPIKE}
C {lab_wire.sym} 920 -80 2 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 750 -100 0 0 {name=p33 sig_type=std_logic lab=Vref}
C {lab_wire.sym} 630 -260 0 0 {name=p34 sig_type=std_logic lab=Vx}
C {res_ac.sym} 820 -500 3 0 {name=RIN1
value=100k
ac=1k
m=1}
C {lab_wire.sym} 740 -500 0 1 {name=p2 sig_type=std_logic lab=Vctr}
C {lab_wire.sym} 860 -500 0 1 {name=p3 sig_type=std_logic lab=Vx}
C {lab_wire.sym} 1010 -260 0 1 {name=p7 sig_type=std_logic lab=MEM}
C {capa.sym} 480 -530 0 0 {name=C1
m=1
value=\{cap\}
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 480 -450 3 0 {name=p49 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 480 -580 3 1 {name=p50 sig_type=std_logic lab=SPIKE}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/LIF_Neuron/xschem/LIF_neuron.sym} 510 10 0 0 {name=xLIF}
C {devices/code_shown.sym} 50 -960 0 0 {name=SETUP only_toplevel=true
format="tcleval( @value )"
value="
.lib CACE\{PDK_ROOT\}/CACE\{PDK\}/libs.tech/ngspice/models/cornerMOSlv.lib CACE\{corner_mos\}
.lib CACE\{PDK_ROOT\}/CACE\{PDK\}/libs.tech/ngspice/models/cornerRES.lib CACE\{corner_res\}
.include CACE\{DUT_path\}

.temp CACE\{temperature\}

* Statitical switches
.param mm_ok=CACE\{stat_sw\}
.param mc_ok=CACE\{stat_sw\}
.option SEED=CACE[CACE\{seed=12345\} + CACE\{iterations=0\}]

* Flag unsafe operating conditions (exceeds models' specified limits)
.option warn=1
"}
