v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 750 -440 750 -390 {lab=B}
N 680 -360 710 -360 {lab=A}
N 680 -440 680 -360 {lab=A}
N 640 -440 680 -440 {lab=A}
N 680 -530 680 -440 {lab=A}
N 750 -440 800 -440 {lab=B}
N 750 -500 750 -440 {lab=B}
N 680 -530 710 -530 {lab=A}
N 750 -530 790 -530 {lab=VDD}
N 750 -630 790 -630 {lab=VDD}
N 750 -600 750 -560 {lab=#net1}
N 750 -220 750 -180 {lab=VSS}
N 750 -330 750 -280 {lab=#net2}
N 750 -360 800 -360 {lab=VSS}
N 650 -250 710 -250 {lab=VcrtN}
N 650 -630 710 -630 {lab=VcrtP}
N 750 -720 750 -660 {lab=VDD}
N 750 -250 810 -250 {lab=VSS}
C {ipin.sym} 750 -720 1 0 {name=p1 lab=VDD}
C {ipin.sym} 750 -180 3 0 {name=p2 lab=VSS}
C {ipin.sym} 640 -440 0 0 {name=p3 lab=A
}
C {opin.sym} 800 -440 0 0 {name=p4 lab=B}
C {ipin.sym} 650 -630 0 0 {name=p5 lab=VcrtP
}
C {ipin.sym} 650 -250 0 0 {name=p6 lab=VcrtN
}
C {lab_wire.sym} 790 -630 2 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 790 -530 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 800 -360 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 810 -250 2 0 {name=p10 sig_type=std_logic lab=VSS}
C {title.sym} 160 -30 0 0 {name=l1 author="Juan pablo luengas -- Nicolas Velasco"}
C {sg13g2_pr/sg13_lv_nmos.sym} 730 -360 0 0 {name=M1
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 730 -250 0 0 {name=M2
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 730 -530 2 1 {name=M3
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 730 -630 2 1 {name=M4
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
