
#carpetes donde se ejecutan los benchmarks
ammp="/home/milax/Escriptori/AC_PRAC1/ammp/data/ref"
applu="/home/milax/Escriptori/AC_PRAC1/applu/data/ref"
eon="/home/milax/Escriptori/AC_PRAC1/eon/data/ref"
equake="/home/milax/Escriptori/AC_PRAC1/equake/equake/data/ref"
vpr="/home/milax/Escriptori/AC_PRAC1/vpr/data/ref"
#
#resultados de la simulacion
resultat="/home/milax/Escriptori/Dades.out"
#limpiamos archivo de resultados anteriores
echo "Simulacion Intel" > "$resultat"
#
	#SIMULACION INTEL
#
#AMMP
cd "$ammp"

/home/milax/Escriptori/AC_PRAC1/simplesim-3.0_acx2/sim-outorder -fastfwd 100000000 -max:inst 100000000 -fetch:ifqsize 8 -decode:width 6 -issue:width 6 -commit:width 16 -ruu:size 512 -lsq:size 256 -mem:lat 75 1 -mem:width 8 -res:memport 5 -res:ialu 5 -res:imult 2 -res:fpalu 3 -res:fpmult 2 -cache:dl1 dl1:64:64:8:l -cache:il1 il1:64:64:8:l -cache:dl2 ul2:2048:64:8:l /home/milax/Escriptori/AC_PRAC1/ammp/exe/ammp.exe </home/milax/Escriptori/AC_PRAC1/ammp/data/ref/ammp.in 2> /home/milax/Escriptori/AC_PRAC1/ammp/data/ammp.out
#
echo "INTEL - AMMP:" >> "$resultat"
grep "sim_IPC" /home/milax/Escriptori/AC_PRAC1/ammp/data/ammp.out >> "$resultat"
#
#APPLU
cd "$applu"

/home/milax/Escriptori/AC_PRAC1/simplesim-3.0_acx2/sim-outorder -fastfwd 100000000 -max:inst 100000000 -fetch:ifqsize 8 -decode:width 6 -issue:width 6 -commit:width 16 -ruu:size 512 -lsq:size 256 -mem:lat 75 1 -mem:width 8 -res:memport 5 -res:ialu 5 -res:imult 2 -res:fpalu 3 -res:fpmult 2 -cache:dl1 dl1:64:64:8:l -cache:il1 il1:64:64:8:l -cache:dl2 ul2:2048:64:8:l  /home/milax/Escriptori/AC_PRAC1/applu/exe/applu.exe </home/milax/Escriptori/AC_PRAC1/applu/data/ref/applu.in 2>/home/milax/Escriptori/AC_PRAC1/applu/data/applu.out
#
echo "INTEL - APPLU:" >> "$resultat"
grep "sim_IPC" /home/milax/Escriptori/AC_PRAC1/applu/data/applu.out >> "$resultat"
#
#EON
cd "$eon"

/home/milax/Escriptori/AC_PRAC1/simplesim-3.0_acx2/sim-outorder -fastfwd 100000000 -max:inst 100000000 -fetch:ifqsize 8 -decode:width 6 -issue:width 6 -commit:width 16 -ruu:size 512 -lsq:size 256 -mem:lat 75 1 -mem:width 8 -res:memport 5 -res:ialu 5 -res:imult 2 -res:fpalu 3 -res:fpmult 2 -cache:dl1 dl1:64:64:8:l -cache:il1 il1:64:64:8:l -cache:dl2 ul2:2048:64:8:l  /home/milax/Escriptori/AC_PRAC1/eon/exe/eon.exe chair.control.cook chair.camera chair.surfaces chair.cook.ppm ppm pixels_out.cook > eon.err 2> eon.out
#
echo "INTEL - EON:" >> "$resultat"
grep "sim_IPC" eon.out >> "$resultat"
#
#EQUAKE
cd "$equake"

