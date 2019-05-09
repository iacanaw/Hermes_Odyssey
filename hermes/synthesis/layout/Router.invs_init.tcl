#####################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 05/03/2019 15:04:30
#
#####################################################################


read_mmmc layout/Router.mmmc.tcl

read_physical -lef {/soft64/design-kits/stm/65nm-cmos065_536/EncounterTechnoKit_cmos065_7m4x0y2z_AP@5.3.1/TECH/cmos065_7m4x0y2z_AP_Worst.lef /soft64/design-kits/stm/65nm-cmos065_536/PRHS65_7.0.a/CADENCE/LEF/PRHS65_soc.lef /soft64/design-kits/stm/65nm-cmos065_536/CORE65GPSVT_5.1/CADENCE/LEF/CORE65GPSVT_soc.lef /soft64/design-kits/stm/65nm-cmos065_536/CLOCK65GPSVT_3.1/CADENCE/LEF/CLOCK65GPSVT_soc.lef /soft64/design-kits/stm/65nm-cmos065_536/IO65LPHVT_SF_1V8_50A_7M4X0Y2Z_7.0/CADENCE/LEF/IO65LPHVT_SF_1V8_50A_7M4X0Y2Z_soc.lef /soft64/design-kits/stm/65nm-cmos065_536/IO65LPHVT_CORESUPPLY_50A_7M4X0Y2Z@7.0.c.UD5357/CADENCE/LEF/IO65LPHVT_CORESUPPLY_50A_7M4X0Y2Z_gaph.lef /soft64/design-kits/stm/65nm-cmos065_536/IO65LP_SF_BASIC_50A_ST_7M4X0Y2Z_7.2/CADENCE/LEF/IO65LP_SF_BASIC_50A_ST_7M4X0Y2Z_soc.lef}

read_netlist layout/Router.v

init_design
