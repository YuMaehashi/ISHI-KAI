v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 420 -70 420 -40 {lab=GND}
N 320 -40 420 -40 {lab=GND}
N 320 -100 380 -100 {lab=vin}
N 420 -190 420 -130 {lab=vout}
N 420 -280 420 -250 {lab=GND}
N 420 -100 440 -100 {lab=GND}
N 440 -100 440 -40 {lab=GND}
N 420 -40 440 -40 {lab=GND}
N 520 -160 520 -130 {lab=vout}
N 420 -160 520 -160 {lab=vout}
N 520 -70 520 -40 {lab=GND}
N 440 -40 520 -40 {lab=GND}
C {IP62LIB/MN.sym} 380 -100 0 0 {name=XM1 model=NMOS w=10u l=2u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {devices/vsource.sym} 320 -70 0 0 {name=V1 value="1.19 ac 1 0" savecurrent=false}
C {devices/isource.sym} 420 -220 0 0 {name=I0 value=100u}
C {devices/gnd.sym} 360 -40 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 420 -280 2 0 {name=l2 lab=GND}
C {devices/code.sym} -150 -140 0 0 {name=TR10_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/../ip62_models"
spice_ignore=false}
C {devices/code_shown.sym} 40 -300 0 0 {name=s1 
only_toplevel=false 
value=".option savecurrents
.temp 27
.control
set units=degree
save all

op
show m

*dc V1 1 3 0.01
*plot v(vout)

ac dec 10 1 100meg
plot vdb(vout)
plot vp(vout)
.endc"
}
C {devices/lab_wire.sym} 360 -100 0 0 {name=p1 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 420 -160 0 0 {name=p2 sig_type=std_logic lab=vout}
C {devices/capa.sym} 520 -100 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