/home/milax/Escriptori/AC_PRAC1/simplesim-3.0_acx2/sim-outorder -fastfwd 100000000 -max:inst 100000000 -fetch:ifqsize 8 -decode:width 6 -issue:width 6 -commit:width 16 -ruu:size 512 -lsq:size 256 -mem:lat 75 1 -mem:width 8 -res:memport 5 -res:ialu 5 -res:imult 2 -res:fpalu 3 -res:fpmult 2 -cache:dl1 dl1:64:64:8:l -cache:il1 il1:64:64:8:l -cache:dl2 ul2:2048:64:8:l  /home/milax/Escriptori/AC_PRAC1/equake/equake/exe/equake.exe </home/milax/Escriptori/AC_PRAC1/equake/equake/data/ref/inp.in 2>/home/milax/Escriptori/AC_PRAC1/equake/equake/data/equake.out
#
echo "INTEL - EQUAKE:" >> "$resultat"
grep "sim_IPC" /home/milax/Escriptori/AC_PRAC1/equake/equake/data/equake.out >> "$resultat"
#
#VPR
cd "$vpr"

/home/milax/Escriptori/AC_PRAC1/simplesim-3.0_acx2/sim-outorder -fastfwd 100000000 -max:inst 100000000 -fetch:ifqsize 8 -decode:width 6 -issue:width 6 -commit:width 16 -ruu:size 512 -lsq:size 256 -mem:lat 75 1 -mem:width 8 -res:memport 5 -res:ialu 5 -res:imult 2 -res:fpalu 3 -res:fpmult 2 -cache:dl1 dl1:64:64:8:l -cache:il1 il1:64:64:8:l -cache:dl2 ul2:2048:64:8:l /home/milax/Escriptori/AC_PRAC1/vpr/exe/vpr.exe net.in arch.in place.out dum.out -nodisp -place_only -init_t 5 -exit_t 0.005 -alpha_t 0.9412 -inner_num 2 > /home/milax/Escriptori/AC_PRAC1/vpr/data/vpr.err 2> /home/milax/Escriptori/AC_PRAC1/vpr/data/vpr.out
#
echo "INTEL - VPR:" >> "$resultat"
grep "sim_IPC" /home/milax/Escriptori/AC_PRAC1/vpr/data/vpr.out >> "$resultat"
#
echo "Simulacion AMD" >> "$resultat"
#AMMP
cd $ammp
/home/milax/Escriptori/AC_PRAC1/simplesim-3.0_acx2/sim-outorder -fastfwd 100000000 -max:inst 100000000 -fetch:ifqsize 8 -decode:width 4 -issue:width 6 -commit:width 9 -ruu:size 256 -lsq:size 256 -mem:lat 100 1 -mem:width 8 -res:memport 3 -res:ialu 4 -res:imult 1 -res:fpalu 6 -res:fpmult 2 -cache:dl1 dl1:64:32:8:l -cache:il1 il1:64:32:8:l -cache:dl2 ul2:2048:1024:8:l /home/milax/Escriptori/AC_PRAC1/ammp/exe/ammp.exe </home/milax/Escriptori/AC_PRAC1/ammp/data/ref/ammp.in 2>/home/milax/Escriptori/AC_PRAC1/ammp/data/ammp2.out
#
echo "AMD - AMMP:" >> "$resultat"
grep "sim_IPC" /home/milax/Escriptori/AC_PRAC1/ammp/data/ammp2.out >> "$resultat"
#
#APPLU
cd "$applu"
/home/milax/Escriptori/AC_PRAC1/simplesim-3.0_acx2/sim-outorder -fastfwd 100000000 -max:inst 100000000 -fetch:ifqsize 8 -decode:width 4 -issue:width 6 -commit:width 9 -ruu:size 256 -lsq:size 256 -mem:lat 100 1 -mem:width 8 -res:memport 3 -res:ialu 4 -res:imult 1 -res:fpalu 6 -res:fpmult 2 -cache:dl1 dl1:64:32:8:l -cache:il1 il1:64:32:8:l -cache:dl2 ul2:2048:1024:8:l /home/milax/Escriptori/AC_PRAC1/applu/exe/applu.exe </home/milax/Escriptori/AC_PRAC1/applu/data/ref/applu.in 2>/home/milax/Escriptori/AC_PRAC1/applu/data/applu2.out
#
echo "AMD - APPLU:" >> "$resultat"
grep "sim_IPC" /home/milax/Escriptori/AC_PRAC1/applu/data/applu2.out >> "$resultat"
#
#EON
cd "$eon"
/home/milax/Escriptori/AC_PRAC1/simplesim-3.0_acx2/sim-outorder -fastfwd 100000000 -max:inst 100000000 -fetch:ifqsize 8 -decode:width 4 -issue:width 6 -commit:width 9 -ruu:size 256 -lsq:size 256 -mem:lat 100 1 -mem:width 8 -res:memport 3 -res:ialu 4 -res:imult 1 -res:fpalu 6 -res:fpmult 2 -cache:dl1 dl1:64:32:8:l -cache:il1 il1:64:32:8:l -cache:dl2 ul2:2048:1024:8:l /home/milax/Escriptori/AC_PRAC1/eon/exe/eon.exe chair.control.cook chair.camera chair.surfaces chair.cook.ppm ppm pixels_out.cook > eon.err 2> eon2.out
#
echo "AMD - EON:" >> "$resultat"
grep "sim_IPC" eon2.out >> "$resultat"
#
#EQUAKE
cd "$equake"
/home/milax/Escriptori/AC_PRAC1/simplesim-3.0_acx2/sim-outorder -fastfwd 100000000 -max:inst 100000000 -fetch:ifqsize 8 -decode:width 4 -issue:width 6 -commit:width 9 -ruu:size 256 -lsq:size 256 -mem:lat 100 1 -mem:width 8 -res:memport 3 -res:ialu 4 -res:imult 1 -res:fpalu 6 -res:fpmult 2 -cache:dl1 dl1:64:32:8:l -cache:il1 il1:64:32:8:l -cache:dl2 ul2:2048:1024:8:l /home/milax/Escriptori/AC_PRAC1/equake/equake/exe/equake.exe </home/milax/Escriptori/AC_PRAC1/equake/equake/data/ref/inp.in 2>/home/milax/Escriptori/AC_PRAC1/equake/equake/data/equake2.out
#
echo "AMD - EQUAKE:" >> "$resultat"
grep "sim_IPC" /home/milax/Escriptori/AC_PRAC1/equake/equake/data/equake2.out >> "$resultat"
#
#VPR
cd "$vpr"
/home/milax/Escriptori/AC_PRAC1/simplesim-3.0_acx2/sim-outorder -fastfwd 100000000 -max:inst 100000000 -fetch:ifqsize 8 -decode:width 4 -issue:width 6 -commit:width 9 -ruu:size 256 -lsq:size 256 -mem:lat 100 1 -mem:width 8 -res:memport 3 -res:ialu 4 -res:imult 1 -res:fpalu 6 -res:fpmult 2 -cache:dl1 dl1:64:32:8:l -cache:il1 il1:64:32:8:l -cache:dl2 ul2:2048:1024:8:l /home/milax/Escriptori/AC_PRAC1/vpr/exe/vpr.exe net.in arch.in place.out dum.out -nodisp -place_only -init_t 5 -exit_t 0.005 -alpha_t 0.9412 -inner_num 2 > /home/milax/Escriptori/AC_PRAC1/vpr/data/vpr.err 2> /home/milax/Escriptori/AC_PRAC1/vpr/data/vpr2.out
#
echo "AMD - VPR:" >> "$resultat"
grep "sim_IPC" /home/milax/Escriptori/AC_PRAC1/vpr/data/vpr2.out >> "$resultat"
#
