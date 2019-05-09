#####################################################################
#
# Innovus setup file
# Created by Genus(TM) Synthesis Solution on 05/03/2019 15:04:30
#
# This file can only be run in Innovus Common UI mode.
#
#####################################################################


# Design Import
###########################################################
## Reading FlowKit settings file
source layout/Router.flowkit_settings.tcl

source layout/Router.invs_init.tcl

# Reading metrics file
######################
read_metric -id current layout/Router.metrics.json 


## Reading common preserve file for dont_touch and dont_use preserve settings
source layout/Router.preserve.tcl



# Mode Setup
###########################################################
source layout/Router.mode

# Reading write_name_mapping file
#################################
if {[is_attribute -obj_type port original_name] && [is_attribute -obj_type pin original_name] && [is_attribute -obj_type pin is_phase_inverted]} {
  source layout/Router.wnm_attrs.tcl
}

eval_legacy { set edi_pe::pegConsiderMacroLayersUnblocked 1 }
eval_legacy { set edi_pe::pegPreRouteWireWidthBasedDensityCalModel 1 }
