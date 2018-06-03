############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_interface -mode axis -register -register_mode reverse "ecc" inData
set_directive_interface -mode axis -register -register_mode forward "ecc" outMean
set_directive_interface -mode axis -register -register_mode forward "ecc" outVar
set_directive_interface -mode ap_ctrl_hs "ecc"
set_directive_loop_tripcount -min 1 -max 9 -avg 9 "ecc/loop_while"
set_directive_array_partition -type cyclic -factor 21 -dim 1 "ecc" pixel
set_directive_pipeline "ecc/loop_rdata"
set_directive_pipeline "ecc/loop_strData"
set_directive_pipeline "ecc/loop_addData"
set_directive_pipeline "Cal_Variance/loop_variance"
set_directive_resource -core RAM_2P_BRAM "ecc" pixel
set_directive_unroll -factor 21 "ecc/loop_strData"
set_directive_unroll -factor 21 "Cal_Variance/loop_variance"
set_directive_unroll "ecc/loop_subData"
set_directive_loop_flatten -off "ecc/loop_while"
