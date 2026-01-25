v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 490 -210 490 -190 {lab=GND}
N 90 -210 90 -190 {lab=GND}
N 90 -310 90 -270 {lab=VDD}
N 170 -210 170 -190 {lab=GND}
N 170 -310 170 -270 {lab=VIN}
N 490 -390 490 -350 {lab=VDD}
N 340 -280 410 -280 {lab=VIN}
N 670 -280 700 -280 {lab=VOUT}
N 670 -300 670 -280 {lab=VOUT}
N 620 -280 670 -280 {lab=VOUT}
C {noconn.sym} 700 -280 2 0 {name=l1}
C {gnd.sym} 490 -190 0 0 {name=l2 lab=GND}
C {vsource.sym} 90 -240 0 0 {name=V1 value=\{VDD\} savecurrent=false}
C {gnd.sym} 90 -190 0 0 {name=l3 lab=GND}
C {vsource.sym} 170 -240 0 0 {name=V2 value="dc 0 ac 0 PULSE(0 \{VDD\} 0 1f 1f 5u 10u)" savecurrent=false}
C {gnd.sym} 170 -190 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 90 -310 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 490 -390 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 170 -310 0 0 {name=p3 sig_type=std_logic lab=VIN}
C {lab_wire.sym} 340 -280 0 0 {name=p4 sig_type=std_logic lab=VIN}
C {devices/code_shown.sym} 870 -220 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
C {code.sym} 860 -380 0 0 {name=s2
only_toplevel=false 
value="
.control
.param VDD=1.5
save all

*========================================
*   TRANSIENTE
*========================================
tran 1n 30u

*========================================
*   NIVELES PARA MEDICIONES
*========================================
let Vp    = 1.5
let per10 = Vp * 0.1
let per50 = Vp * 0.5
let per90 = Vp * 0.9

*========================================
*   MEDICIONES RISE / FALL / DELAY
*========================================
meas TRAN t_rise   TRIG v(vout) VAL=per10 rise=2  TARG v(vout) VAL=per90 rise=2
meas TRAN t_fall   TRIG v(vout) VAL=per90 fall=2  TARG v(vout) VAL=per10 fall=2
meas TRAN t_delay  TRIG v(vin)  VAL=per50 rise=1  TARG v(vout) VAL=per50 fall=1

*========================================
*   PERIODO Y FRECUENCIA DEL OSCILADOR
*========================================
meas TRAN T_period TRIG v(vout) VAL=per50 rise=2  TARG v(vout) VAL=per50 rise=3
let F_recu = 1/T_period

*========================================
*   RESULTADOS DEL TRANSIENTE
*========================================
plot vin vout
echo '=============== RESULTADOS ==============='
print t_rise
print t_fall
print t_delay
print T_period
print F_recu
print T_period/2

*========================================
*   ANÁLISIS DC PARA VTC
*========================================
dc v2 0 1.5 0.01

* Punto donde Vout = Vin → Voltaje de inversión
meas DC V_INV when v(vout) = v(vin)

print V_INV

*========================================
*   GRÁFICAS DEL BARRIDO DC
*========================================
plot v(vin) v(vout)
plot -deriv(v(vout))

.endc
"}
C {lab_wire.sym} 670 -300 0 0 {name=p5 sig_type=std_logic lab=VOUT}
C {title.sym} 170 -40 0 0 {name=l5 author="Juan pablo luengas -- Nicolas Velasco"}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/test/gate_inv_LOd13/xschem/gate_inv_LOd13.sym} 270 -60 0 0 {name=x1}
