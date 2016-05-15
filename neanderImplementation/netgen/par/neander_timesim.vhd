--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: neander_timesim.vhd
-- /___/   /\     Timestamp: Sun May 15 14:37:41 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf neander.pcf -rpw 100 -tpw 0 -ar Structure -tm neander -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim neander.ncd neander_timesim.vhd 
-- Device	: 3s100ecp132-4 (PRODUCTION 1.27 2013-10-13)
-- Input file	: neander.ncd
-- Output file	: C:\Users\franc\Documents\neander\neanderImplementation\netgen\par\neander_timesim.vhd
-- # of Entities	: 1
-- Design Name	: neander
-- Xilinx	: D:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity neander is
  port (
    clk : in STD_LOGIC := 'X'; 
    debug_out : out STD_LOGIC; 
    rst : in STD_LOGIC := 'X'; 
    enable : in STD_LOGIC := 'X' 
  );
end neander;

architecture Structure of neander is
  signal clk_BUFGP : STD_LOGIC; 
  signal rst_IBUF_1438 : STD_LOGIC; 
  signal exec_HLT : STD_LOGIC; 
  signal CU_N9_0 : STD_LOGIC; 
  signal CU_next_state_mux0012_0_8_0 : STD_LOGIC; 
  signal exec_STA : STD_LOGIC; 
  signal CU_N7 : STD_LOGIC; 
  signal CU_loadRDM_1452 : STD_LOGIC; 
  signal CU_sel_mux_RDM_1453 : STD_LOGIC; 
  signal CU_loadRDM_mux00004_0 : STD_LOGIC; 
  signal CU_loadRDM_mux000015_0 : STD_LOGIC; 
  signal CU_sel_ula_and0000_0 : STD_LOGIC; 
  signal exec_NOP_0 : STD_LOGIC; 
  signal NZ_data_N_1484 : STD_LOGIC; 
  signal CU_current_state_not0001_inv_0 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal CU_N18_0 : STD_LOGIC; 
  signal NZ_data_Z_1506 : STD_LOGIC; 
  signal N30_0 : STD_LOGIC; 
  signal alu_MULTIPLICATION_cmp_eq0000_0 : STD_LOGIC; 
  signal CU_stop_s_1511 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal CU_loadRI_1515 : STD_LOGIC; 
  signal alu_Z_cmp_eq00007_0 : STD_LOGIC; 
  signal enable_IBUF_1520 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal CU_next_state_mux0012_12_13_0 : STD_LOGIC; 
  signal CU_state_timer_not0001_inv : STD_LOGIC; 
  signal CU_loadPC_1524 : STD_LOGIC; 
  signal CU_PC_inc_1525 : STD_LOGIC; 
  signal PC_data_not0001_0 : STD_LOGIC; 
  signal CU_next_state_mux0012_13_14_0 : STD_LOGIC; 
  signal alu_Madd_result_addsub0000_cy_1_Q : STD_LOGIC; 
  signal alu_Madd_result_addsub0000_cy_3_Q : STD_LOGIC; 
  signal CU_Mcount_state_timer_cy_1_Q : STD_LOGIC; 
  signal CU_Mcount_state_timer_cy_3_Q : STD_LOGIC; 
  signal CU_Mcount_state_timer_cy_5_Q : STD_LOGIC; 
  signal CU_Mcount_state_timer_cy_7_Q : STD_LOGIC; 
  signal CU_Mcount_state_timer_cy_9_Q : STD_LOGIC; 
  signal CU_Mcount_state_timer_cy_11_Q : STD_LOGIC; 
  signal CU_Mcount_state_timer_cy_13_Q : STD_LOGIC; 
  signal CU_Mcount_state_timer_cy_15_Q : STD_LOGIC; 
  signal CU_Mcount_state_timer_cy_17_Q : STD_LOGIC; 
  signal CU_Mcount_state_timer_cy_19_Q : STD_LOGIC; 
  signal CU_Mcount_state_timer_cy_21_Q : STD_LOGIC; 
  signal CU_Mcount_state_timer_cy_23_Q : STD_LOGIC; 
  signal CU_Mcount_state_timer_cy_25_Q : STD_LOGIC; 
  signal CU_Mcount_state_timer_cy_27_Q : STD_LOGIC; 
  signal PC_Mcount_data_cy_1_Q : STD_LOGIC; 
  signal PC_Mcount_data_cy_3_Q : STD_LOGIC; 
  signal CU_loadAC_1652 : STD_LOGIC; 
  signal alu_Mmux_result_3_f5 : STD_LOGIC; 
  signal alu_Mmux_result_4_f5 : STD_LOGIC; 
  signal alu_Mmux_result_3_f51 : STD_LOGIC; 
  signal alu_Mmux_result_4_f51 : STD_LOGIC; 
  signal alu_Mmux_result_3_f52 : STD_LOGIC; 
  signal alu_Mmux_result_4_f52 : STD_LOGIC; 
  signal alu_Mmux_result_3_f53 : STD_LOGIC; 
  signal alu_Mmux_result_4_f53 : STD_LOGIC; 
  signal alu_Mmux_result_3_f54 : STD_LOGIC; 
  signal alu_Mmux_result_4_f54 : STD_LOGIC; 
  signal alu_Mmux_result_3_f55 : STD_LOGIC; 
  signal alu_Mmux_result_4_f55 : STD_LOGIC; 
  signal alu_Mmux_result_3_f56 : STD_LOGIC; 
  signal alu_Mmux_result_4_f56 : STD_LOGIC; 
  signal alu_Mmux_result_3_f57 : STD_LOGIC; 
  signal alu_Mmux_result_4_f57 : STD_LOGIC; 
  signal ULA_N : STD_LOGIC; 
  signal CU_N10 : STD_LOGIC; 
  signal CU_loadREM_1685 : STD_LOGIC; 
  signal CU_next_state_mux0012_13_38 : STD_LOGIC; 
  signal exec_NOT : STD_LOGIC; 
  signal exec_JN : STD_LOGIC; 
  signal exec_JZ : STD_LOGIC; 
  signal CU_next_state_mux0012_4_11_0 : STD_LOGIC; 
  signal alu_Z_cmp_eq000028_SW0_O : STD_LOGIC; 
  signal CU_next_state_or0001 : STD_LOGIC; 
  signal N14_0 : STD_LOGIC; 
  signal CU_next_state_mux0012_12_22_O : STD_LOGIC; 
  signal CU_next_state_mux0012_7_11_0 : STD_LOGIC; 
  signal CU_next_state_mux0012_4_23_0 : STD_LOGIC; 
  signal CU_next_state_mux0012_13_56_O : STD_LOGIC; 
  signal CU_sel_1698 : STD_LOGIC; 
  signal CU_next_state_11_DXMUX_1734 : STD_LOGIC; 
  signal CU_next_state_11_DYMUX_1720 : STD_LOGIC; 
  signal CU_next_state_11_SRINV_1711 : STD_LOGIC; 
  signal CU_next_state_11_CLKINV_1710 : STD_LOGIC; 
  signal CU_next_state_13_DXMUX_1776 : STD_LOGIC; 
  signal CU_next_state_13_DYMUX_1762 : STD_LOGIC; 
  signal CU_next_state_13_SRINV_1754 : STD_LOGIC; 
  signal CU_next_state_13_CLKINV_1753 : STD_LOGIC; 
  signal R_D_M_reg_1_DXMUX_1821 : STD_LOGIC; 
  signal R_D_M_reg_1_DYMUX_1805 : STD_LOGIC; 
  signal R_D_M_reg_1_SRINV_1796 : STD_LOGIC; 
  signal R_D_M_reg_1_CLKINV_1795 : STD_LOGIC; 
  signal R_D_M_reg_1_CEINV_1794 : STD_LOGIC; 
  signal CU_loadRDM_DYMUX_1845 : STD_LOGIC; 
  signal CU_loadRDM_mux0000 : STD_LOGIC; 
  signal CU_loadRDM_CLKINV_1834 : STD_LOGIC; 
  signal R_D_M_reg_3_DXMUX_1890 : STD_LOGIC; 
  signal R_D_M_reg_3_DYMUX_1874 : STD_LOGIC; 
  signal R_D_M_reg_3_SRINV_1865 : STD_LOGIC; 
  signal R_D_M_reg_3_CLKINV_1864 : STD_LOGIC; 
  signal R_D_M_reg_3_CEINV_1863 : STD_LOGIC; 
  signal CU_sel_ula_1_DXMUX_1931 : STD_LOGIC; 
  signal CU_sel_ula_1_DYMUX_1919 : STD_LOGIC; 
  signal CU_sel_ula_1_CLKINV_1911 : STD_LOGIC; 
  signal CU_sel_ula_1_CEINV_1910 : STD_LOGIC; 
  signal R_D_M_reg_5_DXMUX_1974 : STD_LOGIC; 
  signal R_D_M_reg_5_DYMUX_1958 : STD_LOGIC; 
  signal R_D_M_reg_5_SRINV_1949 : STD_LOGIC; 
  signal R_D_M_reg_5_CLKINV_1948 : STD_LOGIC; 
  signal R_D_M_reg_5_CEINV_1947 : STD_LOGIC; 
  signal exec_NOP : STD_LOGIC; 
  signal CU_sel_ula_2_DYMUX_2003 : STD_LOGIC; 
  signal CU_sel_ula_2_CLKINV_1995 : STD_LOGIC; 
  signal CU_sel_ula_2_CEINV_1994 : STD_LOGIC; 
  signal R_D_M_reg_7_DXMUX_2053 : STD_LOGIC; 
  signal R_D_M_reg_7_DYMUX_2037 : STD_LOGIC; 
  signal R_D_M_reg_7_SRINV_2028 : STD_LOGIC; 
  signal R_D_M_reg_7_CLKINV_2027 : STD_LOGIC; 
  signal R_D_M_reg_7_CEINV_2026 : STD_LOGIC; 
  signal CU_current_state_3_DXMUX_2076 : STD_LOGIC; 
  signal CU_current_state_3_DYMUX_2070 : STD_LOGIC; 
  signal CU_current_state_3_CLKINV_2068 : STD_LOGIC; 
  signal CU_current_state_3_CEINV_2067 : STD_LOGIC; 
  signal CU_next_state_7_DXMUX_2109 : STD_LOGIC; 
  signal N32_pack_2 : STD_LOGIC; 
  signal CU_next_state_7_CLKINV_2093 : STD_LOGIC; 
  signal CU_next_state_7_FFX_RSTAND_2114 : STD_LOGIC; 
  signal CU_current_state_5_DXMUX_2131 : STD_LOGIC; 
  signal CU_current_state_5_DYMUX_2125 : STD_LOGIC; 
  signal CU_current_state_5_CLKINV_2123 : STD_LOGIC; 
  signal CU_current_state_5_CEINV_2122 : STD_LOGIC; 
  signal CU_current_state_7_DXMUX_2151 : STD_LOGIC; 
  signal CU_current_state_7_DYMUX_2145 : STD_LOGIC; 
  signal CU_current_state_7_CLKINV_2143 : STD_LOGIC; 
  signal CU_current_state_7_CEINV_2142 : STD_LOGIC; 
  signal CU_current_state_9_DXMUX_2171 : STD_LOGIC; 
  signal CU_current_state_9_DYMUX_2165 : STD_LOGIC; 
  signal CU_current_state_9_CLKINV_2163 : STD_LOGIC; 
  signal CU_current_state_9_CEINV_2162 : STD_LOGIC; 
  signal CU_N18 : STD_LOGIC; 
  signal CU_loadRDM_mux00004_2190 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal alu_MULTIPLICATION_cmp_eq0000 : STD_LOGIC; 
  signal CU_stop_s_DYMUX_2233 : STD_LOGIC; 
  signal CU_stop_s_BYINV_2232 : STD_LOGIC; 
  signal CU_stop_s_CLKINV_2230 : STD_LOGIC; 
  signal CU_stop_s_CEINV_2229 : STD_LOGIC; 
  signal CU_loadRI_DXMUX_2269 : STD_LOGIC; 
  signal CU_loadRI_mux0000_2266 : STD_LOGIC; 
  signal N10_pack_2 : STD_LOGIC; 
  signal CU_loadRI_CLKINV_2253 : STD_LOGIC; 
  signal CU_current_state_11_DXMUX_2291 : STD_LOGIC; 
  signal CU_current_state_11_DYMUX_2285 : STD_LOGIC; 
  signal CU_current_state_11_CLKINV_2283 : STD_LOGIC; 
  signal CU_current_state_11_CEINV_2282 : STD_LOGIC; 
  signal CU_current_state_13_DXMUX_2311 : STD_LOGIC; 
  signal CU_current_state_13_DYMUX_2305 : STD_LOGIC; 
  signal CU_current_state_13_CLKINV_2303 : STD_LOGIC; 
  signal CU_current_state_13_CEINV_2302 : STD_LOGIC; 
  signal alu_Z_cmp_eq00007_2325 : STD_LOGIC; 
  signal CU_next_state_mux0012_12_13_2349 : STD_LOGIC; 
  signal N24_pack_1 : STD_LOGIC; 
  signal RI_reg_5_DXMUX_2372 : STD_LOGIC; 
  signal RI_reg_5_DYMUX_2363 : STD_LOGIC; 
  signal RI_reg_5_SRINV_2361 : STD_LOGIC; 
  signal RI_reg_5_CLKINV_2360 : STD_LOGIC; 
  signal RI_reg_5_CEINV_2359 : STD_LOGIC; 
  signal RI_reg_7_DXMUX_2400 : STD_LOGIC; 
  signal RI_reg_7_DYMUX_2391 : STD_LOGIC; 
  signal RI_reg_7_SRINV_2389 : STD_LOGIC; 
  signal RI_reg_7_CLKINV_2388 : STD_LOGIC; 
  signal RI_reg_7_CEINV_2387 : STD_LOGIC; 
  signal CU_current_state_not0001_inv : STD_LOGIC; 
  signal CU_loadPC_DXMUX_2448 : STD_LOGIC; 
  signal CU_loadPC_mux0000 : STD_LOGIC; 
  signal PC_data_not0001 : STD_LOGIC; 
  signal CU_loadPC_CLKINV_2429 : STD_LOGIC; 
  signal CU_wr_enable_mem_0_DXMUX_2483 : STD_LOGIC; 
  signal CU_wr_enable_mem_0_mux0000 : STD_LOGIC; 
  signal CU_next_state_mux0012_13_14_2472 : STD_LOGIC; 
  signal CU_wr_enable_mem_0_CLKINV_2465 : STD_LOGIC; 
  signal alu_MULTIPLICATION_1_DXMUX_2502 : STD_LOGIC; 
  signal alu_MULTIPLICATION_1_DYMUX_2497 : STD_LOGIC; 
  signal alu_MULTIPLICATION_1_CLKINVNOT : STD_LOGIC; 
  signal alu_MULTIPLICATION_3_DXMUX_2518 : STD_LOGIC; 
  signal alu_MULTIPLICATION_3_DYMUX_2513 : STD_LOGIC; 
  signal alu_MULTIPLICATION_3_CLKINVNOT : STD_LOGIC; 
  signal alu_MULTIPLICATION_5_DXMUX_2534 : STD_LOGIC; 
  signal alu_MULTIPLICATION_5_DYMUX_2529 : STD_LOGIC; 
  signal alu_MULTIPLICATION_5_CLKINVNOT : STD_LOGIC; 
  signal alu_MULTIPLICATION_7_DXMUX_2550 : STD_LOGIC; 
  signal alu_MULTIPLICATION_7_DYMUX_2545 : STD_LOGIC; 
  signal alu_MULTIPLICATION_7_CLKINVNOT : STD_LOGIC; 
  signal CU_current_state_1_DXMUX_2569 : STD_LOGIC; 
  signal CU_current_state_1_DYMUX_2563 : STD_LOGIC; 
  signal CU_current_state_1_CLKINV_2561 : STD_LOGIC; 
  signal CU_current_state_1_CEINV_2560 : STD_LOGIC; 
  signal alu_result_addsub0000_0_XORF_2608 : STD_LOGIC; 
  signal alu_result_addsub0000_0_CYINIT_2607 : STD_LOGIC; 
  signal alu_result_addsub0000_0_CY0F_2606 : STD_LOGIC; 
  signal alu_result_addsub0000_0_CYSELF_2598 : STD_LOGIC; 
  signal alu_result_addsub0000_0_BXINV_2596 : STD_LOGIC; 
  signal alu_result_addsub0000_0_XORG_2594 : STD_LOGIC; 
  signal alu_result_addsub0000_0_CYMUXG_2593 : STD_LOGIC; 
  signal alu_Madd_result_addsub0000_cy_0_Q : STD_LOGIC; 
  signal alu_result_addsub0000_0_CY0G_2591 : STD_LOGIC; 
  signal alu_result_addsub0000_0_CYSELG_2583 : STD_LOGIC; 
  signal alu_result_addsub0000_2_XORF_2647 : STD_LOGIC; 
  signal alu_result_addsub0000_2_CYINIT_2646 : STD_LOGIC; 
  signal alu_result_addsub0000_2_CY0F_2645 : STD_LOGIC; 
  signal alu_result_addsub0000_2_XORG_2635 : STD_LOGIC; 
  signal alu_Madd_result_addsub0000_cy_2_Q : STD_LOGIC; 
  signal alu_result_addsub0000_2_CYSELF_2633 : STD_LOGIC; 
  signal alu_result_addsub0000_2_CYMUXFAST_2632 : STD_LOGIC; 
  signal alu_result_addsub0000_2_CYAND_2631 : STD_LOGIC; 
  signal alu_result_addsub0000_2_FASTCARRY_2630 : STD_LOGIC; 
  signal alu_result_addsub0000_2_CYMUXG2_2629 : STD_LOGIC; 
  signal alu_result_addsub0000_2_CYMUXF2_2628 : STD_LOGIC; 
  signal alu_result_addsub0000_2_CY0G_2627 : STD_LOGIC; 
  signal alu_result_addsub0000_2_CYSELG_2619 : STD_LOGIC; 
  signal alu_result_addsub0000_4_XORF_2686 : STD_LOGIC; 
  signal alu_result_addsub0000_4_CYINIT_2685 : STD_LOGIC; 
  signal alu_result_addsub0000_4_CY0F_2684 : STD_LOGIC; 
  signal alu_result_addsub0000_4_XORG_2674 : STD_LOGIC; 
  signal alu_Madd_result_addsub0000_cy_4_Q : STD_LOGIC; 
  signal alu_result_addsub0000_4_CYSELF_2672 : STD_LOGIC; 
  signal alu_result_addsub0000_4_CYMUXFAST_2671 : STD_LOGIC; 
  signal alu_result_addsub0000_4_CYAND_2670 : STD_LOGIC; 
  signal alu_result_addsub0000_4_FASTCARRY_2669 : STD_LOGIC; 
  signal alu_result_addsub0000_4_CYMUXG2_2668 : STD_LOGIC; 
  signal alu_result_addsub0000_4_CYMUXF2_2667 : STD_LOGIC; 
  signal alu_result_addsub0000_4_CY0G_2666 : STD_LOGIC; 
  signal alu_result_addsub0000_4_CYSELG_2658 : STD_LOGIC; 
  signal alu_result_addsub0000_6_XORF_2717 : STD_LOGIC; 
  signal alu_result_addsub0000_6_CYINIT_2716 : STD_LOGIC; 
  signal alu_result_addsub0000_6_CY0F_2715 : STD_LOGIC; 
  signal alu_result_addsub0000_6_CYSELF_2707 : STD_LOGIC; 
  signal alu_result_addsub0000_6_XORG_2704 : STD_LOGIC; 
  signal alu_Madd_result_addsub0000_cy_6_Q : STD_LOGIC; 
  signal CU_Result_0_XORF_2753 : STD_LOGIC; 
  signal CU_Result_0_LOGIC_ZERO_2752 : STD_LOGIC; 
  signal CU_Result_0_CYINIT_2751 : STD_LOGIC; 
  signal CU_Result_0_CYSELF_2742 : STD_LOGIC; 
  signal CU_Result_0_F : STD_LOGIC; 
  signal CU_Result_0_BXINV_2740 : STD_LOGIC; 
  signal CU_Result_0_XORG_2738 : STD_LOGIC; 
  signal CU_Result_0_CYMUXG_2737 : STD_LOGIC; 
  signal CU_Mcount_state_timer_cy_0_Q : STD_LOGIC; 
  signal CU_Result_0_LOGIC_ONE_2735 : STD_LOGIC; 
  signal CU_Result_0_CYSELG_2726 : STD_LOGIC; 
  signal CU_Result_2_XORF_2791 : STD_LOGIC; 
  signal CU_Result_2_CYINIT_2790 : STD_LOGIC; 
  signal CU_Result_2_XORG_2779 : STD_LOGIC; 
  signal CU_Mcount_state_timer_cy_2_Q : STD_LOGIC; 
  signal CU_Result_2_CYSELF_2777 : STD_LOGIC; 
  signal CU_Result_2_CYMUXFAST_2776 : STD_LOGIC; 
  signal CU_Result_2_CYAND_2775 : STD_LOGIC; 
  signal CU_Result_2_FASTCARRY_2774 : STD_LOGIC; 
  signal CU_Result_2_CYMUXG2_2773 : STD_LOGIC; 
  signal CU_Result_2_CYMUXF2_2772 : STD_LOGIC; 
  signal CU_Result_2_LOGIC_ONE_2771 : STD_LOGIC; 
  signal CU_Result_2_CYSELG_2762 : STD_LOGIC; 
  signal CU_Result_4_XORF_2829 : STD_LOGIC; 
  signal CU_Result_4_CYINIT_2828 : STD_LOGIC; 
  signal CU_Result_4_XORG_2817 : STD_LOGIC; 
  signal CU_Mcount_state_timer_cy_4_Q : STD_LOGIC; 
  signal CU_Result_4_CYSELF_2815 : STD_LOGIC; 
  signal CU_Result_4_CYMUXFAST_2814 : STD_LOGIC; 
  signal CU_Result_4_CYAND_2813 : STD_LOGIC; 
  signal CU_Result_4_FASTCARRY_2812 : STD_LOGIC; 
  signal CU_Result_4_CYMUXG2_2811 : STD_LOGIC; 
  signal CU_Result_4_CYMUXF2_2810 : STD_LOGIC; 
  signal CU_Result_4_LOGIC_ONE_2809 : STD_LOGIC; 
  signal CU_Result_4_CYSELG_2800 : STD_LOGIC; 
  signal CU_Result_6_XORF_2867 : STD_LOGIC; 
  signal CU_Result_6_CYINIT_2866 : STD_LOGIC; 
  signal CU_Result_6_XORG_2855 : STD_LOGIC; 
  signal CU_Mcount_state_timer_cy_6_Q : STD_LOGIC; 
  signal CU_Result_6_CYSELF_2853 : STD_LOGIC; 
  signal CU_Result_6_CYMUXFAST_2852 : STD_LOGIC; 
  signal CU_Result_6_CYAND_2851 : STD_LOGIC; 
  signal CU_Result_6_FASTCARRY_2850 : STD_LOGIC; 
  signal CU_Result_6_CYMUXG2_2849 : STD_LOGIC; 
  signal CU_Result_6_CYMUXF2_2848 : STD_LOGIC; 
  signal CU_Result_6_LOGIC_ONE_2847 : STD_LOGIC; 
  signal CU_Result_6_CYSELG_2838 : STD_LOGIC; 
  signal CU_Result_8_XORF_2905 : STD_LOGIC; 
  signal CU_Result_8_CYINIT_2904 : STD_LOGIC; 
  signal CU_Result_8_XORG_2893 : STD_LOGIC; 
  signal CU_Mcount_state_timer_cy_8_Q : STD_LOGIC; 
  signal CU_Result_8_CYSELF_2891 : STD_LOGIC; 
  signal CU_Result_8_CYMUXFAST_2890 : STD_LOGIC; 
  signal CU_Result_8_CYAND_2889 : STD_LOGIC; 
  signal CU_Result_8_FASTCARRY_2888 : STD_LOGIC; 
  signal CU_Result_8_CYMUXG2_2887 : STD_LOGIC; 
  signal CU_Result_8_CYMUXF2_2886 : STD_LOGIC; 
  signal CU_Result_8_LOGIC_ONE_2885 : STD_LOGIC; 
  signal CU_Result_8_CYSELG_2876 : STD_LOGIC; 
  signal CU_Result_10_XORF_2943 : STD_LOGIC; 
  signal CU_Result_10_CYINIT_2942 : STD_LOGIC; 
  signal CU_Result_10_XORG_2931 : STD_LOGIC; 
  signal CU_Mcount_state_timer_cy_10_Q : STD_LOGIC; 
  signal CU_Result_10_CYSELF_2929 : STD_LOGIC; 
  signal CU_Result_10_CYMUXFAST_2928 : STD_LOGIC; 
  signal CU_Result_10_CYAND_2927 : STD_LOGIC; 
  signal CU_Result_10_FASTCARRY_2926 : STD_LOGIC; 
  signal CU_Result_10_CYMUXG2_2925 : STD_LOGIC; 
  signal CU_Result_10_CYMUXF2_2924 : STD_LOGIC; 
  signal CU_Result_10_LOGIC_ONE_2923 : STD_LOGIC; 
  signal CU_Result_10_CYSELG_2914 : STD_LOGIC; 
  signal CU_Result_12_XORF_2981 : STD_LOGIC; 
  signal CU_Result_12_CYINIT_2980 : STD_LOGIC; 
  signal CU_Result_12_XORG_2969 : STD_LOGIC; 
  signal CU_Mcount_state_timer_cy_12_Q : STD_LOGIC; 
  signal CU_Result_12_CYSELF_2967 : STD_LOGIC; 
  signal CU_Result_12_CYMUXFAST_2966 : STD_LOGIC; 
  signal CU_Result_12_CYAND_2965 : STD_LOGIC; 
  signal CU_Result_12_FASTCARRY_2964 : STD_LOGIC; 
  signal CU_Result_12_CYMUXG2_2963 : STD_LOGIC; 
  signal CU_Result_12_CYMUXF2_2962 : STD_LOGIC; 
  signal CU_Result_12_LOGIC_ONE_2961 : STD_LOGIC; 
  signal CU_Result_12_CYSELG_2952 : STD_LOGIC; 
  signal CU_Result_14_XORF_3019 : STD_LOGIC; 
  signal CU_Result_14_CYINIT_3018 : STD_LOGIC; 
  signal CU_Result_14_XORG_3007 : STD_LOGIC; 
  signal CU_Mcount_state_timer_cy_14_Q : STD_LOGIC; 
  signal CU_Result_14_CYSELF_3005 : STD_LOGIC; 
  signal CU_Result_14_CYMUXFAST_3004 : STD_LOGIC; 
  signal CU_Result_14_CYAND_3003 : STD_LOGIC; 
  signal CU_Result_14_FASTCARRY_3002 : STD_LOGIC; 
  signal CU_Result_14_CYMUXG2_3001 : STD_LOGIC; 
  signal CU_Result_14_CYMUXF2_3000 : STD_LOGIC; 
  signal CU_Result_14_LOGIC_ONE_2999 : STD_LOGIC; 
  signal CU_Result_14_CYSELG_2990 : STD_LOGIC; 
  signal CU_Result_16_XORF_3057 : STD_LOGIC; 
  signal CU_Result_16_CYINIT_3056 : STD_LOGIC; 
  signal CU_Result_16_XORG_3045 : STD_LOGIC; 
  signal CU_Mcount_state_timer_cy_16_Q : STD_LOGIC; 
  signal CU_Result_16_CYSELF_3043 : STD_LOGIC; 
  signal CU_Result_16_CYMUXFAST_3042 : STD_LOGIC; 
  signal CU_Result_16_CYAND_3041 : STD_LOGIC; 
  signal CU_Result_16_FASTCARRY_3040 : STD_LOGIC; 
  signal CU_Result_16_CYMUXG2_3039 : STD_LOGIC; 
  signal CU_Result_16_CYMUXF2_3038 : STD_LOGIC; 
  signal CU_Result_16_LOGIC_ONE_3037 : STD_LOGIC; 
  signal CU_Result_16_CYSELG_3028 : STD_LOGIC; 
  signal CU_Result_18_XORF_3095 : STD_LOGIC; 
  signal CU_Result_18_CYINIT_3094 : STD_LOGIC; 
  signal CU_Result_18_XORG_3083 : STD_LOGIC; 
  signal CU_Mcount_state_timer_cy_18_Q : STD_LOGIC; 
  signal CU_Result_18_CYSELF_3081 : STD_LOGIC; 
  signal CU_Result_18_CYMUXFAST_3080 : STD_LOGIC; 
  signal CU_Result_18_CYAND_3079 : STD_LOGIC; 
  signal CU_Result_18_FASTCARRY_3078 : STD_LOGIC; 
  signal CU_Result_18_CYMUXG2_3077 : STD_LOGIC; 
  signal CU_Result_18_CYMUXF2_3076 : STD_LOGIC; 
  signal CU_Result_18_LOGIC_ONE_3075 : STD_LOGIC; 
  signal CU_Result_18_CYSELG_3066 : STD_LOGIC; 
  signal CU_Result_20_XORF_3133 : STD_LOGIC; 
  signal CU_Result_20_CYINIT_3132 : STD_LOGIC; 
  signal CU_Result_20_XORG_3121 : STD_LOGIC; 
  signal CU_Mcount_state_timer_cy_20_Q : STD_LOGIC; 
  signal CU_Result_20_CYSELF_3119 : STD_LOGIC; 
  signal CU_Result_20_CYMUXFAST_3118 : STD_LOGIC; 
  signal CU_Result_20_CYAND_3117 : STD_LOGIC; 
  signal CU_Result_20_FASTCARRY_3116 : STD_LOGIC; 
  signal CU_Result_20_CYMUXG2_3115 : STD_LOGIC; 
  signal CU_Result_20_CYMUXF2_3114 : STD_LOGIC; 
  signal CU_Result_20_LOGIC_ONE_3113 : STD_LOGIC; 
  signal CU_Result_20_CYSELG_3104 : STD_LOGIC; 
  signal CU_Result_22_XORF_3171 : STD_LOGIC; 
  signal CU_Result_22_CYINIT_3170 : STD_LOGIC; 
  signal CU_Result_22_XORG_3159 : STD_LOGIC; 
  signal CU_Mcount_state_timer_cy_22_Q : STD_LOGIC; 
  signal CU_Result_22_CYSELF_3157 : STD_LOGIC; 
  signal CU_Result_22_CYMUXFAST_3156 : STD_LOGIC; 
  signal CU_Result_22_CYAND_3155 : STD_LOGIC; 
  signal CU_Result_22_FASTCARRY_3154 : STD_LOGIC; 
  signal CU_Result_22_CYMUXG2_3153 : STD_LOGIC; 
  signal CU_Result_22_CYMUXF2_3152 : STD_LOGIC; 
  signal CU_Result_22_LOGIC_ONE_3151 : STD_LOGIC; 
  signal CU_Result_22_CYSELG_3142 : STD_LOGIC; 
  signal CU_Result_24_XORF_3209 : STD_LOGIC; 
  signal CU_Result_24_CYINIT_3208 : STD_LOGIC; 
  signal CU_Result_24_XORG_3197 : STD_LOGIC; 
  signal CU_Mcount_state_timer_cy_24_Q : STD_LOGIC; 
  signal CU_Result_24_CYSELF_3195 : STD_LOGIC; 
  signal CU_Result_24_CYMUXFAST_3194 : STD_LOGIC; 
  signal CU_Result_24_CYAND_3193 : STD_LOGIC; 
  signal CU_Result_24_FASTCARRY_3192 : STD_LOGIC; 
  signal CU_Result_24_CYMUXG2_3191 : STD_LOGIC; 
  signal CU_Result_24_CYMUXF2_3190 : STD_LOGIC; 
  signal CU_Result_24_LOGIC_ONE_3189 : STD_LOGIC; 
  signal CU_Result_24_CYSELG_3180 : STD_LOGIC; 
  signal CU_Result_26_XORF_3247 : STD_LOGIC; 
  signal CU_Result_26_CYINIT_3246 : STD_LOGIC; 
  signal CU_Result_26_XORG_3235 : STD_LOGIC; 
  signal CU_Mcount_state_timer_cy_26_Q : STD_LOGIC; 
  signal CU_Result_26_CYSELF_3233 : STD_LOGIC; 
  signal CU_Result_26_CYMUXFAST_3232 : STD_LOGIC; 
  signal CU_Result_26_CYAND_3231 : STD_LOGIC; 
  signal CU_Result_26_FASTCARRY_3230 : STD_LOGIC; 
  signal CU_Result_26_CYMUXG2_3229 : STD_LOGIC; 
  signal CU_Result_26_CYMUXF2_3228 : STD_LOGIC; 
  signal CU_Result_26_LOGIC_ONE_3227 : STD_LOGIC; 
  signal CU_Result_26_CYSELG_3218 : STD_LOGIC; 
  signal CU_Result_28_XORF_3285 : STD_LOGIC; 
  signal CU_Result_28_CYINIT_3284 : STD_LOGIC; 
  signal CU_Result_28_XORG_3273 : STD_LOGIC; 
  signal CU_Mcount_state_timer_cy_28_Q : STD_LOGIC; 
  signal CU_Result_28_CYSELF_3271 : STD_LOGIC; 
  signal CU_Result_28_CYMUXFAST_3270 : STD_LOGIC; 
  signal CU_Result_28_CYAND_3269 : STD_LOGIC; 
  signal CU_Result_28_FASTCARRY_3268 : STD_LOGIC; 
  signal CU_Result_28_CYMUXG2_3267 : STD_LOGIC; 
  signal CU_Result_28_CYMUXF2_3266 : STD_LOGIC; 
  signal CU_Result_28_LOGIC_ONE_3265 : STD_LOGIC; 
  signal CU_Result_28_CYSELG_3256 : STD_LOGIC; 
  signal CU_Result_30_XORF_3316 : STD_LOGIC; 
  signal CU_Result_30_LOGIC_ONE_3315 : STD_LOGIC; 
  signal CU_Result_30_CYINIT_3314 : STD_LOGIC; 
  signal CU_Result_30_CYSELF_3305 : STD_LOGIC; 
  signal CU_Result_30_XORG_3302 : STD_LOGIC; 
  signal CU_Mcount_state_timer_cy_30_Q : STD_LOGIC; 
  signal PC_data_0_FFY_RST : STD_LOGIC; 
  signal PC_data_0_FFX_RST : STD_LOGIC; 
  signal PC_data_0_DXMUX_3367 : STD_LOGIC; 
  signal PC_data_0_XORF_3365 : STD_LOGIC; 
  signal PC_data_0_CYINIT_3364 : STD_LOGIC; 
  signal PC_data_0_CYSELF_3357 : STD_LOGIC; 
  signal PC_data_0_DYMUX_3347 : STD_LOGIC; 
  signal PC_data_0_XORG_3345 : STD_LOGIC; 
  signal PC_data_0_CYMUXG_3344 : STD_LOGIC; 
  signal PC_Mcount_data_cy_0_Q : STD_LOGIC; 
  signal PC_data_0_LOGIC_ZERO_3342 : STD_LOGIC; 
  signal PC_data_0_CYSELG_3335 : STD_LOGIC; 
  signal PC_data_0_SRINV_3333 : STD_LOGIC; 
  signal PC_data_0_CLKINV_3332 : STD_LOGIC; 
  signal PC_data_0_CEINV_3331 : STD_LOGIC; 
  signal PC_data_2_DXMUX_3427 : STD_LOGIC; 
  signal PC_data_2_XORF_3425 : STD_LOGIC; 
  signal PC_data_2_CYINIT_3424 : STD_LOGIC; 
  signal PC_data_2_DYMUX_3409 : STD_LOGIC; 
  signal PC_data_2_XORG_3407 : STD_LOGIC; 
  signal PC_Mcount_data_cy_2_Q : STD_LOGIC; 
  signal PC_data_2_CYSELF_3405 : STD_LOGIC; 
  signal PC_data_2_CYMUXFAST_3404 : STD_LOGIC; 
  signal PC_data_2_CYAND_3403 : STD_LOGIC; 
  signal PC_data_2_FASTCARRY_3402 : STD_LOGIC; 
  signal PC_data_2_CYMUXG2_3401 : STD_LOGIC; 
  signal PC_data_2_CYMUXF2_3400 : STD_LOGIC; 
  signal PC_data_2_LOGIC_ZERO_3399 : STD_LOGIC; 
  signal PC_data_2_CYSELG_3392 : STD_LOGIC; 
  signal PC_data_2_SRINV_3390 : STD_LOGIC; 
  signal PC_data_2_CLKINV_3389 : STD_LOGIC; 
  signal PC_data_2_CEINV_3388 : STD_LOGIC; 
  signal PC_data_4_DXMUX_3487 : STD_LOGIC; 
  signal PC_data_4_XORF_3485 : STD_LOGIC; 
  signal PC_data_4_CYINIT_3484 : STD_LOGIC; 
  signal PC_data_4_DYMUX_3469 : STD_LOGIC; 
  signal PC_data_4_XORG_3467 : STD_LOGIC; 
  signal PC_Mcount_data_cy_4_Q : STD_LOGIC; 
  signal PC_data_4_CYSELF_3465 : STD_LOGIC; 
  signal PC_data_4_CYMUXFAST_3464 : STD_LOGIC; 
  signal PC_data_4_CYAND_3463 : STD_LOGIC; 
  signal PC_data_4_FASTCARRY_3462 : STD_LOGIC; 
  signal PC_data_4_CYMUXG2_3461 : STD_LOGIC; 
  signal PC_data_4_CYMUXF2_3460 : STD_LOGIC; 
  signal PC_data_4_LOGIC_ZERO_3459 : STD_LOGIC; 
  signal PC_data_4_CYSELG_3452 : STD_LOGIC; 
  signal PC_data_4_SRINV_3450 : STD_LOGIC; 
  signal PC_data_4_CLKINV_3449 : STD_LOGIC; 
  signal PC_data_4_CEINV_3448 : STD_LOGIC; 
  signal PC_data_6_DXMUX_3540 : STD_LOGIC; 
  signal PC_data_6_XORF_3538 : STD_LOGIC; 
  signal PC_data_6_LOGIC_ZERO_3537 : STD_LOGIC; 
  signal PC_data_6_CYINIT_3536 : STD_LOGIC; 
  signal PC_data_6_CYSELF_3529 : STD_LOGIC; 
  signal PC_data_6_DYMUX_3520 : STD_LOGIC; 
  signal PC_data_6_XORG_3518 : STD_LOGIC; 
  signal PC_Mcount_data_cy_6_Q : STD_LOGIC; 
  signal PC_data_6_SRINV_3509 : STD_LOGIC; 
  signal PC_data_6_CLKINV_3508 : STD_LOGIC; 
  signal PC_data_6_CEINV_3507 : STD_LOGIC; 
  signal CU_current_state_cmp_eq0000_wg_cy_1_CYINIT_3576 : STD_LOGIC; 
  signal CU_current_state_cmp_eq0000_wg_cy_1_CYSELF_3570 : STD_LOGIC; 
  signal CU_current_state_cmp_eq0000_wg_cy_1_BXINV_3568 : STD_LOGIC; 
  signal CU_current_state_cmp_eq0000_wg_cy_1_CYMUXG_3567 : STD_LOGIC; 
  signal CU_current_state_cmp_eq0000_wg_cy_1_LOGIC_ZERO_3565 : STD_LOGIC; 
  signal CU_current_state_cmp_eq0000_wg_cy_1_CYSELG_3559 : STD_LOGIC; 
  signal CU_current_state_cmp_eq0000_wg_cy_3_CYSELF_3600 : STD_LOGIC; 
  signal CU_current_state_cmp_eq0000_wg_cy_3_CYMUXFAST_3599 : STD_LOGIC; 
  signal CU_current_state_cmp_eq0000_wg_cy_3_CYAND_3598 : STD_LOGIC; 
  signal CU_current_state_cmp_eq0000_wg_cy_3_FASTCARRY_3597 : STD_LOGIC; 
  signal CU_current_state_cmp_eq0000_wg_cy_3_CYMUXG2_3596 : STD_LOGIC; 
  signal CU_current_state_cmp_eq0000_wg_cy_3_CYMUXF2_3595 : STD_LOGIC; 
  signal CU_current_state_cmp_eq0000_wg_cy_3_LOGIC_ZERO_3594 : STD_LOGIC; 
  signal CU_current_state_cmp_eq0000_wg_cy_3_CYSELG_3588 : STD_LOGIC; 
  signal CU_current_state_cmp_eq0000_wg_cy_5_CYSELF_3630 : STD_LOGIC; 
  signal CU_current_state_cmp_eq0000_wg_cy_5_CYMUXFAST_3629 : STD_LOGIC; 
  signal CU_current_state_cmp_eq0000_wg_cy_5_CYAND_3628 : STD_LOGIC; 
  signal CU_current_state_cmp_eq0000_wg_cy_5_FASTCARRY_3627 : STD_LOGIC; 
  signal CU_current_state_cmp_eq0000_wg_cy_5_CYMUXG2_3626 : STD_LOGIC; 
  signal CU_current_state_cmp_eq0000_wg_cy_5_CYMUXF2_3625 : STD_LOGIC; 
  signal CU_current_state_cmp_eq0000_wg_cy_5_LOGIC_ZERO_3624 : STD_LOGIC; 
  signal CU_current_state_cmp_eq0000_wg_cy_5_CYSELG_3618 : STD_LOGIC; 
  signal CU_state_timer_not0001_inv_CYSELF_3660 : STD_LOGIC; 
  signal CU_state_timer_not0001_inv_CYMUXFAST_3659 : STD_LOGIC; 
  signal CU_state_timer_not0001_inv_CYAND_3658 : STD_LOGIC; 
  signal CU_state_timer_not0001_inv_FASTCARRY_3657 : STD_LOGIC; 
  signal CU_state_timer_not0001_inv_CYMUXG2_3656 : STD_LOGIC; 
  signal CU_state_timer_not0001_inv_CYMUXF2_3655 : STD_LOGIC; 
  signal CU_state_timer_not0001_inv_LOGIC_ZERO_3654 : STD_LOGIC; 
  signal CU_state_timer_not0001_inv_CYSELG_3648 : STD_LOGIC; 
  signal AC_reg_0_F5MUX_3712 : STD_LOGIC; 
  signal alu_Mmux_result_4_3710 : STD_LOGIC; 
  signal AC_reg_0_BXINV_3703 : STD_LOGIC; 
  signal AC_reg_0_DYMUX_3695 : STD_LOGIC; 
  signal AC_reg_0_GYMUX_3694 : STD_LOGIC; 
  signal AC_reg_0_F6MUX_3693 : STD_LOGIC; 
  signal alu_Mmux_result_5_3691 : STD_LOGIC; 
  signal AC_reg_0_BYINV_3685 : STD_LOGIC; 
  signal AC_reg_0_CLKINV_3683 : STD_LOGIC; 
  signal AC_reg_0_CEINV_3682 : STD_LOGIC; 
  signal alu_Mmux_result_4_f5_F5MUX_3736 : STD_LOGIC; 
  signal alu_Mmux_result_51_3734 : STD_LOGIC; 
  signal alu_Mmux_result_4_f5_BXINV_3728 : STD_LOGIC; 
  signal alu_Mmux_result_6_3726 : STD_LOGIC; 
  signal AC_reg_1_F5MUX_3782 : STD_LOGIC; 
  signal alu_Mmux_result_41_3780 : STD_LOGIC; 
  signal AC_reg_1_BXINV_3774 : STD_LOGIC; 
  signal AC_reg_1_DYMUX_3766 : STD_LOGIC; 
  signal AC_reg_1_GYMUX_3765 : STD_LOGIC; 
  signal AC_reg_1_F6MUX_3764 : STD_LOGIC; 
  signal alu_Mmux_result_52_3762 : STD_LOGIC; 
  signal AC_reg_1_BYINV_3756 : STD_LOGIC; 
  signal AC_reg_1_CLKINV_3754 : STD_LOGIC; 
  signal AC_reg_1_CEINV_3753 : STD_LOGIC; 
  signal alu_Mmux_result_4_f51_F5MUX_3806 : STD_LOGIC; 
  signal alu_Mmux_result_53_3804 : STD_LOGIC; 
  signal alu_Mmux_result_4_f51_BXINV_3798 : STD_LOGIC; 
  signal alu_Mmux_result_61_3796 : STD_LOGIC; 
  signal AC_reg_2_F5MUX_3852 : STD_LOGIC; 
  signal alu_Mmux_result_42_3850 : STD_LOGIC; 
  signal AC_reg_2_BXINV_3844 : STD_LOGIC; 
  signal AC_reg_2_DYMUX_3836 : STD_LOGIC; 
  signal AC_reg_2_GYMUX_3835 : STD_LOGIC; 
  signal AC_reg_2_F6MUX_3834 : STD_LOGIC; 
  signal alu_Mmux_result_54_3832 : STD_LOGIC; 
  signal AC_reg_2_BYINV_3826 : STD_LOGIC; 
  signal AC_reg_2_CLKINV_3824 : STD_LOGIC; 
  signal AC_reg_2_CEINV_3823 : STD_LOGIC; 
  signal alu_Mmux_result_4_f52_F5MUX_3876 : STD_LOGIC; 
  signal alu_Mmux_result_55_3874 : STD_LOGIC; 
  signal alu_Mmux_result_4_f52_BXINV_3868 : STD_LOGIC; 
  signal alu_Mmux_result_62_3866 : STD_LOGIC; 
  signal AC_reg_3_F5MUX_3922 : STD_LOGIC; 
  signal alu_Mmux_result_43_3920 : STD_LOGIC; 
  signal AC_reg_3_BXINV_3914 : STD_LOGIC; 
  signal AC_reg_3_DYMUX_3906 : STD_LOGIC; 
  signal AC_reg_3_GYMUX_3905 : STD_LOGIC; 
  signal AC_reg_3_F6MUX_3904 : STD_LOGIC; 
  signal alu_Mmux_result_56_3902 : STD_LOGIC; 
  signal AC_reg_3_BYINV_3896 : STD_LOGIC; 
  signal AC_reg_3_CLKINV_3894 : STD_LOGIC; 
  signal AC_reg_3_CEINV_3893 : STD_LOGIC; 
  signal alu_Mmux_result_4_f53_F5MUX_3946 : STD_LOGIC; 
  signal alu_Mmux_result_57_3944 : STD_LOGIC; 
  signal alu_Mmux_result_4_f53_BXINV_3938 : STD_LOGIC; 
  signal alu_Mmux_result_63_3936 : STD_LOGIC; 
  signal AC_reg_4_F5MUX_3992 : STD_LOGIC; 
  signal alu_Mmux_result_44_3990 : STD_LOGIC; 
  signal AC_reg_4_BXINV_3984 : STD_LOGIC; 
  signal AC_reg_4_DYMUX_3976 : STD_LOGIC; 
  signal AC_reg_4_GYMUX_3975 : STD_LOGIC; 
  signal AC_reg_4_F6MUX_3974 : STD_LOGIC; 
  signal alu_Mmux_result_58_3972 : STD_LOGIC; 
  signal AC_reg_4_BYINV_3966 : STD_LOGIC; 
  signal AC_reg_4_CLKINV_3964 : STD_LOGIC; 
  signal AC_reg_4_CEINV_3963 : STD_LOGIC; 
  signal alu_Mmux_result_4_f54_F5MUX_4016 : STD_LOGIC; 
  signal alu_Mmux_result_59_4014 : STD_LOGIC; 
  signal alu_Mmux_result_4_f54_BXINV_4008 : STD_LOGIC; 
  signal alu_Mmux_result_64_4006 : STD_LOGIC; 
  signal AC_reg_5_F5MUX_4062 : STD_LOGIC; 
  signal alu_Mmux_result_45_4060 : STD_LOGIC; 
  signal AC_reg_5_BXINV_4054 : STD_LOGIC; 
  signal AC_reg_5_DYMUX_4046 : STD_LOGIC; 
  signal AC_reg_5_GYMUX_4045 : STD_LOGIC; 
  signal AC_reg_5_F6MUX_4044 : STD_LOGIC; 
  signal alu_Mmux_result_510_4042 : STD_LOGIC; 
  signal AC_reg_5_BYINV_4036 : STD_LOGIC; 
  signal AC_reg_5_CLKINV_4034 : STD_LOGIC; 
  signal AC_reg_5_CEINV_4033 : STD_LOGIC; 
  signal alu_Mmux_result_4_f55_F5MUX_4086 : STD_LOGIC; 
  signal alu_Mmux_result_511_4084 : STD_LOGIC; 
  signal alu_Mmux_result_4_f55_BXINV_4078 : STD_LOGIC; 
  signal alu_Mmux_result_65_4076 : STD_LOGIC; 
  signal AC_reg_6_F5MUX_4132 : STD_LOGIC; 
  signal alu_Mmux_result_46_4130 : STD_LOGIC; 
  signal AC_reg_6_BXINV_4124 : STD_LOGIC; 
  signal AC_reg_6_DYMUX_4116 : STD_LOGIC; 
  signal AC_reg_6_GYMUX_4115 : STD_LOGIC; 
  signal AC_reg_6_F6MUX_4114 : STD_LOGIC; 
  signal alu_Mmux_result_512_4112 : STD_LOGIC; 
  signal AC_reg_6_BYINV_4106 : STD_LOGIC; 
  signal AC_reg_6_CLKINV_4104 : STD_LOGIC; 
  signal AC_reg_6_CEINV_4103 : STD_LOGIC; 
  signal alu_Mmux_result_4_f56_F5MUX_4156 : STD_LOGIC; 
  signal alu_Mmux_result_513_4154 : STD_LOGIC; 
  signal alu_Mmux_result_4_f56_BXINV_4148 : STD_LOGIC; 
  signal alu_Mmux_result_66_4146 : STD_LOGIC; 
  signal NZ_data_N_F5MUX_4202 : STD_LOGIC; 
  signal alu_Mmux_result_47_4200 : STD_LOGIC; 
  signal NZ_data_N_BXINV_4194 : STD_LOGIC; 
  signal NZ_data_N_DYMUX_4186 : STD_LOGIC; 
  signal NZ_data_N_GYMUX_4185 : STD_LOGIC; 
  signal NZ_data_N_F6MUX_4184 : STD_LOGIC; 
  signal alu_Mmux_result_514_4182 : STD_LOGIC; 
  signal NZ_data_N_BYINV_4175 : STD_LOGIC; 
  signal NZ_data_N_CLKINV_4173 : STD_LOGIC; 
  signal NZ_data_N_CEINV_4172 : STD_LOGIC; 
  signal NZ_data_N_FFY_RSTAND_4192 : STD_LOGIC; 
  signal alu_Mmux_result_4_f57_F5MUX_4226 : STD_LOGIC; 
  signal alu_Mmux_result_515_4224 : STD_LOGIC; 
  signal alu_Mmux_result_4_f57_BXINV_4218 : STD_LOGIC; 
  signal alu_Mmux_result_67_4216 : STD_LOGIC; 
  signal clk_INBUF : STD_LOGIC; 
  signal enable_INBUF : STD_LOGIC; 
  signal debug_out_O : STD_LOGIC; 
  signal rst_INBUF : STD_LOGIC; 
  signal clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal clk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCOUT0 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCOUT1 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCOUT2 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCOUT3 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCOUT4 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCOUT5 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCOUT6 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCOUT7 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCOUT8 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCOUT9 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCOUT10 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCOUT11 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCOUT12 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCOUT13 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCOUT14 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCOUT15 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCOUT16 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCOUT17 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_P8 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_P9 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_P10 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_P11 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_P12 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_P13 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_P14 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_P15 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_P16 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_P17 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_P18 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_P19 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_P20 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_P21 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_P22 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_P23 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_P24 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_P25 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_P26 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_P27 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_P28 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_P29 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_P30 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_P31 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_P32 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_P33 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_P34 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_P35 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCIN0 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCIN1 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCIN2 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCIN3 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCIN4 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCIN5 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCIN6 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCIN7 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCIN8 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCIN9 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCIN10 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCIN11 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCIN12 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCIN13 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCIN14 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCIN15 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCIN16 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_BCIN17 : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_RSTP_INT : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_RSTB_INT : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_RSTA_INT : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_CLK_INT : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_CEP_INT : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_CEB_INT : STD_LOGIC; 
  signal alu_Mmult_MULTIPLICATION_mult0000_CEA_INT : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPB3 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPB2 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPB1 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPB0 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB31 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB30 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB29 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB28 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB27 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB26 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB25 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB24 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB23 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB22 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB21 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB20 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB19 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB18 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB17 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB16 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB15 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB14 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB13 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB12 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB11 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB10 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB9 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB8 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB7 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB6 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB5 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB4 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB3 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB2 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB1 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB0 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPA3 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPA2 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPA1 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPA0 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA31 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA30 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA29 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA28 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA27 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA26 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA23 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA22 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA21 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA20 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA19 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA18 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA15 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA14 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA13 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA12 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA11 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA10 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA7 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA6 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA5 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA4 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA3 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA2 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIPB3 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIPB2 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIPB1 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIPB0 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB31 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB30 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB29 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB28 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB27 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB26 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB25 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB24 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB23 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB22 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB21 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB20 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB19 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB18 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB17 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB16 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB15 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB14 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB13 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB12 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB11 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB10 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB9 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB8 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB7 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB6 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB5 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB4 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB3 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB2 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB1 : STD_LOGIC; 
  signal MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB0 : STD_LOGIC; 
  signal CU_PC_inc_DXMUX_4579 : STD_LOGIC; 
  signal CU_PC_inc_F5MUX_4577 : STD_LOGIC; 
  signal CU_PC_inc_mux00001_4575 : STD_LOGIC; 
  signal CU_PC_inc_BXINV_4570 : STD_LOGIC; 
  signal CU_PC_inc_mux00002_4568 : STD_LOGIC; 
  signal CU_PC_inc_CLKINV_4562 : STD_LOGIC; 
  signal CU_PC_inc_CEINVNOT : STD_LOGIC; 
  signal CU_loadREM_DXMUX_4613 : STD_LOGIC; 
  signal CU_loadREM_F5MUX_4611 : STD_LOGIC; 
  signal CU_loadREM_mux00001_4609 : STD_LOGIC; 
  signal CU_loadREM_BXINV_4604 : STD_LOGIC; 
  signal CU_loadREM_mux00002_4602 : STD_LOGIC; 
  signal CU_loadREM_CLKINV_4595 : STD_LOGIC; 
  signal CU_next_state_mux0012_13_38_F5MUX_4643 : STD_LOGIC; 
  signal CU_next_state_mux0012_13_381_4641 : STD_LOGIC; 
  signal CU_next_state_mux0012_13_38_BXINV_4634 : STD_LOGIC; 
  signal CU_next_state_mux0012_13_382_4632 : STD_LOGIC; 
  signal CU_sel_ula_and0000 : STD_LOGIC; 
  signal CU_N7_pack_1 : STD_LOGIC; 
  signal CU_next_state_mux0012_0_8_4690 : STD_LOGIC; 
  signal exec_NOT_pack_1 : STD_LOGIC; 
  signal CU_N9 : STD_LOGIC; 
  signal exec_STA_pack_1 : STD_LOGIC; 
  signal CU_next_state_mux0012_4_11_4738 : STD_LOGIC; 
  signal exec_JN_pack_1 : STD_LOGIC; 
  signal NZ_data_Z_DXMUX_4771 : STD_LOGIC; 
  signal ULA_Z : STD_LOGIC; 
  signal alu_Z_cmp_eq000028_SW0_O_pack_1 : STD_LOGIC; 
  signal NZ_data_Z_CLKINV_4755 : STD_LOGIC; 
  signal NZ_data_Z_CEINV_4754 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal CU_next_state_or0001_pack_1 : STD_LOGIC; 
  signal CU_next_state_1_DXMUX_4831 : STD_LOGIC; 
  signal CU_next_state_mux0012_12_22_O_pack_2 : STD_LOGIC; 
  signal CU_next_state_1_CLKINV_4814 : STD_LOGIC; 
  signal CU_next_state_mux0012_7_11_4859 : STD_LOGIC; 
  signal exec_JZ_pack_1 : STD_LOGIC; 
  signal CU_loadRDM_mux000015_4883 : STD_LOGIC; 
  signal CU_N10_pack_1 : STD_LOGIC; 
  signal CU_next_state_mux0012_4_23 : STD_LOGIC; 
  signal exec_HLT_pack_1 : STD_LOGIC; 
  signal CU_next_state_0_DXMUX_4938 : STD_LOGIC; 
  signal CU_next_state_mux0012_13_56_O_pack_2 : STD_LOGIC; 
  signal CU_next_state_0_CLKINV_4922 : STD_LOGIC; 
  signal CU_sel_mux_RDM_DXMUX_4977 : STD_LOGIC; 
  signal CU_sel_mux_RDM_mux0000 : STD_LOGIC; 
  signal CU_sel_mux_RDM_DYMUX_4965 : STD_LOGIC; 
  signal CU_sel_mux0000 : STD_LOGIC; 
  signal CU_sel_mux_RDM_CLKINV_4957 : STD_LOGIC; 
  signal CU_sel_mux_RDM_CEINVNOT : STD_LOGIC; 
  signal R_E_M_reg_1_DXMUX_5020 : STD_LOGIC; 
  signal R_E_M_reg_1_DYMUX_5004 : STD_LOGIC; 
  signal R_E_M_reg_1_SRINV_4995 : STD_LOGIC; 
  signal R_E_M_reg_1_CLKINV_4994 : STD_LOGIC; 
  signal R_E_M_reg_1_CEINV_4993 : STD_LOGIC; 
  signal R_E_M_reg_3_DXMUX_5066 : STD_LOGIC; 
  signal R_E_M_reg_3_DYMUX_5050 : STD_LOGIC; 
  signal R_E_M_reg_3_SRINV_5041 : STD_LOGIC; 
  signal R_E_M_reg_3_CLKINV_5040 : STD_LOGIC; 
  signal R_E_M_reg_3_CEINV_5039 : STD_LOGIC; 
  signal R_E_M_reg_5_DXMUX_5112 : STD_LOGIC; 
  signal R_E_M_reg_5_DYMUX_5096 : STD_LOGIC; 
  signal R_E_M_reg_5_SRINV_5087 : STD_LOGIC; 
  signal R_E_M_reg_5_CLKINV_5086 : STD_LOGIC; 
  signal R_E_M_reg_5_CEINV_5085 : STD_LOGIC; 
  signal R_E_M_reg_7_DXMUX_5158 : STD_LOGIC; 
  signal R_E_M_reg_7_DYMUX_5142 : STD_LOGIC; 
  signal R_E_M_reg_7_SRINV_5133 : STD_LOGIC; 
  signal R_E_M_reg_7_CLKINV_5132 : STD_LOGIC; 
  signal R_E_M_reg_7_CEINV_5131 : STD_LOGIC; 
  signal CU_state_timer_1_DXMUX_5200 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_1 : STD_LOGIC; 
  signal CU_state_timer_1_DYMUX_5185 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_0 : STD_LOGIC; 
  signal CU_state_timer_1_SRINV_5175 : STD_LOGIC; 
  signal CU_state_timer_1_CLKINV_5174 : STD_LOGIC; 
  signal CU_state_timer_3_DXMUX_5242 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_3 : STD_LOGIC; 
  signal CU_state_timer_3_DYMUX_5226 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_2 : STD_LOGIC; 
  signal CU_state_timer_3_SRINV_5216 : STD_LOGIC; 
  signal CU_state_timer_3_CLKINV_5215 : STD_LOGIC; 
  signal CU_state_timer_11_DXMUX_5284 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_11 : STD_LOGIC; 
  signal CU_state_timer_11_DYMUX_5268 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_10 : STD_LOGIC; 
  signal CU_state_timer_11_SRINV_5258 : STD_LOGIC; 
  signal CU_state_timer_11_CLKINV_5257 : STD_LOGIC; 
  signal CU_state_timer_5_DXMUX_5326 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_5 : STD_LOGIC; 
  signal CU_state_timer_5_DYMUX_5310 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_4 : STD_LOGIC; 
  signal CU_state_timer_5_SRINV_5300 : STD_LOGIC; 
  signal CU_state_timer_5_CLKINV_5299 : STD_LOGIC; 
  signal CU_state_timer_13_DXMUX_5368 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_13 : STD_LOGIC; 
  signal CU_state_timer_13_DYMUX_5352 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_12 : STD_LOGIC; 
  signal CU_state_timer_13_SRINV_5342 : STD_LOGIC; 
  signal CU_state_timer_13_CLKINV_5341 : STD_LOGIC; 
  signal CU_state_timer_21_DXMUX_5410 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_21 : STD_LOGIC; 
  signal CU_state_timer_21_DYMUX_5394 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_20 : STD_LOGIC; 
  signal CU_state_timer_21_SRINV_5384 : STD_LOGIC; 
  signal CU_state_timer_21_CLKINV_5383 : STD_LOGIC; 
  signal CU_state_timer_7_DXMUX_5452 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_7 : STD_LOGIC; 
  signal CU_state_timer_7_DYMUX_5436 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_6 : STD_LOGIC; 
  signal CU_state_timer_7_SRINV_5426 : STD_LOGIC; 
  signal CU_state_timer_7_CLKINV_5425 : STD_LOGIC; 
  signal CU_state_timer_15_DXMUX_5494 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_15 : STD_LOGIC; 
  signal CU_state_timer_15_DYMUX_5478 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_14 : STD_LOGIC; 
  signal CU_state_timer_15_SRINV_5468 : STD_LOGIC; 
  signal CU_state_timer_15_CLKINV_5467 : STD_LOGIC; 
  signal CU_state_timer_23_DXMUX_5536 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_23 : STD_LOGIC; 
  signal CU_state_timer_23_DYMUX_5520 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_22 : STD_LOGIC; 
  signal CU_state_timer_23_SRINV_5510 : STD_LOGIC; 
  signal CU_state_timer_23_CLKINV_5509 : STD_LOGIC; 
  signal CU_state_timer_31_DXMUX_5578 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_31 : STD_LOGIC; 
  signal CU_state_timer_31_DYMUX_5562 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_30 : STD_LOGIC; 
  signal CU_state_timer_31_SRINV_5552 : STD_LOGIC; 
  signal CU_state_timer_31_CLKINV_5551 : STD_LOGIC; 
  signal CU_state_timer_9_DXMUX_5620 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_9 : STD_LOGIC; 
  signal CU_state_timer_9_DYMUX_5604 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_8 : STD_LOGIC; 
  signal CU_state_timer_9_SRINV_5594 : STD_LOGIC; 
  signal CU_state_timer_9_CLKINV_5593 : STD_LOGIC; 
  signal CU_state_timer_17_DXMUX_5662 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_17 : STD_LOGIC; 
  signal CU_state_timer_17_DYMUX_5646 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_16 : STD_LOGIC; 
  signal CU_state_timer_17_SRINV_5636 : STD_LOGIC; 
  signal CU_state_timer_17_CLKINV_5635 : STD_LOGIC; 
  signal CU_state_timer_25_FFX_RST : STD_LOGIC; 
  signal CU_state_timer_25_FFY_RST : STD_LOGIC; 
  signal CU_state_timer_25_DXMUX_5704 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_25 : STD_LOGIC; 
  signal CU_state_timer_25_DYMUX_5688 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_24 : STD_LOGIC; 
  signal CU_state_timer_25_SRINV_5678 : STD_LOGIC; 
  signal CU_state_timer_25_CLKINV_5677 : STD_LOGIC; 
  signal CU_state_timer_19_FFY_RST : STD_LOGIC; 
  signal CU_state_timer_19_FFX_RST : STD_LOGIC; 
  signal CU_state_timer_19_DXMUX_5746 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_19 : STD_LOGIC; 
  signal CU_state_timer_19_DYMUX_5730 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_18 : STD_LOGIC; 
  signal CU_state_timer_19_SRINV_5720 : STD_LOGIC; 
  signal CU_state_timer_19_CLKINV_5719 : STD_LOGIC; 
  signal CU_state_timer_27_DXMUX_5788 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_27 : STD_LOGIC; 
  signal CU_state_timer_27_DYMUX_5772 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_26 : STD_LOGIC; 
  signal CU_state_timer_27_SRINV_5762 : STD_LOGIC; 
  signal CU_state_timer_27_CLKINV_5761 : STD_LOGIC; 
  signal CU_state_timer_29_FFY_RST : STD_LOGIC; 
  signal CU_state_timer_29_FFX_RST : STD_LOGIC; 
  signal CU_state_timer_29_DXMUX_5830 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_29 : STD_LOGIC; 
  signal CU_state_timer_29_DYMUX_5814 : STD_LOGIC; 
  signal CU_Mcount_state_timer_eqn_28 : STD_LOGIC; 
  signal CU_state_timer_29_SRINV_5804 : STD_LOGIC; 
  signal CU_state_timer_29_CLKINV_5803 : STD_LOGIC; 
  signal CU_next_state_3_DXMUX_5872 : STD_LOGIC; 
  signal CU_next_state_3_DYMUX_5857 : STD_LOGIC; 
  signal CU_next_state_3_SRINV_5848 : STD_LOGIC; 
  signal CU_next_state_3_CLKINV_5847 : STD_LOGIC; 
  signal CU_next_state_5_DXMUX_5914 : STD_LOGIC; 
  signal CU_next_state_5_DYMUX_5900 : STD_LOGIC; 
  signal CU_next_state_5_SRINV_5891 : STD_LOGIC; 
  signal CU_next_state_5_CLKINV_5890 : STD_LOGIC; 
  signal CU_loadAC_DYMUX_5937 : STD_LOGIC; 
  signal CU_loadAC_mux0000 : STD_LOGIC; 
  signal CU_loadAC_CLKINV_5927 : STD_LOGIC; 
  signal CU_next_state_6_DYMUX_5960 : STD_LOGIC; 
  signal CU_next_state_6_CLKINV_5951 : STD_LOGIC; 
  signal CU_next_state_9_DXMUX_6002 : STD_LOGIC; 
  signal CU_next_state_9_DYMUX_5988 : STD_LOGIC; 
  signal CU_next_state_9_SRINV_5979 : STD_LOGIC; 
  signal CU_next_state_9_CLKINV_5978 : STD_LOGIC; 
  signal AC_reg_2_FFY_RSTAND_3842 : STD_LOGIC; 
  signal AC_reg_6_FFY_RSTAND_4122 : STD_LOGIC; 
  signal CU_loadRDM_FFY_RSTAND_1850 : STD_LOGIC; 
  signal CU_stop_s_FFY_RSTAND_2239 : STD_LOGIC; 
  signal CU_loadRI_FFX_RSTAND_2274 : STD_LOGIC; 
  signal CU_loadPC_FFX_RSTAND_2453 : STD_LOGIC; 
  signal CU_wr_enable_mem_0_FFX_RSTAND_2488 : STD_LOGIC; 
  signal AC_reg_0_FFY_RSTAND_3701 : STD_LOGIC; 
  signal AC_reg_1_FFY_RSTAND_3772 : STD_LOGIC; 
  signal AC_reg_3_FFY_RSTAND_3912 : STD_LOGIC; 
  signal AC_reg_4_FFY_RSTAND_3982 : STD_LOGIC; 
  signal AC_reg_5_FFY_RSTAND_4052 : STD_LOGIC; 
  signal CU_loadREM_FFX_RSTAND_4618 : STD_LOGIC; 
  signal NZ_data_Z_FFX_RSTAND_4777 : STD_LOGIC; 
  signal CU_next_state_1_FFX_RSTAND_4836 : STD_LOGIC; 
  signal CU_next_state_0_FFX_SET : STD_LOGIC; 
  signal CU_loadAC_FFY_RSTAND_5942 : STD_LOGIC; 
  signal CU_next_state_6_FFY_RSTAND_5965 : STD_LOGIC; 
  signal NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_3_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_2_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_1_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_0_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_0_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_1_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_8_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_9_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_16_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_17_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_24_Q : STD_LOGIC;
 
  signal NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_25_Q : STD_LOGIC;
 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NlwInverterSignal_alu_MULTIPLICATION_1_CLK : STD_LOGIC; 
  signal NlwInverterSignal_alu_MULTIPLICATION_2_CLK : STD_LOGIC; 
  signal NlwInverterSignal_alu_MULTIPLICATION_0_CLK : STD_LOGIC; 
  signal NlwInverterSignal_alu_MULTIPLICATION_3_CLK : STD_LOGIC; 
  signal NlwInverterSignal_alu_MULTIPLICATION_4_CLK : STD_LOGIC; 
  signal NlwInverterSignal_alu_MULTIPLICATION_5_CLK : STD_LOGIC; 
  signal NlwInverterSignal_alu_MULTIPLICATION_6_CLK : STD_LOGIC; 
  signal NlwInverterSignal_alu_MULTIPLICATION_7_CLK : STD_LOGIC; 
  signal CU_current_state : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal CU_next_state : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal MEM_output : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal AC_reg : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal R_D_M_reg : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal RI_reg : STD_LOGIC_VECTOR ( 7 downto 4 ); 
  signal CU_sel_ula : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal ULA_output : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal CU_wr_enable_mem : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal alu_MULTIPLICATION_mult0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_MULTIPLICATION : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_result_addsub0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal CU_state_timer : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal CU_Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal PC_data : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal R_E_M_reg : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal CU_next_state_mux0012 : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal muxrdm_output : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal CU_sel_ula_mux0000 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal alu_Madd_result_addsub0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal CU_Mcount_state_timer_lut : STD_LOGIC_VECTOR ( 31 downto 1 ); 
  signal PC_Mcount_data_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal CU_current_state_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal CU_current_state_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal MPX_output : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B : STD_LOGIC_VECTOR ( 17 downto 0 ); 
begin
  CU_next_state_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X25Y8",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state_mux0012(2),
      O => CU_next_state_11_DXMUX_1734
    );
  CU_next_state_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X25Y8",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state_mux0012(3),
      O => CU_next_state_11_DYMUX_1720
    );
  CU_next_state_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y8",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_next_state_11_SRINV_1711
    );
  CU_next_state_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y8",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_next_state_11_CLKINV_1710
    );
  CU_next_state_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state_mux0012(0),
      O => CU_next_state_13_DXMUX_1776
    );
  CU_next_state_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state_mux0012(1),
      O => CU_next_state_13_DYMUX_1762
    );
  CU_next_state_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_next_state_13_SRINV_1754
    );
  CU_next_state_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_next_state_13_CLKINV_1753
    );
  R_D_M_reg_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => muxrdm_output(1),
      O => R_D_M_reg_1_DXMUX_1821
    );
  R_D_M_reg_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => muxrdm_output(0),
      O => R_D_M_reg_1_DYMUX_1805
    );
  R_D_M_reg_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => R_D_M_reg_1_SRINV_1796
    );
  R_D_M_reg_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => R_D_M_reg_1_CLKINV_1795
    );
  R_D_M_reg_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_loadRDM_1452,
      O => R_D_M_reg_1_CEINV_1794
    );
  mux_rdm_S_0_1 : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X24Y29"
    )
    port map (
      ADR0 => MEM_output(0),
      ADR1 => VCC,
      ADR2 => AC_reg(0),
      ADR3 => CU_sel_mux_RDM_1453,
      O => muxrdm_output(0)
    );
  CU_loadRDM_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y11",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_loadRDM_mux0000,
      O => CU_loadRDM_DYMUX_1845
    );
  CU_loadRDM_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y11",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_loadRDM_CLKINV_1834
    );
  mux_rdm_S_3_1 : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X24Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => AC_reg(3),
      ADR2 => MEM_output(3),
      ADR3 => CU_sel_mux_RDM_1453,
      O => muxrdm_output(3)
    );
  R_D_M_reg_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => muxrdm_output(3),
      O => R_D_M_reg_3_DXMUX_1890
    );
  R_D_M_reg_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => muxrdm_output(2),
      O => R_D_M_reg_3_DYMUX_1874
    );
  R_D_M_reg_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => R_D_M_reg_3_SRINV_1865
    );
  R_D_M_reg_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => R_D_M_reg_3_CLKINV_1864
    );
  R_D_M_reg_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_loadRDM_1452,
      O => R_D_M_reg_3_CEINV_1863
    );
  CU_sel_ula_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_ula_mux0000(1),
      O => CU_sel_ula_1_DXMUX_1931
    );
  CU_sel_ula_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_ula_mux0000(2),
      O => CU_sel_ula_1_DYMUX_1919
    );
  CU_sel_ula_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_sel_ula_1_CLKINV_1911
    );
  CU_sel_ula_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_ula_and0000_0,
      O => CU_sel_ula_1_CEINV_1910
    );
  mux_rdm_S_5_1 : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X22Y32"
    )
    port map (
      ADR0 => AC_reg(5),
      ADR1 => VCC,
      ADR2 => MEM_output(5),
      ADR3 => CU_sel_mux_RDM_1453,
      O => muxrdm_output(5)
    );
  R_D_M_reg_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => muxrdm_output(5),
      O => R_D_M_reg_5_DXMUX_1974
    );
  R_D_M_reg_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => muxrdm_output(4),
      O => R_D_M_reg_5_DYMUX_1958
    );
  R_D_M_reg_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => R_D_M_reg_5_SRINV_1949
    );
  R_D_M_reg_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => R_D_M_reg_5_CLKINV_1948
    );
  R_D_M_reg_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_loadRDM_1452,
      O => R_D_M_reg_5_CEINV_1947
    );
  R_D_M_reg_4 : X_FF
    generic map(
      LOC => "SLICE_X22Y32",
      INIT => '0'
    )
    port map (
      I => R_D_M_reg_5_DYMUX_1958,
      CE => R_D_M_reg_5_CEINV_1947,
      CLK => R_D_M_reg_5_CLKINV_1948,
      SET => GND,
      RST => R_D_M_reg_5_SRINV_1949,
      O => R_D_M_reg(4)
    );
  CU_sel_ula_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => exec_NOP,
      O => exec_NOP_0
    );
  CU_sel_ula_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_ula_mux0000(0),
      O => CU_sel_ula_2_DYMUX_2003
    );
  CU_sel_ula_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_sel_ula_2_CLKINV_1995
    );
  CU_sel_ula_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_ula_and0000_0,
      O => CU_sel_ula_2_CEINV_1994
    );
  mux_rdm_S_7_1 : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X22Y28"
    )
    port map (
      ADR0 => MEM_output(7),
      ADR1 => NZ_data_N_1484,
      ADR2 => VCC,
      ADR3 => CU_sel_mux_RDM_1453,
      O => muxrdm_output(7)
    );
  R_D_M_reg_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => muxrdm_output(7),
      O => R_D_M_reg_7_DXMUX_2053
    );
  R_D_M_reg_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => muxrdm_output(6),
      O => R_D_M_reg_7_DYMUX_2037
    );
  R_D_M_reg_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => R_D_M_reg_7_SRINV_2028
    );
  R_D_M_reg_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => R_D_M_reg_7_CLKINV_2027
    );
  R_D_M_reg_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_loadRDM_1452,
      O => R_D_M_reg_7_CEINV_2026
    );
  R_D_M_reg_6 : X_FF
    generic map(
      LOC => "SLICE_X22Y28",
      INIT => '0'
    )
    port map (
      I => R_D_M_reg_7_DYMUX_2037,
      CE => R_D_M_reg_7_CEINV_2026,
      CLK => R_D_M_reg_7_CLKINV_2027,
      SET => GND,
      RST => R_D_M_reg_7_SRINV_2028,
      O => R_D_M_reg(6)
    );
  CU_current_state_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y8",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state(3),
      O => CU_current_state_3_DXMUX_2076
    );
  CU_current_state_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y8",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state(2),
      O => CU_current_state_3_DYMUX_2070
    );
  CU_current_state_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y8",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_current_state_3_CLKINV_2068
    );
  CU_current_state_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y8",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_current_state_not0001_inv_0,
      O => CU_current_state_3_CEINV_2067
    );
  CU_next_state_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y9",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state_mux0012(6),
      O => CU_next_state_7_DXMUX_2109
    );
  CU_next_state_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y9",
      PATHPULSE => 638 ps
    )
    port map (
      I => N32_pack_2,
      O => N32
    );
  CU_next_state_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y9",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_next_state_7_CLKINV_2093
    );
  CU_next_state_7 : X_FF
    generic map(
      LOC => "SLICE_X21Y9",
      INIT => '0'
    )
    port map (
      I => CU_next_state_7_DXMUX_2109,
      CE => VCC,
      CLK => CU_next_state_7_CLKINV_2093,
      SET => GND,
      RST => CU_next_state_7_FFX_RSTAND_2114,
      O => CU_next_state(7)
    );
  CU_next_state_7_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X21Y9",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_next_state_7_FFX_RSTAND_2114
    );
  CU_current_state_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state(5),
      O => CU_current_state_5_DXMUX_2131
    );
  CU_current_state_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state(4),
      O => CU_current_state_5_DYMUX_2125
    );
  CU_current_state_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_current_state_5_CLKINV_2123
    );
  CU_current_state_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_current_state_not0001_inv_0,
      O => CU_current_state_5_CEINV_2122
    );
  CU_current_state_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y11",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state(7),
      O => CU_current_state_7_DXMUX_2151
    );
  CU_current_state_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y11",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state(6),
      O => CU_current_state_7_DYMUX_2145
    );
  CU_current_state_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y11",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_current_state_7_CLKINV_2143
    );
  CU_current_state_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y11",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_current_state_not0001_inv_0,
      O => CU_current_state_7_CEINV_2142
    );
  CU_current_state_9 : X_FF
    generic map(
      LOC => "SLICE_X21Y10",
      INIT => '0'
    )
    port map (
      I => CU_current_state_9_DXMUX_2171,
      CE => CU_current_state_9_CEINV_2162,
      CLK => CU_current_state_9_CLKINV_2163,
      SET => GND,
      RST => GND,
      O => CU_current_state(9)
    );
  CU_current_state_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state(9),
      O => CU_current_state_9_DXMUX_2171
    );
  CU_current_state_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state(8),
      O => CU_current_state_9_DYMUX_2165
    );
  CU_current_state_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_current_state_9_CLKINV_2163
    );
  CU_current_state_9_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_current_state_not0001_inv_0,
      O => CU_current_state_9_CEINV_2162
    );
  CU_N18_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_N18,
      O => CU_N18_0
    );
  CU_N18_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_loadRDM_mux00004_2190,
      O => CU_loadRDM_mux00004_0
    );
  N30_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y17",
      PATHPULSE => 638 ps
    )
    port map (
      I => N30,
      O => N30_0
    );
  alu_MULTIPLICATION_cmp_eq0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_MULTIPLICATION_cmp_eq0000,
      O => alu_MULTIPLICATION_cmp_eq0000_0
    );
  CU_stop_s_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X25Y9",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_stop_s_BYINV_2232,
      O => CU_stop_s_DYMUX_2233
    );
  CU_stop_s_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y9",
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => CU_stop_s_BYINV_2232
    );
  CU_stop_s_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y9",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_stop_s_CLKINV_2230
    );
  CU_stop_s_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y9",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_current_state(11),
      O => CU_stop_s_CEINV_2229
    );
  CU_loadRI_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y11",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_loadRI_mux0000_2266,
      O => CU_loadRI_DXMUX_2269
    );
  CU_loadRI_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y11",
      PATHPULSE => 638 ps
    )
    port map (
      I => N10_pack_2,
      O => N10
    );
  CU_loadRI_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y11",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_loadRI_CLKINV_2253
    );
  CU_current_state_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state(11),
      O => CU_current_state_11_DXMUX_2291
    );
  CU_current_state_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state(10),
      O => CU_current_state_11_DYMUX_2285
    );
  CU_current_state_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_current_state_11_CLKINV_2283
    );
  CU_current_state_11_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_current_state_not0001_inv_0,
      O => CU_current_state_11_CEINV_2282
    );
  CU_current_state_12 : X_FF
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => '0'
    )
    port map (
      I => CU_current_state_13_DYMUX_2305,
      CE => CU_current_state_13_CEINV_2302,
      CLK => CU_current_state_13_CLKINV_2303,
      SET => GND,
      RST => GND,
      O => CU_current_state(12)
    );
  CU_current_state_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state(13),
      O => CU_current_state_13_DXMUX_2311
    );
  CU_current_state_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state(12),
      O => CU_current_state_13_DYMUX_2305
    );
  CU_current_state_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_current_state_13_CLKINV_2303
    );
  CU_current_state_13_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_current_state_not0001_inv_0,
      O => CU_current_state_13_CEINV_2302
    );
  alu_Z_cmp_eq00007 : X_LUT4
    generic map(
      INIT => X"000F",
      LOC => "SLICE_X24Y30"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => ULA_output(0),
      ADR3 => ULA_output(1),
      O => alu_Z_cmp_eq00007_2325
    );
  alu_Z_cmp_eq00007_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_Z_cmp_eq00007_2325,
      O => alu_Z_cmp_eq00007_0
    );
  CU_next_state_mux0012_12_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y11",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state_mux0012_12_13_2349,
      O => CU_next_state_mux0012_12_13_0
    );
  CU_next_state_mux0012_12_13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y11",
      PATHPULSE => 638 ps
    )
    port map (
      I => N24_pack_1,
      O => N24
    );
  RI_reg_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => R_D_M_reg(5),
      O => RI_reg_5_DXMUX_2372
    );
  RI_reg_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => R_D_M_reg(4),
      O => RI_reg_5_DYMUX_2363
    );
  RI_reg_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => RI_reg_5_SRINV_2361
    );
  RI_reg_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => RI_reg_5_CLKINV_2360
    );
  RI_reg_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_loadRI_1515,
      O => RI_reg_5_CEINV_2359
    );
  RI_reg_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y17",
      PATHPULSE => 638 ps
    )
    port map (
      I => R_D_M_reg(7),
      O => RI_reg_7_DXMUX_2400
    );
  RI_reg_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y17",
      PATHPULSE => 638 ps
    )
    port map (
      I => R_D_M_reg(6),
      O => RI_reg_7_DYMUX_2391
    );
  RI_reg_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y17",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => RI_reg_7_SRINV_2389
    );
  RI_reg_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y17",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => RI_reg_7_CLKINV_2388
    );
  RI_reg_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y17",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_loadRI_1515,
      O => RI_reg_7_CEINV_2387
    );
  CU_current_state_not0001_inv_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y11",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_current_state_not0001_inv,
      O => CU_current_state_not0001_inv_0
    );
  CU_loadPC_mux00001 : X_LUT4
    generic map(
      INIT => X"F2F2",
      LOC => "SLICE_X25Y14"
    )
    port map (
      ADR0 => CU_loadPC_1524,
      ADR1 => CU_current_state(1),
      ADR2 => CU_current_state(8),
      ADR3 => VCC,
      O => CU_loadPC_mux0000
    );
  CU_loadPC_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X25Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_loadPC_mux0000,
      O => CU_loadPC_DXMUX_2448
    );
  CU_loadPC_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => PC_data_not0001,
      O => PC_data_not0001_0
    );
  CU_loadPC_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_loadPC_CLKINV_2429
    );
  CU_wr_enable_mem_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_wr_enable_mem_0_mux0000,
      O => CU_wr_enable_mem_0_DXMUX_2483
    );
  CU_wr_enable_mem_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state_mux0012_13_14_2472,
      O => CU_next_state_mux0012_13_14_0
    );
  CU_wr_enable_mem_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_wr_enable_mem_0_CLKINV_2465
    );
  alu_MULTIPLICATION_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_MULTIPLICATION_mult0000(1),
      O => alu_MULTIPLICATION_1_DXMUX_2502
    );
  alu_MULTIPLICATION_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_MULTIPLICATION_mult0000(0),
      O => alu_MULTIPLICATION_1_DYMUX_2497
    );
  alu_MULTIPLICATION_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X26Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_MULTIPLICATION_cmp_eq0000_0,
      O => alu_MULTIPLICATION_1_CLKINVNOT
    );
  alu_MULTIPLICATION_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_MULTIPLICATION_mult0000(3),
      O => alu_MULTIPLICATION_3_DXMUX_2518
    );
  alu_MULTIPLICATION_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_MULTIPLICATION_mult0000(2),
      O => alu_MULTIPLICATION_3_DYMUX_2513
    );
  alu_MULTIPLICATION_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X26Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_MULTIPLICATION_cmp_eq0000_0,
      O => alu_MULTIPLICATION_3_CLKINVNOT
    );
  alu_MULTIPLICATION_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_MULTIPLICATION_mult0000(5),
      O => alu_MULTIPLICATION_5_DXMUX_2534
    );
  alu_MULTIPLICATION_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_MULTIPLICATION_mult0000(4),
      O => alu_MULTIPLICATION_5_DYMUX_2529
    );
  alu_MULTIPLICATION_5_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X22Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_MULTIPLICATION_cmp_eq0000_0,
      O => alu_MULTIPLICATION_5_CLKINVNOT
    );
  alu_MULTIPLICATION_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_MULTIPLICATION_mult0000(7),
      O => alu_MULTIPLICATION_7_DXMUX_2550
    );
  alu_MULTIPLICATION_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_MULTIPLICATION_mult0000(6),
      O => alu_MULTIPLICATION_7_DYMUX_2545
    );
  alu_MULTIPLICATION_7_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X26Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_MULTIPLICATION_cmp_eq0000_0,
      O => alu_MULTIPLICATION_7_CLKINVNOT
    );
  CU_current_state_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state(1),
      O => CU_current_state_1_DXMUX_2569
    );
  CU_current_state_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state(0),
      O => CU_current_state_1_DYMUX_2563
    );
  CU_current_state_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_current_state_1_CLKINV_2561
    );
  CU_current_state_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_current_state_not0001_inv_0,
      O => CU_current_state_1_CEINV_2560
    );
  alu_result_addsub0000_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_result_addsub0000_0_XORF_2608,
      O => alu_result_addsub0000(0)
    );
  alu_result_addsub0000_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X25Y29"
    )
    port map (
      I0 => alu_result_addsub0000_0_CYINIT_2607,
      I1 => alu_Madd_result_addsub0000_lut(0),
      O => alu_result_addsub0000_0_XORF_2608
    );
  alu_result_addsub0000_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X25Y29"
    )
    port map (
      IA => alu_result_addsub0000_0_CY0F_2606,
      IB => alu_result_addsub0000_0_CYINIT_2607,
      SEL => alu_result_addsub0000_0_CYSELF_2598,
      O => alu_Madd_result_addsub0000_cy_0_Q
    );
  alu_result_addsub0000_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X25Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_result_addsub0000_0_BXINV_2596,
      O => alu_result_addsub0000_0_CYINIT_2607
    );
  alu_result_addsub0000_0_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X25Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg(0),
      O => alu_result_addsub0000_0_CY0F_2606
    );
  alu_result_addsub0000_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X25Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_Madd_result_addsub0000_lut(0),
      O => alu_result_addsub0000_0_CYSELF_2598
    );
  alu_result_addsub0000_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => alu_result_addsub0000_0_BXINV_2596
    );
  alu_result_addsub0000_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_result_addsub0000_0_XORG_2594,
      O => alu_result_addsub0000(1)
    );
  alu_result_addsub0000_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X25Y29"
    )
    port map (
      I0 => alu_Madd_result_addsub0000_cy_0_Q,
      I1 => alu_Madd_result_addsub0000_lut(1),
      O => alu_result_addsub0000_0_XORG_2594
    );
  alu_result_addsub0000_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_result_addsub0000_0_CYMUXG_2593,
      O => alu_Madd_result_addsub0000_cy_1_Q
    );
  alu_result_addsub0000_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X25Y29"
    )
    port map (
      IA => alu_result_addsub0000_0_CY0G_2591,
      IB => alu_Madd_result_addsub0000_cy_0_Q,
      SEL => alu_result_addsub0000_0_CYSELG_2583,
      O => alu_result_addsub0000_0_CYMUXG_2593
    );
  alu_result_addsub0000_0_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X25Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg(1),
      O => alu_result_addsub0000_0_CY0G_2591
    );
  alu_result_addsub0000_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X25Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_Madd_result_addsub0000_lut(1),
      O => alu_result_addsub0000_0_CYSELG_2583
    );
  alu_result_addsub0000_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_result_addsub0000_2_XORF_2647,
      O => alu_result_addsub0000(2)
    );
  alu_result_addsub0000_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X25Y30"
    )
    port map (
      I0 => alu_result_addsub0000_2_CYINIT_2646,
      I1 => alu_Madd_result_addsub0000_lut(2),
      O => alu_result_addsub0000_2_XORF_2647
    );
  alu_result_addsub0000_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X25Y30"
    )
    port map (
      IA => alu_result_addsub0000_2_CY0F_2645,
      IB => alu_result_addsub0000_2_CYINIT_2646,
      SEL => alu_result_addsub0000_2_CYSELF_2633,
      O => alu_Madd_result_addsub0000_cy_2_Q
    );
  alu_result_addsub0000_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X25Y30"
    )
    port map (
      IA => alu_result_addsub0000_2_CY0F_2645,
      IB => alu_result_addsub0000_2_CY0F_2645,
      SEL => alu_result_addsub0000_2_CYSELF_2633,
      O => alu_result_addsub0000_2_CYMUXF2_2628
    );
  alu_result_addsub0000_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X25Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_Madd_result_addsub0000_cy_1_Q,
      O => alu_result_addsub0000_2_CYINIT_2646
    );
  alu_result_addsub0000_2_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X25Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg(2),
      O => alu_result_addsub0000_2_CY0F_2645
    );
  alu_result_addsub0000_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X25Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_Madd_result_addsub0000_lut(2),
      O => alu_result_addsub0000_2_CYSELF_2633
    );
  alu_result_addsub0000_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_result_addsub0000_2_XORG_2635,
      O => alu_result_addsub0000(3)
    );
  alu_result_addsub0000_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X25Y30"
    )
    port map (
      I0 => alu_Madd_result_addsub0000_cy_2_Q,
      I1 => alu_Madd_result_addsub0000_lut(3),
      O => alu_result_addsub0000_2_XORG_2635
    );
  alu_result_addsub0000_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_result_addsub0000_2_CYMUXFAST_2632,
      O => alu_Madd_result_addsub0000_cy_3_Q
    );
  alu_result_addsub0000_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X25Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_Madd_result_addsub0000_cy_1_Q,
      O => alu_result_addsub0000_2_FASTCARRY_2630
    );
  alu_result_addsub0000_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X25Y30"
    )
    port map (
      I0 => alu_result_addsub0000_2_CYSELG_2619,
      I1 => alu_result_addsub0000_2_CYSELF_2633,
      O => alu_result_addsub0000_2_CYAND_2631
    );
  alu_result_addsub0000_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X25Y30"
    )
    port map (
      IA => alu_result_addsub0000_2_CYMUXG2_2629,
      IB => alu_result_addsub0000_2_FASTCARRY_2630,
      SEL => alu_result_addsub0000_2_CYAND_2631,
      O => alu_result_addsub0000_2_CYMUXFAST_2632
    );
  alu_result_addsub0000_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X25Y30"
    )
    port map (
      IA => alu_result_addsub0000_2_CY0G_2627,
      IB => alu_result_addsub0000_2_CYMUXF2_2628,
      SEL => alu_result_addsub0000_2_CYSELG_2619,
      O => alu_result_addsub0000_2_CYMUXG2_2629
    );
  alu_result_addsub0000_2_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X25Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg(3),
      O => alu_result_addsub0000_2_CY0G_2627
    );
  alu_result_addsub0000_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X25Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_Madd_result_addsub0000_lut(3),
      O => alu_result_addsub0000_2_CYSELG_2619
    );
  alu_result_addsub0000_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_result_addsub0000_4_XORF_2686,
      O => alu_result_addsub0000(4)
    );
  alu_result_addsub0000_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X25Y31"
    )
    port map (
      I0 => alu_result_addsub0000_4_CYINIT_2685,
      I1 => alu_Madd_result_addsub0000_lut(4),
      O => alu_result_addsub0000_4_XORF_2686
    );
  alu_result_addsub0000_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X25Y31"
    )
    port map (
      IA => alu_result_addsub0000_4_CY0F_2684,
      IB => alu_result_addsub0000_4_CYINIT_2685,
      SEL => alu_result_addsub0000_4_CYSELF_2672,
      O => alu_Madd_result_addsub0000_cy_4_Q
    );
  alu_result_addsub0000_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X25Y31"
    )
    port map (
      IA => alu_result_addsub0000_4_CY0F_2684,
      IB => alu_result_addsub0000_4_CY0F_2684,
      SEL => alu_result_addsub0000_4_CYSELF_2672,
      O => alu_result_addsub0000_4_CYMUXF2_2667
    );
  alu_result_addsub0000_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X25Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_Madd_result_addsub0000_cy_3_Q,
      O => alu_result_addsub0000_4_CYINIT_2685
    );
  alu_result_addsub0000_4_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X25Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg(4),
      O => alu_result_addsub0000_4_CY0F_2684
    );
  alu_result_addsub0000_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X25Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_Madd_result_addsub0000_lut(4),
      O => alu_result_addsub0000_4_CYSELF_2672
    );
  alu_result_addsub0000_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_result_addsub0000_4_XORG_2674,
      O => alu_result_addsub0000(5)
    );
  alu_result_addsub0000_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X25Y31"
    )
    port map (
      I0 => alu_Madd_result_addsub0000_cy_4_Q,
      I1 => alu_Madd_result_addsub0000_lut(5),
      O => alu_result_addsub0000_4_XORG_2674
    );
  alu_result_addsub0000_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X25Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_Madd_result_addsub0000_cy_3_Q,
      O => alu_result_addsub0000_4_FASTCARRY_2669
    );
  alu_result_addsub0000_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X25Y31"
    )
    port map (
      I0 => alu_result_addsub0000_4_CYSELG_2658,
      I1 => alu_result_addsub0000_4_CYSELF_2672,
      O => alu_result_addsub0000_4_CYAND_2670
    );
  alu_result_addsub0000_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X25Y31"
    )
    port map (
      IA => alu_result_addsub0000_4_CYMUXG2_2668,
      IB => alu_result_addsub0000_4_FASTCARRY_2669,
      SEL => alu_result_addsub0000_4_CYAND_2670,
      O => alu_result_addsub0000_4_CYMUXFAST_2671
    );
  alu_result_addsub0000_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X25Y31"
    )
    port map (
      IA => alu_result_addsub0000_4_CY0G_2666,
      IB => alu_result_addsub0000_4_CYMUXF2_2667,
      SEL => alu_result_addsub0000_4_CYSELG_2658,
      O => alu_result_addsub0000_4_CYMUXG2_2668
    );
  alu_result_addsub0000_4_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X25Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg(5),
      O => alu_result_addsub0000_4_CY0G_2666
    );
  alu_result_addsub0000_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X25Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_Madd_result_addsub0000_lut(5),
      O => alu_result_addsub0000_4_CYSELG_2658
    );
  alu_result_addsub0000_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_result_addsub0000_6_XORF_2717,
      O => alu_result_addsub0000(6)
    );
  alu_result_addsub0000_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X25Y32"
    )
    port map (
      I0 => alu_result_addsub0000_6_CYINIT_2716,
      I1 => alu_Madd_result_addsub0000_lut(6),
      O => alu_result_addsub0000_6_XORF_2717
    );
  alu_result_addsub0000_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X25Y32"
    )
    port map (
      IA => alu_result_addsub0000_6_CY0F_2715,
      IB => alu_result_addsub0000_6_CYINIT_2716,
      SEL => alu_result_addsub0000_6_CYSELF_2707,
      O => alu_Madd_result_addsub0000_cy_6_Q
    );
  alu_result_addsub0000_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X25Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_result_addsub0000_4_CYMUXFAST_2671,
      O => alu_result_addsub0000_6_CYINIT_2716
    );
  alu_result_addsub0000_6_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X25Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg(6),
      O => alu_result_addsub0000_6_CY0F_2715
    );
  alu_result_addsub0000_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X25Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_Madd_result_addsub0000_lut(6),
      O => alu_result_addsub0000_6_CYSELF_2707
    );
  alu_result_addsub0000_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_result_addsub0000_6_XORG_2704,
      O => alu_result_addsub0000(7)
    );
  alu_result_addsub0000_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X25Y32"
    )
    port map (
      I0 => alu_Madd_result_addsub0000_cy_6_Q,
      I1 => alu_Madd_result_addsub0000_lut(7),
      O => alu_result_addsub0000_6_XORG_2704
    );
  CU_Result_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X1Y18"
    )
    port map (
      O => CU_Result_0_LOGIC_ONE_2735
    );
  CU_Result_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X1Y18"
    )
    port map (
      O => CU_Result_0_LOGIC_ZERO_2752
    );
  CU_Result_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_0_XORF_2753,
      O => CU_Result(0)
    );
  CU_Result_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X1Y18"
    )
    port map (
      I0 => CU_Result_0_CYINIT_2751,
      I1 => CU_Result_0_F,
      O => CU_Result_0_XORF_2753
    );
  CU_Result_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X1Y18"
    )
    port map (
      IA => CU_Result_0_LOGIC_ZERO_2752,
      IB => CU_Result_0_CYINIT_2751,
      SEL => CU_Result_0_CYSELF_2742,
      O => CU_Mcount_state_timer_cy_0_Q
    );
  CU_Result_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X1Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_0_BXINV_2740,
      O => CU_Result_0_CYINIT_2751
    );
  CU_Result_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_0_F,
      O => CU_Result_0_CYSELF_2742
    );
  CU_Result_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => CU_Result_0_BXINV_2740
    );
  CU_Result_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_0_XORG_2738,
      O => CU_Result(1)
    );
  CU_Result_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X1Y18"
    )
    port map (
      I0 => CU_Mcount_state_timer_cy_0_Q,
      I1 => CU_Mcount_state_timer_lut(1),
      O => CU_Result_0_XORG_2738
    );
  CU_Result_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_0_CYMUXG_2737,
      O => CU_Mcount_state_timer_cy_1_Q
    );
  CU_Result_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X1Y18"
    )
    port map (
      IA => CU_Result_0_LOGIC_ONE_2735,
      IB => CU_Mcount_state_timer_cy_0_Q,
      SEL => CU_Result_0_CYSELG_2726,
      O => CU_Result_0_CYMUXG_2737
    );
  CU_Result_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_lut(1),
      O => CU_Result_0_CYSELG_2726
    );
  CU_Result_2_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X1Y19"
    )
    port map (
      O => CU_Result_2_LOGIC_ONE_2771
    );
  CU_Result_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_2_XORF_2791,
      O => CU_Result(2)
    );
  CU_Result_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X1Y19"
    )
    port map (
      I0 => CU_Result_2_CYINIT_2790,
      I1 => CU_Mcount_state_timer_lut(2),
      O => CU_Result_2_XORF_2791
    );
  CU_Result_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X1Y19"
    )
    port map (
      IA => CU_Result_2_LOGIC_ONE_2771,
      IB => CU_Result_2_CYINIT_2790,
      SEL => CU_Result_2_CYSELF_2777,
      O => CU_Mcount_state_timer_cy_2_Q
    );
  CU_Result_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y19"
    )
    port map (
      IA => CU_Result_2_LOGIC_ONE_2771,
      IB => CU_Result_2_LOGIC_ONE_2771,
      SEL => CU_Result_2_CYSELF_2777,
      O => CU_Result_2_CYMUXF2_2772
    );
  CU_Result_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X1Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_cy_1_Q,
      O => CU_Result_2_CYINIT_2790
    );
  CU_Result_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_lut(2),
      O => CU_Result_2_CYSELF_2777
    );
  CU_Result_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_2_XORG_2779,
      O => CU_Result(3)
    );
  CU_Result_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X1Y19"
    )
    port map (
      I0 => CU_Mcount_state_timer_cy_2_Q,
      I1 => CU_Mcount_state_timer_lut(3),
      O => CU_Result_2_XORG_2779
    );
  CU_Result_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_2_CYMUXFAST_2776,
      O => CU_Mcount_state_timer_cy_3_Q
    );
  CU_Result_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_cy_1_Q,
      O => CU_Result_2_FASTCARRY_2774
    );
  CU_Result_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y19"
    )
    port map (
      I0 => CU_Result_2_CYSELG_2762,
      I1 => CU_Result_2_CYSELF_2777,
      O => CU_Result_2_CYAND_2775
    );
  CU_Result_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y19"
    )
    port map (
      IA => CU_Result_2_CYMUXG2_2773,
      IB => CU_Result_2_FASTCARRY_2774,
      SEL => CU_Result_2_CYAND_2775,
      O => CU_Result_2_CYMUXFAST_2776
    );
  CU_Result_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y19"
    )
    port map (
      IA => CU_Result_2_LOGIC_ONE_2771,
      IB => CU_Result_2_CYMUXF2_2772,
      SEL => CU_Result_2_CYSELG_2762,
      O => CU_Result_2_CYMUXG2_2773
    );
  CU_Result_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_lut(3),
      O => CU_Result_2_CYSELG_2762
    );
  CU_Result_4_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X1Y20"
    )
    port map (
      O => CU_Result_4_LOGIC_ONE_2809
    );
  CU_Result_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_4_XORF_2829,
      O => CU_Result(4)
    );
  CU_Result_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X1Y20"
    )
    port map (
      I0 => CU_Result_4_CYINIT_2828,
      I1 => CU_Mcount_state_timer_lut(4),
      O => CU_Result_4_XORF_2829
    );
  CU_Result_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X1Y20"
    )
    port map (
      IA => CU_Result_4_LOGIC_ONE_2809,
      IB => CU_Result_4_CYINIT_2828,
      SEL => CU_Result_4_CYSELF_2815,
      O => CU_Mcount_state_timer_cy_4_Q
    );
  CU_Result_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y20"
    )
    port map (
      IA => CU_Result_4_LOGIC_ONE_2809,
      IB => CU_Result_4_LOGIC_ONE_2809,
      SEL => CU_Result_4_CYSELF_2815,
      O => CU_Result_4_CYMUXF2_2810
    );
  CU_Result_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X1Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_cy_3_Q,
      O => CU_Result_4_CYINIT_2828
    );
  CU_Result_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_lut(4),
      O => CU_Result_4_CYSELF_2815
    );
  CU_Result_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_4_XORG_2817,
      O => CU_Result(5)
    );
  CU_Result_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X1Y20"
    )
    port map (
      I0 => CU_Mcount_state_timer_cy_4_Q,
      I1 => CU_Mcount_state_timer_lut(5),
      O => CU_Result_4_XORG_2817
    );
  CU_Result_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_4_CYMUXFAST_2814,
      O => CU_Mcount_state_timer_cy_5_Q
    );
  CU_Result_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_cy_3_Q,
      O => CU_Result_4_FASTCARRY_2812
    );
  CU_Result_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y20"
    )
    port map (
      I0 => CU_Result_4_CYSELG_2800,
      I1 => CU_Result_4_CYSELF_2815,
      O => CU_Result_4_CYAND_2813
    );
  CU_Result_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y20"
    )
    port map (
      IA => CU_Result_4_CYMUXG2_2811,
      IB => CU_Result_4_FASTCARRY_2812,
      SEL => CU_Result_4_CYAND_2813,
      O => CU_Result_4_CYMUXFAST_2814
    );
  CU_Result_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y20"
    )
    port map (
      IA => CU_Result_4_LOGIC_ONE_2809,
      IB => CU_Result_4_CYMUXF2_2810,
      SEL => CU_Result_4_CYSELG_2800,
      O => CU_Result_4_CYMUXG2_2811
    );
  CU_Result_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_lut(5),
      O => CU_Result_4_CYSELG_2800
    );
  CU_Result_6_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X1Y21"
    )
    port map (
      O => CU_Result_6_LOGIC_ONE_2847
    );
  CU_Result_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_6_XORF_2867,
      O => CU_Result(6)
    );
  CU_Result_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X1Y21"
    )
    port map (
      I0 => CU_Result_6_CYINIT_2866,
      I1 => CU_Mcount_state_timer_lut(6),
      O => CU_Result_6_XORF_2867
    );
  CU_Result_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X1Y21"
    )
    port map (
      IA => CU_Result_6_LOGIC_ONE_2847,
      IB => CU_Result_6_CYINIT_2866,
      SEL => CU_Result_6_CYSELF_2853,
      O => CU_Mcount_state_timer_cy_6_Q
    );
  CU_Result_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y21"
    )
    port map (
      IA => CU_Result_6_LOGIC_ONE_2847,
      IB => CU_Result_6_LOGIC_ONE_2847,
      SEL => CU_Result_6_CYSELF_2853,
      O => CU_Result_6_CYMUXF2_2848
    );
  CU_Result_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X1Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_cy_5_Q,
      O => CU_Result_6_CYINIT_2866
    );
  CU_Result_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_lut(6),
      O => CU_Result_6_CYSELF_2853
    );
  CU_Result_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_6_XORG_2855,
      O => CU_Result(7)
    );
  CU_Result_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X1Y21"
    )
    port map (
      I0 => CU_Mcount_state_timer_cy_6_Q,
      I1 => CU_Mcount_state_timer_lut(7),
      O => CU_Result_6_XORG_2855
    );
  CU_Result_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_6_CYMUXFAST_2852,
      O => CU_Mcount_state_timer_cy_7_Q
    );
  CU_Result_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_cy_5_Q,
      O => CU_Result_6_FASTCARRY_2850
    );
  CU_Result_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y21"
    )
    port map (
      I0 => CU_Result_6_CYSELG_2838,
      I1 => CU_Result_6_CYSELF_2853,
      O => CU_Result_6_CYAND_2851
    );
  CU_Result_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y21"
    )
    port map (
      IA => CU_Result_6_CYMUXG2_2849,
      IB => CU_Result_6_FASTCARRY_2850,
      SEL => CU_Result_6_CYAND_2851,
      O => CU_Result_6_CYMUXFAST_2852
    );
  CU_Result_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y21"
    )
    port map (
      IA => CU_Result_6_LOGIC_ONE_2847,
      IB => CU_Result_6_CYMUXF2_2848,
      SEL => CU_Result_6_CYSELG_2838,
      O => CU_Result_6_CYMUXG2_2849
    );
  CU_Result_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_lut(7),
      O => CU_Result_6_CYSELG_2838
    );
  CU_Result_8_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X1Y22"
    )
    port map (
      O => CU_Result_8_LOGIC_ONE_2885
    );
  CU_Result_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_8_XORF_2905,
      O => CU_Result(8)
    );
  CU_Result_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X1Y22"
    )
    port map (
      I0 => CU_Result_8_CYINIT_2904,
      I1 => CU_Mcount_state_timer_lut(8),
      O => CU_Result_8_XORF_2905
    );
  CU_Result_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X1Y22"
    )
    port map (
      IA => CU_Result_8_LOGIC_ONE_2885,
      IB => CU_Result_8_CYINIT_2904,
      SEL => CU_Result_8_CYSELF_2891,
      O => CU_Mcount_state_timer_cy_8_Q
    );
  CU_Result_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y22"
    )
    port map (
      IA => CU_Result_8_LOGIC_ONE_2885,
      IB => CU_Result_8_LOGIC_ONE_2885,
      SEL => CU_Result_8_CYSELF_2891,
      O => CU_Result_8_CYMUXF2_2886
    );
  CU_Result_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X1Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_cy_7_Q,
      O => CU_Result_8_CYINIT_2904
    );
  CU_Result_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_lut(8),
      O => CU_Result_8_CYSELF_2891
    );
  CU_Result_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_8_XORG_2893,
      O => CU_Result(9)
    );
  CU_Result_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X1Y22"
    )
    port map (
      I0 => CU_Mcount_state_timer_cy_8_Q,
      I1 => CU_Mcount_state_timer_lut(9),
      O => CU_Result_8_XORG_2893
    );
  CU_Result_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_8_CYMUXFAST_2890,
      O => CU_Mcount_state_timer_cy_9_Q
    );
  CU_Result_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_cy_7_Q,
      O => CU_Result_8_FASTCARRY_2888
    );
  CU_Result_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y22"
    )
    port map (
      I0 => CU_Result_8_CYSELG_2876,
      I1 => CU_Result_8_CYSELF_2891,
      O => CU_Result_8_CYAND_2889
    );
  CU_Result_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y22"
    )
    port map (
      IA => CU_Result_8_CYMUXG2_2887,
      IB => CU_Result_8_FASTCARRY_2888,
      SEL => CU_Result_8_CYAND_2889,
      O => CU_Result_8_CYMUXFAST_2890
    );
  CU_Result_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y22"
    )
    port map (
      IA => CU_Result_8_LOGIC_ONE_2885,
      IB => CU_Result_8_CYMUXF2_2886,
      SEL => CU_Result_8_CYSELG_2876,
      O => CU_Result_8_CYMUXG2_2887
    );
  CU_Result_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_lut(9),
      O => CU_Result_8_CYSELG_2876
    );
  CU_Result_10_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X1Y23"
    )
    port map (
      O => CU_Result_10_LOGIC_ONE_2923
    );
  CU_Result_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_10_XORF_2943,
      O => CU_Result(10)
    );
  CU_Result_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X1Y23"
    )
    port map (
      I0 => CU_Result_10_CYINIT_2942,
      I1 => CU_Mcount_state_timer_lut(10),
      O => CU_Result_10_XORF_2943
    );
  CU_Result_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X1Y23"
    )
    port map (
      IA => CU_Result_10_LOGIC_ONE_2923,
      IB => CU_Result_10_CYINIT_2942,
      SEL => CU_Result_10_CYSELF_2929,
      O => CU_Mcount_state_timer_cy_10_Q
    );
  CU_Result_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y23"
    )
    port map (
      IA => CU_Result_10_LOGIC_ONE_2923,
      IB => CU_Result_10_LOGIC_ONE_2923,
      SEL => CU_Result_10_CYSELF_2929,
      O => CU_Result_10_CYMUXF2_2924
    );
  CU_Result_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X1Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_cy_9_Q,
      O => CU_Result_10_CYINIT_2942
    );
  CU_Result_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_lut(10),
      O => CU_Result_10_CYSELF_2929
    );
  CU_Result_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_10_XORG_2931,
      O => CU_Result(11)
    );
  CU_Result_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X1Y23"
    )
    port map (
      I0 => CU_Mcount_state_timer_cy_10_Q,
      I1 => CU_Mcount_state_timer_lut(11),
      O => CU_Result_10_XORG_2931
    );
  CU_Result_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_10_CYMUXFAST_2928,
      O => CU_Mcount_state_timer_cy_11_Q
    );
  CU_Result_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_cy_9_Q,
      O => CU_Result_10_FASTCARRY_2926
    );
  CU_Result_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y23"
    )
    port map (
      I0 => CU_Result_10_CYSELG_2914,
      I1 => CU_Result_10_CYSELF_2929,
      O => CU_Result_10_CYAND_2927
    );
  CU_Result_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y23"
    )
    port map (
      IA => CU_Result_10_CYMUXG2_2925,
      IB => CU_Result_10_FASTCARRY_2926,
      SEL => CU_Result_10_CYAND_2927,
      O => CU_Result_10_CYMUXFAST_2928
    );
  CU_Result_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y23"
    )
    port map (
      IA => CU_Result_10_LOGIC_ONE_2923,
      IB => CU_Result_10_CYMUXF2_2924,
      SEL => CU_Result_10_CYSELG_2914,
      O => CU_Result_10_CYMUXG2_2925
    );
  CU_Result_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_lut(11),
      O => CU_Result_10_CYSELG_2914
    );
  CU_Result_12_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X1Y24"
    )
    port map (
      O => CU_Result_12_LOGIC_ONE_2961
    );
  CU_Result_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_12_XORF_2981,
      O => CU_Result(12)
    );
  CU_Result_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X1Y24"
    )
    port map (
      I0 => CU_Result_12_CYINIT_2980,
      I1 => CU_Mcount_state_timer_lut(12),
      O => CU_Result_12_XORF_2981
    );
  CU_Result_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X1Y24"
    )
    port map (
      IA => CU_Result_12_LOGIC_ONE_2961,
      IB => CU_Result_12_CYINIT_2980,
      SEL => CU_Result_12_CYSELF_2967,
      O => CU_Mcount_state_timer_cy_12_Q
    );
  CU_Result_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y24"
    )
    port map (
      IA => CU_Result_12_LOGIC_ONE_2961,
      IB => CU_Result_12_LOGIC_ONE_2961,
      SEL => CU_Result_12_CYSELF_2967,
      O => CU_Result_12_CYMUXF2_2962
    );
  CU_Result_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X1Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_cy_11_Q,
      O => CU_Result_12_CYINIT_2980
    );
  CU_Result_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_lut(12),
      O => CU_Result_12_CYSELF_2967
    );
  CU_Result_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_12_XORG_2969,
      O => CU_Result(13)
    );
  CU_Result_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X1Y24"
    )
    port map (
      I0 => CU_Mcount_state_timer_cy_12_Q,
      I1 => CU_Mcount_state_timer_lut(13),
      O => CU_Result_12_XORG_2969
    );
  CU_Result_12_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_12_CYMUXFAST_2966,
      O => CU_Mcount_state_timer_cy_13_Q
    );
  CU_Result_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_cy_11_Q,
      O => CU_Result_12_FASTCARRY_2964
    );
  CU_Result_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y24"
    )
    port map (
      I0 => CU_Result_12_CYSELG_2952,
      I1 => CU_Result_12_CYSELF_2967,
      O => CU_Result_12_CYAND_2965
    );
  CU_Result_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y24"
    )
    port map (
      IA => CU_Result_12_CYMUXG2_2963,
      IB => CU_Result_12_FASTCARRY_2964,
      SEL => CU_Result_12_CYAND_2965,
      O => CU_Result_12_CYMUXFAST_2966
    );
  CU_Result_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y24"
    )
    port map (
      IA => CU_Result_12_LOGIC_ONE_2961,
      IB => CU_Result_12_CYMUXF2_2962,
      SEL => CU_Result_12_CYSELG_2952,
      O => CU_Result_12_CYMUXG2_2963
    );
  CU_Result_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_lut(13),
      O => CU_Result_12_CYSELG_2952
    );
  CU_Result_14_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X1Y25"
    )
    port map (
      O => CU_Result_14_LOGIC_ONE_2999
    );
  CU_Result_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_14_XORF_3019,
      O => CU_Result(14)
    );
  CU_Result_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X1Y25"
    )
    port map (
      I0 => CU_Result_14_CYINIT_3018,
      I1 => CU_Mcount_state_timer_lut(14),
      O => CU_Result_14_XORF_3019
    );
  CU_Result_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X1Y25"
    )
    port map (
      IA => CU_Result_14_LOGIC_ONE_2999,
      IB => CU_Result_14_CYINIT_3018,
      SEL => CU_Result_14_CYSELF_3005,
      O => CU_Mcount_state_timer_cy_14_Q
    );
  CU_Result_14_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y25"
    )
    port map (
      IA => CU_Result_14_LOGIC_ONE_2999,
      IB => CU_Result_14_LOGIC_ONE_2999,
      SEL => CU_Result_14_CYSELF_3005,
      O => CU_Result_14_CYMUXF2_3000
    );
  CU_Result_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X1Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_cy_13_Q,
      O => CU_Result_14_CYINIT_3018
    );
  CU_Result_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_lut(14),
      O => CU_Result_14_CYSELF_3005
    );
  CU_Result_14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_14_XORG_3007,
      O => CU_Result(15)
    );
  CU_Result_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X1Y25"
    )
    port map (
      I0 => CU_Mcount_state_timer_cy_14_Q,
      I1 => CU_Mcount_state_timer_lut(15),
      O => CU_Result_14_XORG_3007
    );
  CU_Result_14_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_14_CYMUXFAST_3004,
      O => CU_Mcount_state_timer_cy_15_Q
    );
  CU_Result_14_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_cy_13_Q,
      O => CU_Result_14_FASTCARRY_3002
    );
  CU_Result_14_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y25"
    )
    port map (
      I0 => CU_Result_14_CYSELG_2990,
      I1 => CU_Result_14_CYSELF_3005,
      O => CU_Result_14_CYAND_3003
    );
  CU_Result_14_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y25"
    )
    port map (
      IA => CU_Result_14_CYMUXG2_3001,
      IB => CU_Result_14_FASTCARRY_3002,
      SEL => CU_Result_14_CYAND_3003,
      O => CU_Result_14_CYMUXFAST_3004
    );
  CU_Result_14_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y25"
    )
    port map (
      IA => CU_Result_14_LOGIC_ONE_2999,
      IB => CU_Result_14_CYMUXF2_3000,
      SEL => CU_Result_14_CYSELG_2990,
      O => CU_Result_14_CYMUXG2_3001
    );
  CU_Result_14_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_lut(15),
      O => CU_Result_14_CYSELG_2990
    );
  CU_Result_16_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X1Y26"
    )
    port map (
      O => CU_Result_16_LOGIC_ONE_3037
    );
  CU_Result_16_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_16_XORF_3057,
      O => CU_Result(16)
    );
  CU_Result_16_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X1Y26"
    )
    port map (
      I0 => CU_Result_16_CYINIT_3056,
      I1 => CU_Mcount_state_timer_lut(16),
      O => CU_Result_16_XORF_3057
    );
  CU_Result_16_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X1Y26"
    )
    port map (
      IA => CU_Result_16_LOGIC_ONE_3037,
      IB => CU_Result_16_CYINIT_3056,
      SEL => CU_Result_16_CYSELF_3043,
      O => CU_Mcount_state_timer_cy_16_Q
    );
  CU_Result_16_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y26"
    )
    port map (
      IA => CU_Result_16_LOGIC_ONE_3037,
      IB => CU_Result_16_LOGIC_ONE_3037,
      SEL => CU_Result_16_CYSELF_3043,
      O => CU_Result_16_CYMUXF2_3038
    );
  CU_Result_16_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X1Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_cy_15_Q,
      O => CU_Result_16_CYINIT_3056
    );
  CU_Result_16_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_lut(16),
      O => CU_Result_16_CYSELF_3043
    );
  CU_Result_16_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_16_XORG_3045,
      O => CU_Result(17)
    );
  CU_Result_16_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X1Y26"
    )
    port map (
      I0 => CU_Mcount_state_timer_cy_16_Q,
      I1 => CU_Mcount_state_timer_lut(17),
      O => CU_Result_16_XORG_3045
    );
  CU_Result_16_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_16_CYMUXFAST_3042,
      O => CU_Mcount_state_timer_cy_17_Q
    );
  CU_Result_16_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_cy_15_Q,
      O => CU_Result_16_FASTCARRY_3040
    );
  CU_Result_16_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y26"
    )
    port map (
      I0 => CU_Result_16_CYSELG_3028,
      I1 => CU_Result_16_CYSELF_3043,
      O => CU_Result_16_CYAND_3041
    );
  CU_Result_16_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y26"
    )
    port map (
      IA => CU_Result_16_CYMUXG2_3039,
      IB => CU_Result_16_FASTCARRY_3040,
      SEL => CU_Result_16_CYAND_3041,
      O => CU_Result_16_CYMUXFAST_3042
    );
  CU_Result_16_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y26"
    )
    port map (
      IA => CU_Result_16_LOGIC_ONE_3037,
      IB => CU_Result_16_CYMUXF2_3038,
      SEL => CU_Result_16_CYSELG_3028,
      O => CU_Result_16_CYMUXG2_3039
    );
  CU_Result_16_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_lut(17),
      O => CU_Result_16_CYSELG_3028
    );
  CU_Result_18_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X1Y27"
    )
    port map (
      O => CU_Result_18_LOGIC_ONE_3075
    );
  CU_Result_18_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_18_XORF_3095,
      O => CU_Result(18)
    );
  CU_Result_18_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X1Y27"
    )
    port map (
      I0 => CU_Result_18_CYINIT_3094,
      I1 => CU_Mcount_state_timer_lut(18),
      O => CU_Result_18_XORF_3095
    );
  CU_Result_18_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X1Y27"
    )
    port map (
      IA => CU_Result_18_LOGIC_ONE_3075,
      IB => CU_Result_18_CYINIT_3094,
      SEL => CU_Result_18_CYSELF_3081,
      O => CU_Mcount_state_timer_cy_18_Q
    );
  CU_Result_18_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y27"
    )
    port map (
      IA => CU_Result_18_LOGIC_ONE_3075,
      IB => CU_Result_18_LOGIC_ONE_3075,
      SEL => CU_Result_18_CYSELF_3081,
      O => CU_Result_18_CYMUXF2_3076
    );
  CU_Result_18_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X1Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_cy_17_Q,
      O => CU_Result_18_CYINIT_3094
    );
  CU_Result_18_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_lut(18),
      O => CU_Result_18_CYSELF_3081
    );
  CU_Result_18_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_18_XORG_3083,
      O => CU_Result(19)
    );
  CU_Result_18_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X1Y27"
    )
    port map (
      I0 => CU_Mcount_state_timer_cy_18_Q,
      I1 => CU_Mcount_state_timer_lut(19),
      O => CU_Result_18_XORG_3083
    );
  CU_Result_18_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_18_CYMUXFAST_3080,
      O => CU_Mcount_state_timer_cy_19_Q
    );
  CU_Result_18_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_cy_17_Q,
      O => CU_Result_18_FASTCARRY_3078
    );
  CU_Result_18_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y27"
    )
    port map (
      I0 => CU_Result_18_CYSELG_3066,
      I1 => CU_Result_18_CYSELF_3081,
      O => CU_Result_18_CYAND_3079
    );
  CU_Result_18_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y27"
    )
    port map (
      IA => CU_Result_18_CYMUXG2_3077,
      IB => CU_Result_18_FASTCARRY_3078,
      SEL => CU_Result_18_CYAND_3079,
      O => CU_Result_18_CYMUXFAST_3080
    );
  CU_Result_18_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y27"
    )
    port map (
      IA => CU_Result_18_LOGIC_ONE_3075,
      IB => CU_Result_18_CYMUXF2_3076,
      SEL => CU_Result_18_CYSELG_3066,
      O => CU_Result_18_CYMUXG2_3077
    );
  CU_Result_18_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_lut(19),
      O => CU_Result_18_CYSELG_3066
    );
  CU_Result_20_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X1Y28"
    )
    port map (
      O => CU_Result_20_LOGIC_ONE_3113
    );
  CU_Result_20_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_20_XORF_3133,
      O => CU_Result(20)
    );
  CU_Result_20_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X1Y28"
    )
    port map (
      I0 => CU_Result_20_CYINIT_3132,
      I1 => CU_Mcount_state_timer_lut(20),
      O => CU_Result_20_XORF_3133
    );
  CU_Result_20_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X1Y28"
    )
    port map (
      IA => CU_Result_20_LOGIC_ONE_3113,
      IB => CU_Result_20_CYINIT_3132,
      SEL => CU_Result_20_CYSELF_3119,
      O => CU_Mcount_state_timer_cy_20_Q
    );
  CU_Result_20_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y28"
    )
    port map (
      IA => CU_Result_20_LOGIC_ONE_3113,
      IB => CU_Result_20_LOGIC_ONE_3113,
      SEL => CU_Result_20_CYSELF_3119,
      O => CU_Result_20_CYMUXF2_3114
    );
  CU_Result_20_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X1Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_cy_19_Q,
      O => CU_Result_20_CYINIT_3132
    );
  CU_Result_20_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_lut(20),
      O => CU_Result_20_CYSELF_3119
    );
  CU_Result_20_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_20_XORG_3121,
      O => CU_Result(21)
    );
  CU_Result_20_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X1Y28"
    )
    port map (
      I0 => CU_Mcount_state_timer_cy_20_Q,
      I1 => CU_Mcount_state_timer_lut(21),
      O => CU_Result_20_XORG_3121
    );
  CU_Result_20_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_20_CYMUXFAST_3118,
      O => CU_Mcount_state_timer_cy_21_Q
    );
  CU_Result_20_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_cy_19_Q,
      O => CU_Result_20_FASTCARRY_3116
    );
  CU_Result_20_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y28"
    )
    port map (
      I0 => CU_Result_20_CYSELG_3104,
      I1 => CU_Result_20_CYSELF_3119,
      O => CU_Result_20_CYAND_3117
    );
  CU_Result_20_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y28"
    )
    port map (
      IA => CU_Result_20_CYMUXG2_3115,
      IB => CU_Result_20_FASTCARRY_3116,
      SEL => CU_Result_20_CYAND_3117,
      O => CU_Result_20_CYMUXFAST_3118
    );
  CU_Result_20_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y28"
    )
    port map (
      IA => CU_Result_20_LOGIC_ONE_3113,
      IB => CU_Result_20_CYMUXF2_3114,
      SEL => CU_Result_20_CYSELG_3104,
      O => CU_Result_20_CYMUXG2_3115
    );
  CU_Result_20_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_lut(21),
      O => CU_Result_20_CYSELG_3104
    );
  CU_Result_22_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X1Y29"
    )
    port map (
      O => CU_Result_22_LOGIC_ONE_3151
    );
  CU_Result_22_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_22_XORF_3171,
      O => CU_Result(22)
    );
  CU_Result_22_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X1Y29"
    )
    port map (
      I0 => CU_Result_22_CYINIT_3170,
      I1 => CU_Mcount_state_timer_lut(22),
      O => CU_Result_22_XORF_3171
    );
  CU_Result_22_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X1Y29"
    )
    port map (
      IA => CU_Result_22_LOGIC_ONE_3151,
      IB => CU_Result_22_CYINIT_3170,
      SEL => CU_Result_22_CYSELF_3157,
      O => CU_Mcount_state_timer_cy_22_Q
    );
  CU_Result_22_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y29"
    )
    port map (
      IA => CU_Result_22_LOGIC_ONE_3151,
      IB => CU_Result_22_LOGIC_ONE_3151,
      SEL => CU_Result_22_CYSELF_3157,
      O => CU_Result_22_CYMUXF2_3152
    );
  CU_Result_22_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X1Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_cy_21_Q,
      O => CU_Result_22_CYINIT_3170
    );
  CU_Result_22_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_lut(22),
      O => CU_Result_22_CYSELF_3157
    );
  CU_Result_22_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_22_XORG_3159,
      O => CU_Result(23)
    );
  CU_Result_22_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X1Y29"
    )
    port map (
      I0 => CU_Mcount_state_timer_cy_22_Q,
      I1 => CU_Mcount_state_timer_lut(23),
      O => CU_Result_22_XORG_3159
    );
  CU_Result_22_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_22_CYMUXFAST_3156,
      O => CU_Mcount_state_timer_cy_23_Q
    );
  CU_Result_22_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_cy_21_Q,
      O => CU_Result_22_FASTCARRY_3154
    );
  CU_Result_22_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y29"
    )
    port map (
      I0 => CU_Result_22_CYSELG_3142,
      I1 => CU_Result_22_CYSELF_3157,
      O => CU_Result_22_CYAND_3155
    );
  CU_Result_22_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y29"
    )
    port map (
      IA => CU_Result_22_CYMUXG2_3153,
      IB => CU_Result_22_FASTCARRY_3154,
      SEL => CU_Result_22_CYAND_3155,
      O => CU_Result_22_CYMUXFAST_3156
    );
  CU_Result_22_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y29"
    )
    port map (
      IA => CU_Result_22_LOGIC_ONE_3151,
      IB => CU_Result_22_CYMUXF2_3152,
      SEL => CU_Result_22_CYSELG_3142,
      O => CU_Result_22_CYMUXG2_3153
    );
  CU_Result_22_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_lut(23),
      O => CU_Result_22_CYSELG_3142
    );
  CU_Result_24_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X1Y30"
    )
    port map (
      O => CU_Result_24_LOGIC_ONE_3189
    );
  CU_Result_24_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_24_XORF_3209,
      O => CU_Result(24)
    );
  CU_Result_24_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X1Y30"
    )
    port map (
      I0 => CU_Result_24_CYINIT_3208,
      I1 => CU_Mcount_state_timer_lut(24),
      O => CU_Result_24_XORF_3209
    );
  CU_Result_24_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X1Y30"
    )
    port map (
      IA => CU_Result_24_LOGIC_ONE_3189,
      IB => CU_Result_24_CYINIT_3208,
      SEL => CU_Result_24_CYSELF_3195,
      O => CU_Mcount_state_timer_cy_24_Q
    );
  CU_Result_24_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y30"
    )
    port map (
      IA => CU_Result_24_LOGIC_ONE_3189,
      IB => CU_Result_24_LOGIC_ONE_3189,
      SEL => CU_Result_24_CYSELF_3195,
      O => CU_Result_24_CYMUXF2_3190
    );
  CU_Result_24_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X1Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_cy_23_Q,
      O => CU_Result_24_CYINIT_3208
    );
  CU_Result_24_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_lut(24),
      O => CU_Result_24_CYSELF_3195
    );
  CU_Result_24_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_24_XORG_3197,
      O => CU_Result(25)
    );
  CU_Result_24_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X1Y30"
    )
    port map (
      I0 => CU_Mcount_state_timer_cy_24_Q,
      I1 => CU_Mcount_state_timer_lut(25),
      O => CU_Result_24_XORG_3197
    );
  CU_Result_24_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_24_CYMUXFAST_3194,
      O => CU_Mcount_state_timer_cy_25_Q
    );
  CU_Result_24_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_cy_23_Q,
      O => CU_Result_24_FASTCARRY_3192
    );
  CU_Result_24_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y30"
    )
    port map (
      I0 => CU_Result_24_CYSELG_3180,
      I1 => CU_Result_24_CYSELF_3195,
      O => CU_Result_24_CYAND_3193
    );
  CU_Result_24_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y30"
    )
    port map (
      IA => CU_Result_24_CYMUXG2_3191,
      IB => CU_Result_24_FASTCARRY_3192,
      SEL => CU_Result_24_CYAND_3193,
      O => CU_Result_24_CYMUXFAST_3194
    );
  CU_Result_24_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y30"
    )
    port map (
      IA => CU_Result_24_LOGIC_ONE_3189,
      IB => CU_Result_24_CYMUXF2_3190,
      SEL => CU_Result_24_CYSELG_3180,
      O => CU_Result_24_CYMUXG2_3191
    );
  CU_Result_24_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_lut(25),
      O => CU_Result_24_CYSELG_3180
    );
  CU_Mcount_state_timer_lut_26_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X1Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_state_timer(26),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CU_Mcount_state_timer_lut(26)
    );
  CU_Result_26_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X1Y31"
    )
    port map (
      O => CU_Result_26_LOGIC_ONE_3227
    );
  CU_Result_26_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_26_XORF_3247,
      O => CU_Result(26)
    );
  CU_Result_26_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X1Y31"
    )
    port map (
      I0 => CU_Result_26_CYINIT_3246,
      I1 => CU_Mcount_state_timer_lut(26),
      O => CU_Result_26_XORF_3247
    );
  CU_Result_26_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X1Y31"
    )
    port map (
      IA => CU_Result_26_LOGIC_ONE_3227,
      IB => CU_Result_26_CYINIT_3246,
      SEL => CU_Result_26_CYSELF_3233,
      O => CU_Mcount_state_timer_cy_26_Q
    );
  CU_Result_26_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y31"
    )
    port map (
      IA => CU_Result_26_LOGIC_ONE_3227,
      IB => CU_Result_26_LOGIC_ONE_3227,
      SEL => CU_Result_26_CYSELF_3233,
      O => CU_Result_26_CYMUXF2_3228
    );
  CU_Result_26_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X1Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_cy_25_Q,
      O => CU_Result_26_CYINIT_3246
    );
  CU_Result_26_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_lut(26),
      O => CU_Result_26_CYSELF_3233
    );
  CU_Result_26_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_26_XORG_3235,
      O => CU_Result(27)
    );
  CU_Result_26_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X1Y31"
    )
    port map (
      I0 => CU_Mcount_state_timer_cy_26_Q,
      I1 => CU_Mcount_state_timer_lut(27),
      O => CU_Result_26_XORG_3235
    );
  CU_Result_26_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_26_CYMUXFAST_3232,
      O => CU_Mcount_state_timer_cy_27_Q
    );
  CU_Result_26_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_cy_25_Q,
      O => CU_Result_26_FASTCARRY_3230
    );
  CU_Result_26_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y31"
    )
    port map (
      I0 => CU_Result_26_CYSELG_3218,
      I1 => CU_Result_26_CYSELF_3233,
      O => CU_Result_26_CYAND_3231
    );
  CU_Result_26_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y31"
    )
    port map (
      IA => CU_Result_26_CYMUXG2_3229,
      IB => CU_Result_26_FASTCARRY_3230,
      SEL => CU_Result_26_CYAND_3231,
      O => CU_Result_26_CYMUXFAST_3232
    );
  CU_Result_26_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y31"
    )
    port map (
      IA => CU_Result_26_LOGIC_ONE_3227,
      IB => CU_Result_26_CYMUXF2_3228,
      SEL => CU_Result_26_CYSELG_3218,
      O => CU_Result_26_CYMUXG2_3229
    );
  CU_Result_26_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_lut(27),
      O => CU_Result_26_CYSELG_3218
    );
  CU_Mcount_state_timer_lut_27_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X1Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => CU_state_timer(27),
      O => CU_Mcount_state_timer_lut(27)
    );
  CU_Mcount_state_timer_lut_28_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X1Y32"
    )
    port map (
      ADR0 => CU_state_timer(28),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => CU_Mcount_state_timer_lut(28)
    );
  CU_Result_28_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X1Y32"
    )
    port map (
      O => CU_Result_28_LOGIC_ONE_3265
    );
  CU_Result_28_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_28_XORF_3285,
      O => CU_Result(28)
    );
  CU_Result_28_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X1Y32"
    )
    port map (
      I0 => CU_Result_28_CYINIT_3284,
      I1 => CU_Mcount_state_timer_lut(28),
      O => CU_Result_28_XORF_3285
    );
  CU_Result_28_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X1Y32"
    )
    port map (
      IA => CU_Result_28_LOGIC_ONE_3265,
      IB => CU_Result_28_CYINIT_3284,
      SEL => CU_Result_28_CYSELF_3271,
      O => CU_Mcount_state_timer_cy_28_Q
    );
  CU_Result_28_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y32"
    )
    port map (
      IA => CU_Result_28_LOGIC_ONE_3265,
      IB => CU_Result_28_LOGIC_ONE_3265,
      SEL => CU_Result_28_CYSELF_3271,
      O => CU_Result_28_CYMUXF2_3266
    );
  CU_Result_28_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X1Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_cy_27_Q,
      O => CU_Result_28_CYINIT_3284
    );
  CU_Result_28_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_lut(28),
      O => CU_Result_28_CYSELF_3271
    );
  CU_Result_28_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_28_XORG_3273,
      O => CU_Result(29)
    );
  CU_Result_28_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X1Y32"
    )
    port map (
      I0 => CU_Mcount_state_timer_cy_28_Q,
      I1 => CU_Mcount_state_timer_lut(29),
      O => CU_Result_28_XORG_3273
    );
  CU_Result_28_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_cy_27_Q,
      O => CU_Result_28_FASTCARRY_3268
    );
  CU_Result_28_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y32"
    )
    port map (
      I0 => CU_Result_28_CYSELG_3256,
      I1 => CU_Result_28_CYSELF_3271,
      O => CU_Result_28_CYAND_3269
    );
  CU_Result_28_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y32"
    )
    port map (
      IA => CU_Result_28_CYMUXG2_3267,
      IB => CU_Result_28_FASTCARRY_3268,
      SEL => CU_Result_28_CYAND_3269,
      O => CU_Result_28_CYMUXFAST_3270
    );
  CU_Result_28_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y32"
    )
    port map (
      IA => CU_Result_28_LOGIC_ONE_3265,
      IB => CU_Result_28_CYMUXF2_3266,
      SEL => CU_Result_28_CYSELG_3256,
      O => CU_Result_28_CYMUXG2_3267
    );
  CU_Result_28_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_lut(29),
      O => CU_Result_28_CYSELG_3256
    );
  CU_Mcount_state_timer_lut_29_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X1Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => CU_state_timer(29),
      O => CU_Mcount_state_timer_lut(29)
    );
  CU_Mcount_state_timer_lut_30_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X1Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_state_timer(30),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CU_Mcount_state_timer_lut(30)
    );
  CU_Result_30_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X1Y33"
    )
    port map (
      O => CU_Result_30_LOGIC_ONE_3315
    );
  CU_Result_30_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_30_XORF_3316,
      O => CU_Result(30)
    );
  CU_Result_30_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X1Y33"
    )
    port map (
      I0 => CU_Result_30_CYINIT_3314,
      I1 => CU_Mcount_state_timer_lut(30),
      O => CU_Result_30_XORF_3316
    );
  CU_Result_30_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X1Y33"
    )
    port map (
      IA => CU_Result_30_LOGIC_ONE_3315,
      IB => CU_Result_30_CYINIT_3314,
      SEL => CU_Result_30_CYSELF_3305,
      O => CU_Mcount_state_timer_cy_30_Q
    );
  CU_Result_30_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X1Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_28_CYMUXFAST_3270,
      O => CU_Result_30_CYINIT_3314
    );
  CU_Result_30_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_lut(30),
      O => CU_Result_30_CYSELF_3305
    );
  CU_Result_30_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Result_30_XORG_3302,
      O => CU_Result(31)
    );
  CU_Result_30_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X1Y33"
    )
    port map (
      I0 => CU_Mcount_state_timer_cy_30_Q,
      I1 => CU_Mcount_state_timer_lut(31),
      O => CU_Result_30_XORG_3302
    );
  CU_Mcount_state_timer_lut_31_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X1Y33"
    )
    port map (
      ADR0 => CU_state_timer(31),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => CU_Mcount_state_timer_lut(31)
    );
  PC_Mcount_data_lut_1_Q : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X27Y19"
    )
    port map (
      ADR0 => VCC,
      ADR1 => PC_data(1),
      ADR2 => CU_loadPC_1524,
      ADR3 => R_D_M_reg(1),
      O => PC_Mcount_data_lut(1)
    );
  PC_data_0_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X27Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => PC_data_0_SRINV_3333,
      O => PC_data_0_FFY_RST
    );
  PC_data_1 : X_FF
    generic map(
      LOC => "SLICE_X27Y19",
      INIT => '0'
    )
    port map (
      I => PC_data_0_DYMUX_3347,
      CE => PC_data_0_CEINV_3331,
      CLK => PC_data_0_CLKINV_3332,
      SET => GND,
      RST => PC_data_0_FFY_RST,
      O => PC_data(1)
    );
  PC_Mcount_data_lut_0_Q : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X27Y19"
    )
    port map (
      ADR0 => VCC,
      ADR1 => PC_data(0),
      ADR2 => CU_loadPC_1524,
      ADR3 => R_D_M_reg(0),
      O => PC_Mcount_data_lut(0)
    );
  PC_data_0_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X27Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => PC_data_0_SRINV_3333,
      O => PC_data_0_FFX_RST
    );
  PC_data_0 : X_FF
    generic map(
      LOC => "SLICE_X27Y19",
      INIT => '0'
    )
    port map (
      I => PC_data_0_DXMUX_3367,
      CE => PC_data_0_CEINV_3331,
      CLK => PC_data_0_CLKINV_3332,
      SET => GND,
      RST => PC_data_0_FFX_RST,
      O => PC_data(0)
    );
  PC_data_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X27Y19"
    )
    port map (
      O => PC_data_0_LOGIC_ZERO_3342
    );
  PC_data_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => PC_data_0_XORF_3365,
      O => PC_data_0_DXMUX_3367
    );
  PC_data_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X27Y19"
    )
    port map (
      I0 => PC_data_0_CYINIT_3364,
      I1 => PC_Mcount_data_lut(0),
      O => PC_data_0_XORF_3365
    );
  PC_data_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X27Y19"
    )
    port map (
      IA => PC_data_0_LOGIC_ZERO_3342,
      IB => PC_data_0_CYINIT_3364,
      SEL => PC_data_0_CYSELF_3357,
      O => PC_Mcount_data_cy_0_Q
    );
  PC_data_0_CYINIT : X_INV
    generic map(
      LOC => "SLICE_X27Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_loadPC_1524,
      O => PC_data_0_CYINIT_3364
    );
  PC_data_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X27Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => PC_Mcount_data_lut(0),
      O => PC_data_0_CYSELF_3357
    );
  PC_data_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => PC_data_0_XORG_3345,
      O => PC_data_0_DYMUX_3347
    );
  PC_data_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X27Y19"
    )
    port map (
      I0 => PC_Mcount_data_cy_0_Q,
      I1 => PC_Mcount_data_lut(1),
      O => PC_data_0_XORG_3345
    );
  PC_data_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => PC_data_0_CYMUXG_3344,
      O => PC_Mcount_data_cy_1_Q
    );
  PC_data_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X27Y19"
    )
    port map (
      IA => PC_data_0_LOGIC_ZERO_3342,
      IB => PC_Mcount_data_cy_0_Q,
      SEL => PC_data_0_CYSELG_3335,
      O => PC_data_0_CYMUXG_3344
    );
  PC_data_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X27Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => PC_Mcount_data_lut(1),
      O => PC_data_0_CYSELG_3335
    );
  PC_data_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => PC_data_0_SRINV_3333
    );
  PC_data_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => PC_data_0_CLKINV_3332
    );
  PC_data_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => PC_data_not0001_0,
      O => PC_data_0_CEINV_3331
    );
  PC_Mcount_data_lut_2_Q : X_LUT4
    generic map(
      INIT => X"FA0A",
      LOC => "SLICE_X27Y20"
    )
    port map (
      ADR0 => PC_data(2),
      ADR1 => VCC,
      ADR2 => CU_loadPC_1524,
      ADR3 => R_D_M_reg(2),
      O => PC_Mcount_data_lut(2)
    );
  PC_data_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X27Y20"
    )
    port map (
      O => PC_data_2_LOGIC_ZERO_3399
    );
  PC_data_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => PC_data_2_XORF_3425,
      O => PC_data_2_DXMUX_3427
    );
  PC_data_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X27Y20"
    )
    port map (
      I0 => PC_data_2_CYINIT_3424,
      I1 => PC_Mcount_data_lut(2),
      O => PC_data_2_XORF_3425
    );
  PC_data_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X27Y20"
    )
    port map (
      IA => PC_data_2_LOGIC_ZERO_3399,
      IB => PC_data_2_CYINIT_3424,
      SEL => PC_data_2_CYSELF_3405,
      O => PC_Mcount_data_cy_2_Q
    );
  PC_data_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y20"
    )
    port map (
      IA => PC_data_2_LOGIC_ZERO_3399,
      IB => PC_data_2_LOGIC_ZERO_3399,
      SEL => PC_data_2_CYSELF_3405,
      O => PC_data_2_CYMUXF2_3400
    );
  PC_data_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X27Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => PC_Mcount_data_cy_1_Q,
      O => PC_data_2_CYINIT_3424
    );
  PC_data_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X27Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => PC_Mcount_data_lut(2),
      O => PC_data_2_CYSELF_3405
    );
  PC_data_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => PC_data_2_XORG_3407,
      O => PC_data_2_DYMUX_3409
    );
  PC_data_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X27Y20"
    )
    port map (
      I0 => PC_Mcount_data_cy_2_Q,
      I1 => PC_Mcount_data_lut(3),
      O => PC_data_2_XORG_3407
    );
  PC_data_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => PC_data_2_CYMUXFAST_3404,
      O => PC_Mcount_data_cy_3_Q
    );
  PC_data_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X27Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => PC_Mcount_data_cy_1_Q,
      O => PC_data_2_FASTCARRY_3402
    );
  PC_data_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X27Y20"
    )
    port map (
      I0 => PC_data_2_CYSELG_3392,
      I1 => PC_data_2_CYSELF_3405,
      O => PC_data_2_CYAND_3403
    );
  PC_data_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X27Y20"
    )
    port map (
      IA => PC_data_2_CYMUXG2_3401,
      IB => PC_data_2_FASTCARRY_3402,
      SEL => PC_data_2_CYAND_3403,
      O => PC_data_2_CYMUXFAST_3404
    );
  PC_data_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y20"
    )
    port map (
      IA => PC_data_2_LOGIC_ZERO_3399,
      IB => PC_data_2_CYMUXF2_3400,
      SEL => PC_data_2_CYSELG_3392,
      O => PC_data_2_CYMUXG2_3401
    );
  PC_data_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X27Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => PC_Mcount_data_lut(3),
      O => PC_data_2_CYSELG_3392
    );
  PC_data_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => PC_data_2_SRINV_3390
    );
  PC_data_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => PC_data_2_CLKINV_3389
    );
  PC_data_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => PC_data_not0001_0,
      O => PC_data_2_CEINV_3388
    );
  PC_data_3 : X_FF
    generic map(
      LOC => "SLICE_X27Y20",
      INIT => '0'
    )
    port map (
      I => PC_data_2_DYMUX_3409,
      CE => PC_data_2_CEINV_3388,
      CLK => PC_data_2_CLKINV_3389,
      SET => GND,
      RST => PC_data_2_SRINV_3390,
      O => PC_data(3)
    );
  PC_data_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X27Y21"
    )
    port map (
      O => PC_data_4_LOGIC_ZERO_3459
    );
  PC_data_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => PC_data_4_XORF_3485,
      O => PC_data_4_DXMUX_3487
    );
  PC_data_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X27Y21"
    )
    port map (
      I0 => PC_data_4_CYINIT_3484,
      I1 => PC_Mcount_data_lut(4),
      O => PC_data_4_XORF_3485
    );
  PC_data_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X27Y21"
    )
    port map (
      IA => PC_data_4_LOGIC_ZERO_3459,
      IB => PC_data_4_CYINIT_3484,
      SEL => PC_data_4_CYSELF_3465,
      O => PC_Mcount_data_cy_4_Q
    );
  PC_data_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y21"
    )
    port map (
      IA => PC_data_4_LOGIC_ZERO_3459,
      IB => PC_data_4_LOGIC_ZERO_3459,
      SEL => PC_data_4_CYSELF_3465,
      O => PC_data_4_CYMUXF2_3460
    );
  PC_data_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X27Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => PC_Mcount_data_cy_3_Q,
      O => PC_data_4_CYINIT_3484
    );
  PC_data_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X27Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => PC_Mcount_data_lut(4),
      O => PC_data_4_CYSELF_3465
    );
  PC_data_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => PC_data_4_XORG_3467,
      O => PC_data_4_DYMUX_3469
    );
  PC_data_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X27Y21"
    )
    port map (
      I0 => PC_Mcount_data_cy_4_Q,
      I1 => PC_Mcount_data_lut(5),
      O => PC_data_4_XORG_3467
    );
  PC_data_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X27Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => PC_Mcount_data_cy_3_Q,
      O => PC_data_4_FASTCARRY_3462
    );
  PC_data_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X27Y21"
    )
    port map (
      I0 => PC_data_4_CYSELG_3452,
      I1 => PC_data_4_CYSELF_3465,
      O => PC_data_4_CYAND_3463
    );
  PC_data_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X27Y21"
    )
    port map (
      IA => PC_data_4_CYMUXG2_3461,
      IB => PC_data_4_FASTCARRY_3462,
      SEL => PC_data_4_CYAND_3463,
      O => PC_data_4_CYMUXFAST_3464
    );
  PC_data_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y21"
    )
    port map (
      IA => PC_data_4_LOGIC_ZERO_3459,
      IB => PC_data_4_CYMUXF2_3460,
      SEL => PC_data_4_CYSELG_3452,
      O => PC_data_4_CYMUXG2_3461
    );
  PC_data_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X27Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => PC_Mcount_data_lut(5),
      O => PC_data_4_CYSELG_3452
    );
  PC_data_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => PC_data_4_SRINV_3450
    );
  PC_data_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => PC_data_4_CLKINV_3449
    );
  PC_data_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => PC_data_not0001_0,
      O => PC_data_4_CEINV_3448
    );
  PC_Mcount_data_lut_4_Q : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X27Y21"
    )
    port map (
      ADR0 => VCC,
      ADR1 => PC_data(4),
      ADR2 => CU_loadPC_1524,
      ADR3 => R_D_M_reg(4),
      O => PC_Mcount_data_lut(4)
    );
  PC_data_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X27Y22"
    )
    port map (
      O => PC_data_6_LOGIC_ZERO_3537
    );
  PC_data_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => PC_data_6_XORF_3538,
      O => PC_data_6_DXMUX_3540
    );
  PC_data_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X27Y22"
    )
    port map (
      I0 => PC_data_6_CYINIT_3536,
      I1 => PC_Mcount_data_lut(6),
      O => PC_data_6_XORF_3538
    );
  PC_data_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X27Y22"
    )
    port map (
      IA => PC_data_6_LOGIC_ZERO_3537,
      IB => PC_data_6_CYINIT_3536,
      SEL => PC_data_6_CYSELF_3529,
      O => PC_Mcount_data_cy_6_Q
    );
  PC_data_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X27Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => PC_data_4_CYMUXFAST_3464,
      O => PC_data_6_CYINIT_3536
    );
  PC_data_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X27Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => PC_Mcount_data_lut(6),
      O => PC_data_6_CYSELF_3529
    );
  PC_data_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => PC_data_6_XORG_3518,
      O => PC_data_6_DYMUX_3520
    );
  PC_data_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X27Y22"
    )
    port map (
      I0 => PC_Mcount_data_cy_6_Q,
      I1 => PC_Mcount_data_lut(7),
      O => PC_data_6_XORG_3518
    );
  PC_data_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => PC_data_6_SRINV_3509
    );
  PC_data_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => PC_data_6_CLKINV_3508
    );
  PC_data_6_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => PC_data_not0001_0,
      O => PC_data_6_CEINV_3507
    );
  PC_data_6 : X_FF
    generic map(
      LOC => "SLICE_X27Y22",
      INIT => '0'
    )
    port map (
      I => PC_data_6_DXMUX_3540,
      CE => PC_data_6_CEINV_3507,
      CLK => PC_data_6_CLKINV_3508,
      SET => GND,
      RST => PC_data_6_SRINV_3509,
      O => PC_data(6)
    );
  CU_current_state_cmp_eq0000_wg_cy_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X3Y20"
    )
    port map (
      O => CU_current_state_cmp_eq0000_wg_cy_1_LOGIC_ZERO_3565
    );
  CU_current_state_cmp_eq0000_wg_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X3Y20"
    )
    port map (
      IA => CU_current_state_cmp_eq0000_wg_cy_1_LOGIC_ZERO_3565,
      IB => CU_current_state_cmp_eq0000_wg_cy_1_CYINIT_3576,
      SEL => CU_current_state_cmp_eq0000_wg_cy_1_CYSELF_3570,
      O => CU_current_state_cmp_eq0000_wg_cy(0)
    );
  CU_current_state_cmp_eq0000_wg_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X3Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_current_state_cmp_eq0000_wg_cy_1_BXINV_3568,
      O => CU_current_state_cmp_eq0000_wg_cy_1_CYINIT_3576
    );
  CU_current_state_cmp_eq0000_wg_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_current_state_cmp_eq0000_wg_lut(0),
      O => CU_current_state_cmp_eq0000_wg_cy_1_CYSELF_3570
    );
  CU_current_state_cmp_eq0000_wg_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => CU_current_state_cmp_eq0000_wg_cy_1_BXINV_3568
    );
  CU_current_state_cmp_eq0000_wg_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X3Y20"
    )
    port map (
      IA => CU_current_state_cmp_eq0000_wg_cy_1_LOGIC_ZERO_3565,
      IB => CU_current_state_cmp_eq0000_wg_cy(0),
      SEL => CU_current_state_cmp_eq0000_wg_cy_1_CYSELG_3559,
      O => CU_current_state_cmp_eq0000_wg_cy_1_CYMUXG_3567
    );
  CU_current_state_cmp_eq0000_wg_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_current_state_cmp_eq0000_wg_lut(1),
      O => CU_current_state_cmp_eq0000_wg_cy_1_CYSELG_3559
    );
  CU_current_state_cmp_eq0000_wg_cy_3_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X3Y21"
    )
    port map (
      O => CU_current_state_cmp_eq0000_wg_cy_3_LOGIC_ZERO_3594
    );
  CU_current_state_cmp_eq0000_wg_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y21"
    )
    port map (
      IA => CU_current_state_cmp_eq0000_wg_cy_3_LOGIC_ZERO_3594,
      IB => CU_current_state_cmp_eq0000_wg_cy_3_LOGIC_ZERO_3594,
      SEL => CU_current_state_cmp_eq0000_wg_cy_3_CYSELF_3600,
      O => CU_current_state_cmp_eq0000_wg_cy_3_CYMUXF2_3595
    );
  CU_current_state_cmp_eq0000_wg_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_current_state_cmp_eq0000_wg_lut(2),
      O => CU_current_state_cmp_eq0000_wg_cy_3_CYSELF_3600
    );
  CU_current_state_cmp_eq0000_wg_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_current_state_cmp_eq0000_wg_cy_1_CYMUXG_3567,
      O => CU_current_state_cmp_eq0000_wg_cy_3_FASTCARRY_3597
    );
  CU_current_state_cmp_eq0000_wg_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y21"
    )
    port map (
      I0 => CU_current_state_cmp_eq0000_wg_cy_3_CYSELG_3588,
      I1 => CU_current_state_cmp_eq0000_wg_cy_3_CYSELF_3600,
      O => CU_current_state_cmp_eq0000_wg_cy_3_CYAND_3598
    );
  CU_current_state_cmp_eq0000_wg_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y21"
    )
    port map (
      IA => CU_current_state_cmp_eq0000_wg_cy_3_CYMUXG2_3596,
      IB => CU_current_state_cmp_eq0000_wg_cy_3_FASTCARRY_3597,
      SEL => CU_current_state_cmp_eq0000_wg_cy_3_CYAND_3598,
      O => CU_current_state_cmp_eq0000_wg_cy_3_CYMUXFAST_3599
    );
  CU_current_state_cmp_eq0000_wg_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y21"
    )
    port map (
      IA => CU_current_state_cmp_eq0000_wg_cy_3_LOGIC_ZERO_3594,
      IB => CU_current_state_cmp_eq0000_wg_cy_3_CYMUXF2_3595,
      SEL => CU_current_state_cmp_eq0000_wg_cy_3_CYSELG_3588,
      O => CU_current_state_cmp_eq0000_wg_cy_3_CYMUXG2_3596
    );
  CU_current_state_cmp_eq0000_wg_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_current_state_cmp_eq0000_wg_lut(3),
      O => CU_current_state_cmp_eq0000_wg_cy_3_CYSELG_3588
    );
  CU_current_state_cmp_eq0000_wg_cy_5_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X3Y22"
    )
    port map (
      O => CU_current_state_cmp_eq0000_wg_cy_5_LOGIC_ZERO_3624
    );
  CU_current_state_cmp_eq0000_wg_cy_5_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y22"
    )
    port map (
      IA => CU_current_state_cmp_eq0000_wg_cy_5_LOGIC_ZERO_3624,
      IB => CU_current_state_cmp_eq0000_wg_cy_5_LOGIC_ZERO_3624,
      SEL => CU_current_state_cmp_eq0000_wg_cy_5_CYSELF_3630,
      O => CU_current_state_cmp_eq0000_wg_cy_5_CYMUXF2_3625
    );
  CU_current_state_cmp_eq0000_wg_cy_5_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_current_state_cmp_eq0000_wg_lut(4),
      O => CU_current_state_cmp_eq0000_wg_cy_5_CYSELF_3630
    );
  CU_current_state_cmp_eq0000_wg_cy_5_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_current_state_cmp_eq0000_wg_cy_3_CYMUXFAST_3599,
      O => CU_current_state_cmp_eq0000_wg_cy_5_FASTCARRY_3627
    );
  CU_current_state_cmp_eq0000_wg_cy_5_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y22"
    )
    port map (
      I0 => CU_current_state_cmp_eq0000_wg_cy_5_CYSELG_3618,
      I1 => CU_current_state_cmp_eq0000_wg_cy_5_CYSELF_3630,
      O => CU_current_state_cmp_eq0000_wg_cy_5_CYAND_3628
    );
  CU_current_state_cmp_eq0000_wg_cy_5_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y22"
    )
    port map (
      IA => CU_current_state_cmp_eq0000_wg_cy_5_CYMUXG2_3626,
      IB => CU_current_state_cmp_eq0000_wg_cy_5_FASTCARRY_3627,
      SEL => CU_current_state_cmp_eq0000_wg_cy_5_CYAND_3628,
      O => CU_current_state_cmp_eq0000_wg_cy_5_CYMUXFAST_3629
    );
  CU_current_state_cmp_eq0000_wg_cy_5_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y22"
    )
    port map (
      IA => CU_current_state_cmp_eq0000_wg_cy_5_LOGIC_ZERO_3624,
      IB => CU_current_state_cmp_eq0000_wg_cy_5_CYMUXF2_3625,
      SEL => CU_current_state_cmp_eq0000_wg_cy_5_CYSELG_3618,
      O => CU_current_state_cmp_eq0000_wg_cy_5_CYMUXG2_3626
    );
  CU_current_state_cmp_eq0000_wg_cy_5_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_current_state_cmp_eq0000_wg_lut(5),
      O => CU_current_state_cmp_eq0000_wg_cy_5_CYSELG_3618
    );
  CU_current_state_cmp_eq0000_wg_lut_5_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X3Y22"
    )
    port map (
      ADR0 => CU_state_timer(2),
      ADR1 => CU_state_timer(23),
      ADR2 => CU_state_timer(24),
      ADR3 => CU_state_timer(25),
      O => CU_current_state_cmp_eq0000_wg_lut(5)
    );
  CU_state_timer_not0001_inv_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X3Y23"
    )
    port map (
      O => CU_state_timer_not0001_inv_LOGIC_ZERO_3654
    );
  CU_state_timer_not0001_inv_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y23"
    )
    port map (
      IA => CU_state_timer_not0001_inv_LOGIC_ZERO_3654,
      IB => CU_state_timer_not0001_inv_LOGIC_ZERO_3654,
      SEL => CU_state_timer_not0001_inv_CYSELF_3660,
      O => CU_state_timer_not0001_inv_CYMUXF2_3655
    );
  CU_state_timer_not0001_inv_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_current_state_cmp_eq0000_wg_lut(6),
      O => CU_state_timer_not0001_inv_CYSELF_3660
    );
  CU_state_timer_not0001_inv_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_state_timer_not0001_inv_CYMUXFAST_3659,
      O => CU_state_timer_not0001_inv
    );
  CU_state_timer_not0001_inv_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_current_state_cmp_eq0000_wg_cy_5_CYMUXFAST_3629,
      O => CU_state_timer_not0001_inv_FASTCARRY_3657
    );
  CU_state_timer_not0001_inv_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y23"
    )
    port map (
      I0 => CU_state_timer_not0001_inv_CYSELG_3648,
      I1 => CU_state_timer_not0001_inv_CYSELF_3660,
      O => CU_state_timer_not0001_inv_CYAND_3658
    );
  CU_state_timer_not0001_inv_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y23"
    )
    port map (
      IA => CU_state_timer_not0001_inv_CYMUXG2_3656,
      IB => CU_state_timer_not0001_inv_FASTCARRY_3657,
      SEL => CU_state_timer_not0001_inv_CYAND_3658,
      O => CU_state_timer_not0001_inv_CYMUXFAST_3659
    );
  CU_state_timer_not0001_inv_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y23"
    )
    port map (
      IA => CU_state_timer_not0001_inv_LOGIC_ZERO_3654,
      IB => CU_state_timer_not0001_inv_CYMUXF2_3655,
      SEL => CU_state_timer_not0001_inv_CYSELG_3648,
      O => CU_state_timer_not0001_inv_CYMUXG2_3656
    );
  CU_state_timer_not0001_inv_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_current_state_cmp_eq0000_wg_lut(7),
      O => CU_state_timer_not0001_inv_CYSELG_3648
    );
  CU_current_state_cmp_eq0000_wg_lut_6_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X3Y23"
    )
    port map (
      ADR0 => CU_state_timer(28),
      ADR1 => CU_state_timer(1),
      ADR2 => CU_state_timer(26),
      ADR3 => CU_state_timer(27),
      O => CU_current_state_cmp_eq0000_wg_lut(6)
    );
  AC_reg_0_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X25Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg_0_F5MUX_3712,
      O => alu_Mmux_result_3_f5
    );
  AC_reg_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X25Y26"
    )
    port map (
      IA => alu_Mmux_result_5_3691,
      IB => alu_Mmux_result_4_3710,
      SEL => AC_reg_0_BXINV_3703,
      O => AC_reg_0_F5MUX_3712
    );
  AC_reg_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_ula(1),
      O => AC_reg_0_BXINV_3703
    );
  AC_reg_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X25Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg_0_GYMUX_3694,
      O => AC_reg_0_DYMUX_3695
    );
  AC_reg_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg_0_GYMUX_3694,
      O => ULA_output(0)
    );
  AC_reg_0_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X25Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg_0_F6MUX_3693,
      O => AC_reg_0_GYMUX_3694
    );
  AC_reg_0_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X25Y26"
    )
    port map (
      IA => alu_Mmux_result_4_f5,
      IB => alu_Mmux_result_3_f5,
      SEL => AC_reg_0_BYINV_3685,
      O => AC_reg_0_F6MUX_3693
    );
  AC_reg_0_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_ula(2),
      O => AC_reg_0_BYINV_3685
    );
  AC_reg_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => AC_reg_0_CLKINV_3683
    );
  AC_reg_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_loadAC_1652,
      O => AC_reg_0_CEINV_3682
    );
  alu_Mmux_result_4_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X25Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_Mmux_result_4_f5_F5MUX_3736,
      O => alu_Mmux_result_4_f5
    );
  alu_Mmux_result_4_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X25Y27"
    )
    port map (
      IA => alu_Mmux_result_6_3726,
      IB => alu_Mmux_result_51_3734,
      SEL => alu_Mmux_result_4_f5_BXINV_3728,
      O => alu_Mmux_result_4_f5_F5MUX_3736
    );
  alu_Mmux_result_4_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_ula(1),
      O => alu_Mmux_result_4_f5_BXINV_3728
    );
  AC_reg_1_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X27Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg_1_F5MUX_3782,
      O => alu_Mmux_result_3_f51
    );
  AC_reg_1_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X27Y30"
    )
    port map (
      IA => alu_Mmux_result_52_3762,
      IB => alu_Mmux_result_41_3780,
      SEL => AC_reg_1_BXINV_3774,
      O => AC_reg_1_F5MUX_3782
    );
  AC_reg_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_ula(1),
      O => AC_reg_1_BXINV_3774
    );
  AC_reg_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg_1_GYMUX_3765,
      O => AC_reg_1_DYMUX_3766
    );
  AC_reg_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg_1_GYMUX_3765,
      O => ULA_output(1)
    );
  AC_reg_1_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg_1_F6MUX_3764,
      O => AC_reg_1_GYMUX_3765
    );
  AC_reg_1_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X27Y30"
    )
    port map (
      IA => alu_Mmux_result_4_f51,
      IB => alu_Mmux_result_3_f51,
      SEL => AC_reg_1_BYINV_3756,
      O => AC_reg_1_F6MUX_3764
    );
  AC_reg_1_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_ula(2),
      O => AC_reg_1_BYINV_3756
    );
  AC_reg_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => AC_reg_1_CLKINV_3754
    );
  AC_reg_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_loadAC_1652,
      O => AC_reg_1_CEINV_3753
    );
  alu_Mmux_result_4_f51_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X27Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_Mmux_result_4_f51_F5MUX_3806,
      O => alu_Mmux_result_4_f51
    );
  alu_Mmux_result_4_f51_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X27Y31"
    )
    port map (
      IA => alu_Mmux_result_61_3796,
      IB => alu_Mmux_result_53_3804,
      SEL => alu_Mmux_result_4_f51_BXINV_3798,
      O => alu_Mmux_result_4_f51_F5MUX_3806
    );
  alu_Mmux_result_4_f51_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_ula(1),
      O => alu_Mmux_result_4_f51_BXINV_3798
    );
  alu_Mmux_result_54 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X27Y32"
    )
    port map (
      ADR0 => AC_reg(3),
      ADR1 => R_D_M_reg(2),
      ADR2 => CU_sel_ula(0),
      ADR3 => VCC,
      O => alu_Mmux_result_54_3832
    );
  AC_reg_2_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X27Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg_2_F5MUX_3852,
      O => alu_Mmux_result_3_f52
    );
  AC_reg_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X27Y32"
    )
    port map (
      IA => alu_Mmux_result_54_3832,
      IB => alu_Mmux_result_42_3850,
      SEL => AC_reg_2_BXINV_3844,
      O => AC_reg_2_F5MUX_3852
    );
  AC_reg_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_ula(1),
      O => AC_reg_2_BXINV_3844
    );
  AC_reg_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg_2_GYMUX_3835,
      O => AC_reg_2_DYMUX_3836
    );
  AC_reg_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg_2_GYMUX_3835,
      O => ULA_output(2)
    );
  AC_reg_2_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg_2_F6MUX_3834,
      O => AC_reg_2_GYMUX_3835
    );
  AC_reg_2_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X27Y32"
    )
    port map (
      IA => alu_Mmux_result_4_f52,
      IB => alu_Mmux_result_3_f52,
      SEL => AC_reg_2_BYINV_3826,
      O => AC_reg_2_F6MUX_3834
    );
  AC_reg_2_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_ula(2),
      O => AC_reg_2_BYINV_3826
    );
  AC_reg_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => AC_reg_2_CLKINV_3824
    );
  AC_reg_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_loadAC_1652,
      O => AC_reg_2_CEINV_3823
    );
  alu_Mmux_result_4_f52_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X27Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_Mmux_result_4_f52_F5MUX_3876,
      O => alu_Mmux_result_4_f52
    );
  alu_Mmux_result_4_f52_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X27Y33"
    )
    port map (
      IA => alu_Mmux_result_62_3866,
      IB => alu_Mmux_result_55_3874,
      SEL => alu_Mmux_result_4_f52_BXINV_3868,
      O => alu_Mmux_result_4_f52_F5MUX_3876
    );
  alu_Mmux_result_4_f52_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_ula(1),
      O => alu_Mmux_result_4_f52_BXINV_3868
    );
  alu_Mmux_result_43 : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X23Y28"
    )
    port map (
      ADR0 => CU_sel_ula(0),
      ADR1 => VCC,
      ADR2 => alu_MULTIPLICATION(3),
      ADR3 => AC_reg(2),
      O => alu_Mmux_result_43_3920
    );
  AC_reg_3_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X23Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg_3_F5MUX_3922,
      O => alu_Mmux_result_3_f53
    );
  AC_reg_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X23Y28"
    )
    port map (
      IA => alu_Mmux_result_56_3902,
      IB => alu_Mmux_result_43_3920,
      SEL => AC_reg_3_BXINV_3914,
      O => AC_reg_3_F5MUX_3922
    );
  AC_reg_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_ula(1),
      O => AC_reg_3_BXINV_3914
    );
  AC_reg_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg_3_GYMUX_3905,
      O => AC_reg_3_DYMUX_3906
    );
  AC_reg_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg_3_GYMUX_3905,
      O => ULA_output(3)
    );
  AC_reg_3_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg_3_F6MUX_3904,
      O => AC_reg_3_GYMUX_3905
    );
  AC_reg_3_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X23Y28"
    )
    port map (
      IA => alu_Mmux_result_4_f53,
      IB => alu_Mmux_result_3_f53,
      SEL => AC_reg_3_BYINV_3896,
      O => AC_reg_3_F6MUX_3904
    );
  AC_reg_3_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_ula(2),
      O => AC_reg_3_BYINV_3896
    );
  AC_reg_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => AC_reg_3_CLKINV_3894
    );
  AC_reg_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_loadAC_1652,
      O => AC_reg_3_CEINV_3893
    );
  alu_Mmux_result_4_f53_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X23Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_Mmux_result_4_f53_F5MUX_3946,
      O => alu_Mmux_result_4_f53
    );
  alu_Mmux_result_4_f53_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X23Y29"
    )
    port map (
      IA => alu_Mmux_result_63_3936,
      IB => alu_Mmux_result_57_3944,
      SEL => alu_Mmux_result_4_f53_BXINV_3938,
      O => alu_Mmux_result_4_f53_F5MUX_3946
    );
  alu_Mmux_result_4_f53_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_ula(1),
      O => alu_Mmux_result_4_f53_BXINV_3938
    );
  AC_reg_4_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X23Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg_4_F5MUX_3992,
      O => alu_Mmux_result_3_f54
    );
  AC_reg_4_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X23Y32"
    )
    port map (
      IA => alu_Mmux_result_58_3972,
      IB => alu_Mmux_result_44_3990,
      SEL => AC_reg_4_BXINV_3984,
      O => AC_reg_4_F5MUX_3992
    );
  AC_reg_4_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_ula(1),
      O => AC_reg_4_BXINV_3984
    );
  AC_reg_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg_4_GYMUX_3975,
      O => AC_reg_4_DYMUX_3976
    );
  AC_reg_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg_4_GYMUX_3975,
      O => ULA_output(4)
    );
  AC_reg_4_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg_4_F6MUX_3974,
      O => AC_reg_4_GYMUX_3975
    );
  AC_reg_4_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X23Y32"
    )
    port map (
      IA => alu_Mmux_result_4_f54,
      IB => alu_Mmux_result_3_f54,
      SEL => AC_reg_4_BYINV_3966,
      O => AC_reg_4_F6MUX_3974
    );
  AC_reg_4_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_ula(2),
      O => AC_reg_4_BYINV_3966
    );
  AC_reg_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => AC_reg_4_CLKINV_3964
    );
  AC_reg_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_loadAC_1652,
      O => AC_reg_4_CEINV_3963
    );
  alu_Mmux_result_59 : X_LUT4
    generic map(
      INIT => X"33FC",
      LOC => "SLICE_X23Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_sel_ula(0),
      ADR2 => R_D_M_reg(4),
      ADR3 => AC_reg(4),
      O => alu_Mmux_result_59_4014
    );
  alu_Mmux_result_4_f54_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X23Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_Mmux_result_4_f54_F5MUX_4016,
      O => alu_Mmux_result_4_f54
    );
  alu_Mmux_result_4_f54_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X23Y33"
    )
    port map (
      IA => alu_Mmux_result_64_4006,
      IB => alu_Mmux_result_59_4014,
      SEL => alu_Mmux_result_4_f54_BXINV_4008,
      O => alu_Mmux_result_4_f54_F5MUX_4016
    );
  alu_Mmux_result_4_f54_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_ula(1),
      O => alu_Mmux_result_4_f54_BXINV_4008
    );
  alu_Mmux_result_64 : X_LUT4
    generic map(
      INIT => X"B830",
      LOC => "SLICE_X23Y33"
    )
    port map (
      ADR0 => R_D_M_reg(4),
      ADR1 => CU_sel_ula(0),
      ADR2 => alu_result_addsub0000(4),
      ADR3 => AC_reg(4),
      O => alu_Mmux_result_64_4006
    );
  AC_reg_5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X23Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg_5_F5MUX_4062,
      O => alu_Mmux_result_3_f55
    );
  AC_reg_5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X23Y30"
    )
    port map (
      IA => alu_Mmux_result_510_4042,
      IB => alu_Mmux_result_45_4060,
      SEL => AC_reg_5_BXINV_4054,
      O => AC_reg_5_F5MUX_4062
    );
  AC_reg_5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_ula(1),
      O => AC_reg_5_BXINV_4054
    );
  AC_reg_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg_5_GYMUX_4045,
      O => AC_reg_5_DYMUX_4046
    );
  AC_reg_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg_5_GYMUX_4045,
      O => ULA_output(5)
    );
  AC_reg_5_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg_5_F6MUX_4044,
      O => AC_reg_5_GYMUX_4045
    );
  AC_reg_5_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X23Y30"
    )
    port map (
      IA => alu_Mmux_result_4_f55,
      IB => alu_Mmux_result_3_f55,
      SEL => AC_reg_5_BYINV_4036,
      O => AC_reg_5_F6MUX_4044
    );
  AC_reg_5_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_ula(2),
      O => AC_reg_5_BYINV_4036
    );
  AC_reg_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => AC_reg_5_CLKINV_4034
    );
  AC_reg_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_loadAC_1652,
      O => AC_reg_5_CEINV_4033
    );
  alu_Mmux_result_4_f55_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X23Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_Mmux_result_4_f55_F5MUX_4086,
      O => alu_Mmux_result_4_f55
    );
  alu_Mmux_result_4_f55_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X23Y31"
    )
    port map (
      IA => alu_Mmux_result_65_4076,
      IB => alu_Mmux_result_511_4084,
      SEL => alu_Mmux_result_4_f55_BXINV_4078,
      O => alu_Mmux_result_4_f55_F5MUX_4086
    );
  alu_Mmux_result_4_f55_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_ula(1),
      O => alu_Mmux_result_4_f55_BXINV_4078
    );
  alu_Mmux_result_512 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X25Y34"
    )
    port map (
      ADR0 => R_D_M_reg(6),
      ADR1 => NZ_data_N_1484,
      ADR2 => CU_sel_ula(0),
      ADR3 => VCC,
      O => alu_Mmux_result_512_4112
    );
  AC_reg_6_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X25Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg_6_F5MUX_4132,
      O => alu_Mmux_result_3_f56
    );
  AC_reg_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X25Y34"
    )
    port map (
      IA => alu_Mmux_result_512_4112,
      IB => alu_Mmux_result_46_4130,
      SEL => AC_reg_6_BXINV_4124,
      O => AC_reg_6_F5MUX_4132
    );
  AC_reg_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_ula(1),
      O => AC_reg_6_BXINV_4124
    );
  AC_reg_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X25Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg_6_GYMUX_4115,
      O => AC_reg_6_DYMUX_4116
    );
  AC_reg_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg_6_GYMUX_4115,
      O => ULA_output(6)
    );
  AC_reg_6_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X25Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg_6_F6MUX_4114,
      O => AC_reg_6_GYMUX_4115
    );
  AC_reg_6_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X25Y34"
    )
    port map (
      IA => alu_Mmux_result_4_f56,
      IB => alu_Mmux_result_3_f56,
      SEL => AC_reg_6_BYINV_4106,
      O => AC_reg_6_F6MUX_4114
    );
  AC_reg_6_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_ula(2),
      O => AC_reg_6_BYINV_4106
    );
  AC_reg_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => AC_reg_6_CLKINV_4104
    );
  AC_reg_6_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_loadAC_1652,
      O => AC_reg_6_CEINV_4103
    );
  alu_Mmux_result_4_f56_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X25Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_Mmux_result_4_f56_F5MUX_4156,
      O => alu_Mmux_result_4_f56
    );
  alu_Mmux_result_4_f56_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X25Y35"
    )
    port map (
      IA => alu_Mmux_result_66_4146,
      IB => alu_Mmux_result_513_4154,
      SEL => alu_Mmux_result_4_f56_BXINV_4148,
      O => alu_Mmux_result_4_f56_F5MUX_4156
    );
  alu_Mmux_result_4_f56_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_ula(1),
      O => alu_Mmux_result_4_f56_BXINV_4148
    );
  NZ_data_N_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X23Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => NZ_data_N_F5MUX_4202,
      O => alu_Mmux_result_3_f57
    );
  NZ_data_N_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X23Y34"
    )
    port map (
      IA => alu_Mmux_result_514_4182,
      IB => alu_Mmux_result_47_4200,
      SEL => NZ_data_N_BXINV_4194,
      O => NZ_data_N_F5MUX_4202
    );
  NZ_data_N_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_ula(1),
      O => NZ_data_N_BXINV_4194
    );
  NZ_data_N_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => NZ_data_N_GYMUX_4185,
      O => NZ_data_N_DYMUX_4186
    );
  NZ_data_N_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => NZ_data_N_GYMUX_4185,
      O => ULA_N
    );
  NZ_data_N_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => NZ_data_N_F6MUX_4184,
      O => NZ_data_N_GYMUX_4185
    );
  NZ_data_N_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X23Y34"
    )
    port map (
      IA => alu_Mmux_result_4_f57,
      IB => alu_Mmux_result_3_f57,
      SEL => NZ_data_N_BYINV_4175,
      O => NZ_data_N_F6MUX_4184
    );
  NZ_data_N_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_ula(2),
      O => NZ_data_N_BYINV_4175
    );
  NZ_data_N_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => NZ_data_N_CLKINV_4173
    );
  NZ_data_N_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_loadAC_1652,
      O => NZ_data_N_CEINV_4172
    );
  NZ_data_N : X_FF
    generic map(
      LOC => "SLICE_X23Y34",
      INIT => '0'
    )
    port map (
      I => NZ_data_N_DYMUX_4186,
      CE => NZ_data_N_CEINV_4172,
      CLK => NZ_data_N_CLKINV_4173,
      SET => GND,
      RST => NZ_data_N_FFY_RSTAND_4192,
      O => NZ_data_N_1484
    );
  NZ_data_N_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X23Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => NZ_data_N_FFY_RSTAND_4192
    );
  alu_Mmux_result_4_f57_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X23Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_Mmux_result_4_f57_F5MUX_4226,
      O => alu_Mmux_result_4_f57
    );
  alu_Mmux_result_4_f57_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X23Y35"
    )
    port map (
      IA => alu_Mmux_result_67_4216,
      IB => alu_Mmux_result_515_4224,
      SEL => alu_Mmux_result_4_f57_BXINV_4218,
      O => alu_Mmux_result_4_f57_F5MUX_4226
    );
  alu_Mmux_result_4_f57_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_ula(1),
      O => alu_Mmux_result_4_f57_BXINV_4218
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IPAD12",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk,
      O => clk_INBUF
    );
  enable_IBUF : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 638 ps
    )
    port map (
      I => enable,
      O => enable_INBUF
    );
  debug_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD48"
    )
    port map (
      I => debug_out_O,
      O => debug_out
    );
  rst_IBUF : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst,
      O => rst_INBUF
    );
  clk_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X2Y10"
    )
    port map (
      I0 => clk_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => clk_BUFGP_BUFG_S_INVNOT,
      O => clk_BUFGP
    );
  clk_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => clk_BUFGP_BUFG_S_INVNOT
    );
  clk_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_INBUF,
      O => clk_BUFGP_BUFG_I0_INV
    );
  alu_Mmult_MULTIPLICATION_mult0000_RSTPINV : X_BUF
    generic map(
      LOC => "MULT18X18_X0Y2",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => alu_Mmult_MULTIPLICATION_mult0000_RSTP_INT
    );
  alu_Mmult_MULTIPLICATION_mult0000_RSTBINV : X_BUF
    generic map(
      LOC => "MULT18X18_X0Y2",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => alu_Mmult_MULTIPLICATION_mult0000_RSTB_INT
    );
  alu_Mmult_MULTIPLICATION_mult0000_RSTAINV : X_BUF
    generic map(
      LOC => "MULT18X18_X0Y2",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => alu_Mmult_MULTIPLICATION_mult0000_RSTA_INT
    );
  alu_Mmult_MULTIPLICATION_mult0000_CLKINV : X_BUF
    generic map(
      LOC => "MULT18X18_X0Y2",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => alu_Mmult_MULTIPLICATION_mult0000_CLK_INT
    );
  alu_Mmult_MULTIPLICATION_mult0000_CEPINV : X_BUF
    generic map(
      LOC => "MULT18X18_X0Y2",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => alu_Mmult_MULTIPLICATION_mult0000_CEP_INT
    );
  alu_Mmult_MULTIPLICATION_mult0000_CEBINV : X_BUF
    generic map(
      LOC => "MULT18X18_X0Y2",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => alu_Mmult_MULTIPLICATION_mult0000_CEB_INT
    );
  alu_Mmult_MULTIPLICATION_mult0000_CEAINV : X_BUF
    generic map(
      LOC => "MULT18X18_X0Y2",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => alu_Mmult_MULTIPLICATION_mult0000_CEA_INT
    );
  alu_Mmult_MULTIPLICATION_mult0000 : X_MULT18X18SIO
    generic map(
      AREG => 0,
      BREG => 0,
      PREG => 0,
      B_INPUT => "DIRECT",
      LOC => "MULT18X18_X0Y2"
    )
    port map (
      CEA => alu_Mmult_MULTIPLICATION_mult0000_CEA_INT,
      CEB => alu_Mmult_MULTIPLICATION_mult0000_CEB_INT,
      CEP => alu_Mmult_MULTIPLICATION_mult0000_CEP_INT,
      CLK => alu_Mmult_MULTIPLICATION_mult0000_CLK_INT,
      RSTA => alu_Mmult_MULTIPLICATION_mult0000_RSTA_INT,
      RSTB => alu_Mmult_MULTIPLICATION_mult0000_RSTB_INT,
      RSTP => alu_Mmult_MULTIPLICATION_mult0000_RSTP_INT,
      A(17) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(17),
      A(16) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(16),
      A(15) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(15),
      A(14) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(14),
      A(13) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(13),
      A(12) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(12),
      A(11) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(11),
      A(10) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(10),
      A(9) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(9),
      A(8) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(8),
      A(7) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(7),
      A(6) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(6),
      A(5) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(5),
      A(4) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(4),
      A(3) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(3),
      A(2) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(2),
      A(1) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(1),
      A(0) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(0),
      B(17) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(17),
      B(16) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(16),
      B(15) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(15),
      B(14) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(14),
      B(13) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(13),
      B(12) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(12),
      B(11) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(11),
      B(10) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(10),
      B(9) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(9),
      B(8) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(8),
      B(7) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(7),
      B(6) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(6),
      B(5) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(5),
      B(4) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(4),
      B(3) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(3),
      B(2) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(2),
      B(1) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(1),
      B(0) => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(0),
      BCIN(17) => alu_Mmult_MULTIPLICATION_mult0000_BCIN17,
      BCIN(16) => alu_Mmult_MULTIPLICATION_mult0000_BCIN16,
      BCIN(15) => alu_Mmult_MULTIPLICATION_mult0000_BCIN15,
      BCIN(14) => alu_Mmult_MULTIPLICATION_mult0000_BCIN14,
      BCIN(13) => alu_Mmult_MULTIPLICATION_mult0000_BCIN13,
      BCIN(12) => alu_Mmult_MULTIPLICATION_mult0000_BCIN12,
      BCIN(11) => alu_Mmult_MULTIPLICATION_mult0000_BCIN11,
      BCIN(10) => alu_Mmult_MULTIPLICATION_mult0000_BCIN10,
      BCIN(9) => alu_Mmult_MULTIPLICATION_mult0000_BCIN9,
      BCIN(8) => alu_Mmult_MULTIPLICATION_mult0000_BCIN8,
      BCIN(7) => alu_Mmult_MULTIPLICATION_mult0000_BCIN7,
      BCIN(6) => alu_Mmult_MULTIPLICATION_mult0000_BCIN6,
      BCIN(5) => alu_Mmult_MULTIPLICATION_mult0000_BCIN5,
      BCIN(4) => alu_Mmult_MULTIPLICATION_mult0000_BCIN4,
      BCIN(3) => alu_Mmult_MULTIPLICATION_mult0000_BCIN3,
      BCIN(2) => alu_Mmult_MULTIPLICATION_mult0000_BCIN2,
      BCIN(1) => alu_Mmult_MULTIPLICATION_mult0000_BCIN1,
      BCIN(0) => alu_Mmult_MULTIPLICATION_mult0000_BCIN0,
      P(35) => alu_Mmult_MULTIPLICATION_mult0000_P35,
      P(34) => alu_Mmult_MULTIPLICATION_mult0000_P34,
      P(33) => alu_Mmult_MULTIPLICATION_mult0000_P33,
      P(32) => alu_Mmult_MULTIPLICATION_mult0000_P32,
      P(31) => alu_Mmult_MULTIPLICATION_mult0000_P31,
      P(30) => alu_Mmult_MULTIPLICATION_mult0000_P30,
      P(29) => alu_Mmult_MULTIPLICATION_mult0000_P29,
      P(28) => alu_Mmult_MULTIPLICATION_mult0000_P28,
      P(27) => alu_Mmult_MULTIPLICATION_mult0000_P27,
      P(26) => alu_Mmult_MULTIPLICATION_mult0000_P26,
      P(25) => alu_Mmult_MULTIPLICATION_mult0000_P25,
      P(24) => alu_Mmult_MULTIPLICATION_mult0000_P24,
      P(23) => alu_Mmult_MULTIPLICATION_mult0000_P23,
      P(22) => alu_Mmult_MULTIPLICATION_mult0000_P22,
      P(21) => alu_Mmult_MULTIPLICATION_mult0000_P21,
      P(20) => alu_Mmult_MULTIPLICATION_mult0000_P20,
      P(19) => alu_Mmult_MULTIPLICATION_mult0000_P19,
      P(18) => alu_Mmult_MULTIPLICATION_mult0000_P18,
      P(17) => alu_Mmult_MULTIPLICATION_mult0000_P17,
      P(16) => alu_Mmult_MULTIPLICATION_mult0000_P16,
      P(15) => alu_Mmult_MULTIPLICATION_mult0000_P15,
      P(14) => alu_Mmult_MULTIPLICATION_mult0000_P14,
      P(13) => alu_Mmult_MULTIPLICATION_mult0000_P13,
      P(12) => alu_Mmult_MULTIPLICATION_mult0000_P12,
      P(11) => alu_Mmult_MULTIPLICATION_mult0000_P11,
      P(10) => alu_Mmult_MULTIPLICATION_mult0000_P10,
      P(9) => alu_Mmult_MULTIPLICATION_mult0000_P9,
      P(8) => alu_Mmult_MULTIPLICATION_mult0000_P8,
      P(7) => alu_MULTIPLICATION_mult0000(7),
      P(6) => alu_MULTIPLICATION_mult0000(6),
      P(5) => alu_MULTIPLICATION_mult0000(5),
      P(4) => alu_MULTIPLICATION_mult0000(4),
      P(3) => alu_MULTIPLICATION_mult0000(3),
      P(2) => alu_MULTIPLICATION_mult0000(2),
      P(1) => alu_MULTIPLICATION_mult0000(1),
      P(0) => alu_MULTIPLICATION_mult0000(0),
      BCOUT(17) => alu_Mmult_MULTIPLICATION_mult0000_BCOUT17,
      BCOUT(16) => alu_Mmult_MULTIPLICATION_mult0000_BCOUT16,
      BCOUT(15) => alu_Mmult_MULTIPLICATION_mult0000_BCOUT15,
      BCOUT(14) => alu_Mmult_MULTIPLICATION_mult0000_BCOUT14,
      BCOUT(13) => alu_Mmult_MULTIPLICATION_mult0000_BCOUT13,
      BCOUT(12) => alu_Mmult_MULTIPLICATION_mult0000_BCOUT12,
      BCOUT(11) => alu_Mmult_MULTIPLICATION_mult0000_BCOUT11,
      BCOUT(10) => alu_Mmult_MULTIPLICATION_mult0000_BCOUT10,
      BCOUT(9) => alu_Mmult_MULTIPLICATION_mult0000_BCOUT9,
      BCOUT(8) => alu_Mmult_MULTIPLICATION_mult0000_BCOUT8,
      BCOUT(7) => alu_Mmult_MULTIPLICATION_mult0000_BCOUT7,
      BCOUT(6) => alu_Mmult_MULTIPLICATION_mult0000_BCOUT6,
      BCOUT(5) => alu_Mmult_MULTIPLICATION_mult0000_BCOUT5,
      BCOUT(4) => alu_Mmult_MULTIPLICATION_mult0000_BCOUT4,
      BCOUT(3) => alu_Mmult_MULTIPLICATION_mult0000_BCOUT3,
      BCOUT(2) => alu_Mmult_MULTIPLICATION_mult0000_BCOUT2,
      BCOUT(1) => alu_Mmult_MULTIPLICATION_mult0000_BCOUT1,
      BCOUT(0) => alu_Mmult_MULTIPLICATION_mult0000_BCOUT0
    );
  MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram : X_RAMB16_S36_S36
    generic map(
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      SIM_COLLISION_CHECK => "ALL",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INIT_00 => X"0101000000020101010000000002010000030000000200030002000000000000",
      INIT_01 => X"0303000000000303020100000303000000000300000200030102000000020100",
      INIT_02 => X"0201000000020101000200000303000000010100020200000002010200030000",
      INIT_03 => X"0303000000020102000300000001030202020000000201020003000000010302",
      INIT_04 => X"0000000000000201010000000000020000000100000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      LOC => "RAMB16_X0Y3",
      SETUP_ALL => 227 ps,
      SETUP_READ_FIRST => 227 ps
    )
    port map (
      CLKA => clk_BUFGP,
      CLKB => clk_BUFGP,
      ENA => '1',
      ENB => '1',
      SSRA => '0',
      SSRB => '0',
      WEA => CU_wr_enable_mem(0),
      WEB => '0',
      ADDRA(8) => '0',
      ADDRA(7) => 
NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_7_Q,
      ADDRA(6) => 
NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_6_Q,
      ADDRA(5) => 
NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_5_Q,
      ADDRA(4) => 
NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_4_Q,
      ADDRA(3) => 
NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_3_Q,
      ADDRA(2) => 
NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_2_Q,
      ADDRA(1) => 
NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_1_Q,
      ADDRA(0) => 
NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_0_Q,
      ADDRB(8) => '0',
      ADDRB(7) => '0',
      ADDRB(6) => '0',
      ADDRB(5) => '0',
      ADDRB(4) => '0',
      ADDRB(3) => '0',
      ADDRB(2) => '0',
      ADDRB(1) => '0',
      ADDRB(0) => '0',
      DIA(31) => '0',
      DIA(30) => '0',
      DIA(29) => '0',
      DIA(28) => '0',
      DIA(27) => '0',
      DIA(26) => '0',
      DIA(25) => 
NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_25_Q,
      DIA(24) => 
NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_24_Q,
      DIA(23) => '0',
      DIA(22) => '0',
      DIA(21) => '0',
      DIA(20) => '0',
      DIA(19) => '0',
      DIA(18) => '0',
      DIA(17) => 
NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_17_Q,
      DIA(16) => 
NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_16_Q,
      DIA(15) => '0',
      DIA(14) => '0',
      DIA(13) => '0',
      DIA(12) => '0',
      DIA(11) => '0',
      DIA(10) => '0',
      DIA(9) => 
NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_9_Q,
      DIA(8) => 
NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_8_Q,
      DIA(7) => '0',
      DIA(6) => '0',
      DIA(5) => '0',
      DIA(4) => '0',
      DIA(3) => '0',
      DIA(2) => '0',
      DIA(1) => 
NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_1_Q,
      DIA(0) => 
NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_0_Q,
      DIPA(3) => '0',
      DIPA(2) => '0',
      DIPA(1) => '0',
      DIPA(0) => '0',
      DIB(31) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB31,
      DIB(30) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB30,
      DIB(29) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB29,
      DIB(28) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB28,
      DIB(27) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB27,
      DIB(26) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB26,
      DIB(25) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB25,
      DIB(24) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB24,
      DIB(23) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB23,
      DIB(22) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB22,
      DIB(21) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB21,
      DIB(20) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB20,
      DIB(19) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB19,
      DIB(18) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB18,
      DIB(17) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB17,
      DIB(16) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB16,
      DIB(15) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB15,
      DIB(14) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB14,
      DIB(13) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB13,
      DIB(12) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB12,
      DIB(11) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB11,
      DIB(10) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB10,
      DIB(9) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB9,
      DIB(8) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB8,
      DIB(7) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB7,
      DIB(6) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB6,
      DIB(5) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB5,
      DIB(4) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB4,
      DIB(3) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB3,
      DIB(2) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB2,
      DIB(1) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB1,
      DIB(0) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIB0,
      DIPB(3) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIPB3,
      DIPB(2) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIPB2,
      DIPB(1) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIPB1,
      DIPB(0) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIPB0,
      DOA(31) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA31,
      DOA(30) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA30,
      DOA(29) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA29,
      DOA(28) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA28,
      DOA(27) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA27,
      DOA(26) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA26,
      DOA(25) => MEM_output(7),
      DOA(24) => MEM_output(6),
      DOA(23) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA23,
      DOA(22) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA22,
      DOA(21) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA21,
      DOA(20) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA20,
      DOA(19) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA19,
      DOA(18) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA18,
      DOA(17) => MEM_output(5),
      DOA(16) => MEM_output(4),
      DOA(15) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA15,
      DOA(14) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA14,
      DOA(13) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA13,
      DOA(12) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA12,
      DOA(11) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA11,
      DOA(10) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA10,
      DOA(9) => MEM_output(3),
      DOA(8) => MEM_output(2),
      DOA(7) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA7,
      DOA(6) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA6,
      DOA(5) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA5,
      DOA(4) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA4,
      DOA(3) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA3,
      DOA(2) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOA2,
      DOA(1) => MEM_output(1),
      DOA(0) => MEM_output(0),
      DOPA(3) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPA3,
      DOPA(2) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPA2,
      DOPA(1) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPA1,
      DOPA(0) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPA0,
      DOB(31) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB31,
      DOB(30) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB30,
      DOB(29) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB29,
      DOB(28) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB28,
      DOB(27) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB27,
      DOB(26) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB26,
      DOB(25) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB25,
      DOB(24) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB24,
      DOB(23) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB23,
      DOB(22) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB22,
      DOB(21) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB21,
      DOB(20) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB20,
      DOB(19) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB19,
      DOB(18) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB18,
      DOB(17) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB17,
      DOB(16) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB16,
      DOB(15) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB15,
      DOB(14) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB14,
      DOB(13) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB13,
      DOB(12) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB12,
      DOB(11) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB11,
      DOB(10) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB10,
      DOB(9) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB9,
      DOB(8) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB8,
      DOB(7) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB7,
      DOB(6) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB6,
      DOB(5) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB5,
      DOB(4) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB4,
      DOB(3) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB3,
      DOB(2) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB2,
      DOB(1) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB1,
      DOB(0) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOB0,
      DOPB(3) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPB3,
      DOPB(2) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPB2,
      DOPB(1) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPB1,
      DOPB(0) => MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DOPB0
    );
  CU_PC_inc_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_PC_inc_F5MUX_4577,
      O => CU_PC_inc_DXMUX_4579
    );
  CU_PC_inc_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X24Y12"
    )
    port map (
      IA => CU_PC_inc_mux00002_4568,
      IB => CU_PC_inc_mux00001_4575,
      SEL => CU_PC_inc_BXINV_4570,
      O => CU_PC_inc_F5MUX_4577
    );
  CU_PC_inc_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_PC_inc_1525,
      O => CU_PC_inc_BXINV_4570
    );
  CU_PC_inc_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_PC_inc_CLKINV_4562
    );
  CU_PC_inc_CEINV : X_INV
    generic map(
      LOC => "SLICE_X24Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_PC_inc_CEINVNOT
    );
  CU_loadREM_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X25Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_loadREM_F5MUX_4611,
      O => CU_loadREM_DXMUX_4613
    );
  CU_loadREM_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X25Y12"
    )
    port map (
      IA => CU_loadREM_mux00002_4602,
      IB => CU_loadREM_mux00001_4609,
      SEL => CU_loadREM_BXINV_4604,
      O => CU_loadREM_F5MUX_4611
    );
  CU_loadREM_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_N18_0,
      O => CU_loadREM_BXINV_4604
    );
  CU_loadREM_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_loadREM_CLKINV_4595
    );
  CU_next_state_mux0012_13_38_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state_mux0012_13_38_F5MUX_4643,
      O => CU_next_state_mux0012_13_38
    );
  CU_next_state_mux0012_13_38_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X24Y10"
    )
    port map (
      IA => CU_next_state_mux0012_13_382_4632,
      IB => CU_next_state_mux0012_13_381_4641,
      SEL => CU_next_state_mux0012_13_38_BXINV_4634,
      O => CU_next_state_mux0012_13_38_F5MUX_4643
    );
  CU_next_state_mux0012_13_38_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_current_state(0),
      O => CU_next_state_mux0012_13_38_BXINV_4634
    );
  CU_sel_ula_and0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_ula_and0000,
      O => CU_sel_ula_and0000_0
    );
  CU_sel_ula_and0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_N7_pack_1,
      O => CU_N7
    );
  CU_next_state_mux0012_1_1122 : X_LUT4
    generic map(
      INIT => X"712A",
      LOC => "SLICE_X22Y12"
    )
    port map (
      ADR0 => RI_reg(6),
      ADR1 => RI_reg(7),
      ADR2 => RI_reg(4),
      ADR3 => RI_reg(5),
      O => CU_N7_pack_1
    );
  CU_next_state_mux0012_0_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state_mux0012_0_8_4690,
      O => CU_next_state_mux0012_0_8_0
    );
  CU_next_state_mux0012_0_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => exec_NOT_pack_1,
      O => exec_NOT
    );
  CU_N9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_N9,
      O => CU_N9_0
    );
  CU_N9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => exec_STA_pack_1,
      O => exec_STA
    );
  CU_next_state_mux0012_4_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state_mux0012_4_11_4738,
      O => CU_next_state_mux0012_4_11_0
    );
  CU_next_state_mux0012_4_11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => exec_JN_pack_1,
      O => exec_JN
    );
  alu_Z_cmp_eq000028_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X22Y30"
    )
    port map (
      ADR0 => ULA_output(2),
      ADR1 => ULA_output(5),
      ADR2 => ULA_output(3),
      ADR3 => ULA_output(4),
      O => alu_Z_cmp_eq000028_SW0_O_pack_1
    );
  NZ_data_Z_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => ULA_Z,
      O => NZ_data_Z_DXMUX_4771
    );
  NZ_data_Z_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => alu_Z_cmp_eq000028_SW0_O_pack_1,
      O => alu_Z_cmp_eq000028_SW0_O
    );
  NZ_data_Z_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => NZ_data_Z_CLKINV_4755
    );
  NZ_data_Z_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_loadAC_1652,
      O => NZ_data_Z_CEINV_4754
    );
  N14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => N14,
      O => N14_0
    );
  N14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state_or0001_pack_1,
      O => CU_next_state_or0001
    );
  CU_next_state_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y11",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state_mux0012(12),
      O => CU_next_state_1_DXMUX_4831
    );
  CU_next_state_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y11",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state_mux0012_12_22_O_pack_2,
      O => CU_next_state_mux0012_12_22_O
    );
  CU_next_state_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y11",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_next_state_1_CLKINV_4814
    );
  CU_next_state_mux0012_7_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state_mux0012_7_11_4859,
      O => CU_next_state_mux0012_7_11_0
    );
  CU_next_state_mux0012_7_11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => exec_JZ_pack_1,
      O => exec_JZ
    );
  CU_loadRDM_mux000015_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_loadRDM_mux000015_4883,
      O => CU_loadRDM_mux000015_0
    );
  CU_loadRDM_mux000015_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_N10_pack_1,
      O => CU_N10
    );
  CU_next_state_mux0012_4_23_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y11",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state_mux0012_4_23,
      O => CU_next_state_mux0012_4_23_0
    );
  CU_next_state_mux0012_4_23_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y11",
      PATHPULSE => 638 ps
    )
    port map (
      I => exec_HLT_pack_1,
      O => exec_HLT
    );
  CU_next_state_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state_mux0012(13),
      O => CU_next_state_0_DXMUX_4938
    );
  CU_next_state_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state_mux0012_13_56_O_pack_2,
      O => CU_next_state_mux0012_13_56_O
    );
  CU_next_state_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_next_state_0_CLKINV_4922
    );
  CU_sel_mux_RDM_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X25Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_mux_RDM_mux0000,
      O => CU_sel_mux_RDM_DXMUX_4977
    );
  CU_sel_mux_RDM_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X25Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_sel_mux0000,
      O => CU_sel_mux_RDM_DYMUX_4965
    );
  CU_sel_mux_RDM_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_sel_mux_RDM_CLKINV_4957
    );
  CU_sel_mux_RDM_CEINV : X_INV
    generic map(
      LOC => "SLICE_X25Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_sel_mux_RDM_CEINVNOT
    );
  R_E_M_reg_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X25Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => MPX_output(1),
      O => R_E_M_reg_1_DXMUX_5020
    );
  R_E_M_reg_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X25Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => MPX_output(0),
      O => R_E_M_reg_1_DYMUX_5004
    );
  R_E_M_reg_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => R_E_M_reg_1_SRINV_4995
    );
  R_E_M_reg_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => R_E_M_reg_1_CLKINV_4994
    );
  R_E_M_reg_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_loadREM_1685,
      O => R_E_M_reg_1_CEINV_4993
    );
  R_E_M_reg_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X25Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => MPX_output(3),
      O => R_E_M_reg_3_DXMUX_5066
    );
  R_E_M_reg_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X25Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => MPX_output(2),
      O => R_E_M_reg_3_DYMUX_5050
    );
  R_E_M_reg_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => R_E_M_reg_3_SRINV_5041
    );
  R_E_M_reg_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => R_E_M_reg_3_CLKINV_5040
    );
  R_E_M_reg_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_loadREM_1685,
      O => R_E_M_reg_3_CEINV_5039
    );
  R_E_M_reg_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => MPX_output(5),
      O => R_E_M_reg_5_DXMUX_5112
    );
  R_E_M_reg_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => MPX_output(4),
      O => R_E_M_reg_5_DYMUX_5096
    );
  R_E_M_reg_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => R_E_M_reg_5_SRINV_5087
    );
  R_E_M_reg_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => R_E_M_reg_5_CLKINV_5086
    );
  R_E_M_reg_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_loadREM_1685,
      O => R_E_M_reg_5_CEINV_5085
    );
  R_E_M_reg_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => MPX_output(7),
      O => R_E_M_reg_7_DXMUX_5158
    );
  R_E_M_reg_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => MPX_output(6),
      O => R_E_M_reg_7_DYMUX_5142
    );
  R_E_M_reg_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => R_E_M_reg_7_SRINV_5133
    );
  R_E_M_reg_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => R_E_M_reg_7_CLKINV_5132
    );
  R_E_M_reg_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_loadREM_1685,
      O => R_E_M_reg_7_CEINV_5131
    );
  CU_state_timer_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_1,
      O => CU_state_timer_1_DXMUX_5200
    );
  CU_state_timer_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_0,
      O => CU_state_timer_1_DYMUX_5185
    );
  CU_state_timer_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_state_timer_1_SRINV_5175
    );
  CU_state_timer_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_state_timer_1_CLKINV_5174
    );
  CU_state_timer_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_3,
      O => CU_state_timer_3_DXMUX_5242
    );
  CU_state_timer_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_2,
      O => CU_state_timer_3_DYMUX_5226
    );
  CU_state_timer_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_state_timer_3_SRINV_5216
    );
  CU_state_timer_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_state_timer_3_CLKINV_5215
    );
  CU_state_timer_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_11,
      O => CU_state_timer_11_DXMUX_5284
    );
  CU_state_timer_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_10,
      O => CU_state_timer_11_DYMUX_5268
    );
  CU_state_timer_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_state_timer_11_SRINV_5258
    );
  CU_state_timer_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_state_timer_11_CLKINV_5257
    );
  CU_state_timer_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_5,
      O => CU_state_timer_5_DXMUX_5326
    );
  CU_state_timer_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_4,
      O => CU_state_timer_5_DYMUX_5310
    );
  CU_state_timer_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_state_timer_5_SRINV_5300
    );
  CU_state_timer_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_state_timer_5_CLKINV_5299
    );
  CU_state_timer_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_13,
      O => CU_state_timer_13_DXMUX_5368
    );
  CU_state_timer_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_12,
      O => CU_state_timer_13_DYMUX_5352
    );
  CU_state_timer_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_state_timer_13_SRINV_5342
    );
  CU_state_timer_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_state_timer_13_CLKINV_5341
    );
  CU_state_timer_21_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_21,
      O => CU_state_timer_21_DXMUX_5410
    );
  CU_state_timer_21_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_20,
      O => CU_state_timer_21_DYMUX_5394
    );
  CU_state_timer_21_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_state_timer_21_SRINV_5384
    );
  CU_state_timer_21_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_state_timer_21_CLKINV_5383
    );
  CU_state_timer_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_7,
      O => CU_state_timer_7_DXMUX_5452
    );
  CU_state_timer_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_6,
      O => CU_state_timer_7_DYMUX_5436
    );
  CU_state_timer_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_state_timer_7_SRINV_5426
    );
  CU_state_timer_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_state_timer_7_CLKINV_5425
    );
  CU_state_timer_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_15,
      O => CU_state_timer_15_DXMUX_5494
    );
  CU_state_timer_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_14,
      O => CU_state_timer_15_DYMUX_5478
    );
  CU_state_timer_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_state_timer_15_SRINV_5468
    );
  CU_state_timer_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_state_timer_15_CLKINV_5467
    );
  CU_state_timer_23_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_23,
      O => CU_state_timer_23_DXMUX_5536
    );
  CU_state_timer_23_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_22,
      O => CU_state_timer_23_DYMUX_5520
    );
  CU_state_timer_23_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_state_timer_23_SRINV_5510
    );
  CU_state_timer_23_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_state_timer_23_CLKINV_5509
    );
  CU_state_timer_31_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_31,
      O => CU_state_timer_31_DXMUX_5578
    );
  CU_state_timer_31_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_30,
      O => CU_state_timer_31_DYMUX_5562
    );
  CU_state_timer_31_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_state_timer_31_SRINV_5552
    );
  CU_state_timer_31_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_state_timer_31_CLKINV_5551
    );
  CU_state_timer_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_9,
      O => CU_state_timer_9_DXMUX_5620
    );
  CU_state_timer_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_8,
      O => CU_state_timer_9_DYMUX_5604
    );
  CU_state_timer_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_state_timer_9_SRINV_5594
    );
  CU_state_timer_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_state_timer_9_CLKINV_5593
    );
  CU_state_timer_17_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_17,
      O => CU_state_timer_17_DXMUX_5662
    );
  CU_state_timer_17_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_16,
      O => CU_state_timer_17_DYMUX_5646
    );
  CU_state_timer_17_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_state_timer_17_SRINV_5636
    );
  CU_state_timer_17_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_state_timer_17_CLKINV_5635
    );
  CU_state_timer_25_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X3Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_state_timer_25_SRINV_5678,
      O => CU_state_timer_25_FFX_RST
    );
  CU_state_timer_25 : X_FF
    generic map(
      LOC => "SLICE_X3Y31",
      INIT => '0'
    )
    port map (
      I => CU_state_timer_25_DXMUX_5704,
      CE => VCC,
      CLK => CU_state_timer_25_CLKINV_5677,
      SET => GND,
      RST => CU_state_timer_25_FFX_RST,
      O => CU_state_timer(25)
    );
  CU_Mcount_state_timer_eqn_241 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X3Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_Result(24),
      ADR2 => CU_state_timer_not0001_inv,
      ADR3 => VCC,
      O => CU_Mcount_state_timer_eqn_24
    );
  CU_state_timer_25_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X3Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_state_timer_25_SRINV_5678,
      O => CU_state_timer_25_FFY_RST
    );
  CU_state_timer_24 : X_FF
    generic map(
      LOC => "SLICE_X3Y31",
      INIT => '0'
    )
    port map (
      I => CU_state_timer_25_DYMUX_5688,
      CE => VCC,
      CLK => CU_state_timer_25_CLKINV_5677,
      SET => GND,
      RST => CU_state_timer_25_FFY_RST,
      O => CU_state_timer(24)
    );
  CU_state_timer_25_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_25,
      O => CU_state_timer_25_DXMUX_5704
    );
  CU_state_timer_25_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_24,
      O => CU_state_timer_25_DYMUX_5688
    );
  CU_state_timer_25_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_state_timer_25_SRINV_5678
    );
  CU_state_timer_25_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_state_timer_25_CLKINV_5677
    );
  CU_state_timer_19_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X2Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_state_timer_19_SRINV_5720,
      O => CU_state_timer_19_FFY_RST
    );
  CU_state_timer_18 : X_FF
    generic map(
      LOC => "SLICE_X2Y22",
      INIT => '0'
    )
    port map (
      I => CU_state_timer_19_DYMUX_5730,
      CE => VCC,
      CLK => CU_state_timer_19_CLKINV_5719,
      SET => GND,
      RST => CU_state_timer_19_FFY_RST,
      O => CU_state_timer(18)
    );
  CU_Mcount_state_timer_eqn_191 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X2Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_state_timer_not0001_inv,
      ADR2 => VCC,
      ADR3 => CU_Result(19),
      O => CU_Mcount_state_timer_eqn_19
    );
  CU_state_timer_19_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X2Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_state_timer_19_SRINV_5720,
      O => CU_state_timer_19_FFX_RST
    );
  CU_state_timer_19 : X_FF
    generic map(
      LOC => "SLICE_X2Y22",
      INIT => '0'
    )
    port map (
      I => CU_state_timer_19_DXMUX_5746,
      CE => VCC,
      CLK => CU_state_timer_19_CLKINV_5719,
      SET => GND,
      RST => CU_state_timer_19_FFX_RST,
      O => CU_state_timer(19)
    );
  CU_state_timer_19_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_19,
      O => CU_state_timer_19_DXMUX_5746
    );
  CU_state_timer_19_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_18,
      O => CU_state_timer_19_DYMUX_5730
    );
  CU_state_timer_19_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_state_timer_19_SRINV_5720
    );
  CU_state_timer_19_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_state_timer_19_CLKINV_5719
    );
  CU_Mcount_state_timer_eqn_181 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X2Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_state_timer_not0001_inv,
      ADR2 => VCC,
      ADR3 => CU_Result(18),
      O => CU_Mcount_state_timer_eqn_18
    );
  CU_Mcount_state_timer_eqn_271 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X2Y25"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CU_Result(27),
      ADR3 => CU_state_timer_not0001_inv,
      O => CU_Mcount_state_timer_eqn_27
    );
  CU_state_timer_27_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_27,
      O => CU_state_timer_27_DXMUX_5788
    );
  CU_state_timer_27_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_26,
      O => CU_state_timer_27_DYMUX_5772
    );
  CU_state_timer_27_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_state_timer_27_SRINV_5762
    );
  CU_state_timer_27_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_state_timer_27_CLKINV_5761
    );
  CU_Mcount_state_timer_eqn_261 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X2Y25"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_Result(26),
      ADR2 => VCC,
      ADR3 => CU_state_timer_not0001_inv,
      O => CU_Mcount_state_timer_eqn_26
    );
  CU_state_timer_29_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X3Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_state_timer_29_SRINV_5804,
      O => CU_state_timer_29_FFY_RST
    );
  CU_state_timer_28 : X_FF
    generic map(
      LOC => "SLICE_X3Y26",
      INIT => '0'
    )
    port map (
      I => CU_state_timer_29_DYMUX_5814,
      CE => VCC,
      CLK => CU_state_timer_29_CLKINV_5803,
      SET => GND,
      RST => CU_state_timer_29_FFY_RST,
      O => CU_state_timer(28)
    );
  CU_state_timer_29_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X3Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_state_timer_29_SRINV_5804,
      O => CU_state_timer_29_FFX_RST
    );
  CU_state_timer_29 : X_FF
    generic map(
      LOC => "SLICE_X3Y26",
      INIT => '0'
    )
    port map (
      I => CU_state_timer_29_DXMUX_5830,
      CE => VCC,
      CLK => CU_state_timer_29_CLKINV_5803,
      SET => GND,
      RST => CU_state_timer_29_FFX_RST,
      O => CU_state_timer(29)
    );
  CU_state_timer_29_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_29,
      O => CU_state_timer_29_DXMUX_5830
    );
  CU_state_timer_29_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_Mcount_state_timer_eqn_28,
      O => CU_state_timer_29_DYMUX_5814
    );
  CU_state_timer_29_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_state_timer_29_SRINV_5804
    );
  CU_state_timer_29_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_state_timer_29_CLKINV_5803
    );
  CU_Mcount_state_timer_eqn_281 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X3Y26"
    )
    port map (
      ADR0 => CU_state_timer_not0001_inv,
      ADR1 => CU_Result(28),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CU_Mcount_state_timer_eqn_28
    );
  CU_next_state_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y9",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state_mux0012(10),
      O => CU_next_state_3_DXMUX_5872
    );
  CU_next_state_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y9",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state_mux0012(11),
      O => CU_next_state_3_DYMUX_5857
    );
  CU_next_state_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y9",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_next_state_3_SRINV_5848
    );
  CU_next_state_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y9",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_next_state_3_CLKINV_5847
    );
  CU_next_state_2 : X_FF
    generic map(
      LOC => "SLICE_X18Y9",
      INIT => '0'
    )
    port map (
      I => CU_next_state_3_DYMUX_5857,
      CE => VCC,
      CLK => CU_next_state_3_CLKINV_5847,
      SET => GND,
      RST => CU_next_state_3_SRINV_5848,
      O => CU_next_state(2)
    );
  CU_next_state_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state_mux0012(8),
      O => CU_next_state_5_DXMUX_5914
    );
  CU_next_state_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state_mux0012(9),
      O => CU_next_state_5_DYMUX_5900
    );
  CU_next_state_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_next_state_5_SRINV_5891
    );
  CU_next_state_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_next_state_5_CLKINV_5890
    );
  CU_loadAC_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y17",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_loadAC_mux0000,
      O => CU_loadAC_DYMUX_5937
    );
  CU_loadAC_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y17",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_loadAC_CLKINV_5927
    );
  CU_next_state_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state_mux0012(7),
      O => CU_next_state_6_DYMUX_5960
    );
  CU_next_state_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_next_state_6_CLKINV_5951
    );
  CU_next_state_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state_mux0012(4),
      O => CU_next_state_9_DXMUX_6002
    );
  CU_next_state_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_next_state_mux0012(5),
      O => CU_next_state_9_DYMUX_5988
    );
  CU_next_state_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_next_state_9_SRINV_5979
    );
  CU_next_state_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => CU_next_state_9_CLKINV_5978
    );
  alu_MULTIPLICATION_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X26Y31",
      INIT => '0'
    )
    port map (
      I => alu_MULTIPLICATION_1_DXMUX_2502,
      GE => VCC,
      CLK => NlwInverterSignal_alu_MULTIPLICATION_1_CLK,
      SET => GND,
      RST => GND,
      O => alu_MULTIPLICATION(1)
    );
  CU_Mcount_state_timer_lut_24_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X1Y30"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_state_timer(24),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CU_Mcount_state_timer_lut(24)
    );
  CU_Mcount_state_timer_lut_22_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X1Y29"
    )
    port map (
      ADR0 => CU_state_timer(22),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => CU_Mcount_state_timer_lut(22)
    );
  CU_Mcount_state_timer_lut_25_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X1Y30"
    )
    port map (
      ADR0 => CU_state_timer(25),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => CU_Mcount_state_timer_lut(25)
    );
  PC_Mcount_data_lut_3_Q : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X27Y20"
    )
    port map (
      ADR0 => PC_data(3),
      ADR1 => R_D_M_reg(3),
      ADR2 => CU_loadPC_1524,
      ADR3 => VCC,
      O => PC_Mcount_data_lut(3)
    );
  CU_current_state_cmp_eq0000_wg_lut_4_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X3Y22"
    )
    port map (
      ADR0 => CU_state_timer(20),
      ADR1 => CU_state_timer(22),
      ADR2 => CU_state_timer(21),
      ADR3 => CU_state_timer(3),
      O => CU_current_state_cmp_eq0000_wg_lut(4)
    );
  CU_current_state_cmp_eq0000_wg_lut_7_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X3Y23"
    )
    port map (
      ADR0 => CU_state_timer(29),
      ADR1 => CU_state_timer(30),
      ADR2 => CU_state_timer(0),
      ADR3 => CU_state_timer(31),
      O => CU_current_state_cmp_eq0000_wg_lut(7)
    );
  AC_reg_2 : X_FF
    generic map(
      LOC => "SLICE_X27Y32",
      INIT => '0'
    )
    port map (
      I => AC_reg_2_DYMUX_3836,
      CE => AC_reg_2_CEINV_3823,
      CLK => AC_reg_2_CLKINV_3824,
      SET => GND,
      RST => AC_reg_2_FFY_RSTAND_3842,
      O => AC_reg(2)
    );
  AC_reg_2_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X27Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => AC_reg_2_FFY_RSTAND_3842
    );
  AC_reg_6 : X_FF
    generic map(
      LOC => "SLICE_X25Y34",
      INIT => '0'
    )
    port map (
      I => AC_reg_6_DYMUX_4116,
      CE => AC_reg_6_CEINV_4103,
      CLK => AC_reg_6_CLKINV_4104,
      SET => GND,
      RST => AC_reg_6_FFY_RSTAND_4122,
      O => AC_reg(6)
    );
  AC_reg_6_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X25Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => AC_reg_6_FFY_RSTAND_4122
    );
  alu_Mmux_result_47 : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X23Y34"
    )
    port map (
      ADR0 => CU_sel_ula(0),
      ADR1 => alu_MULTIPLICATION(7),
      ADR2 => AC_reg(6),
      ADR3 => VCC,
      O => alu_Mmux_result_47_4200
    );
  CU_next_state_mux0012_13_381 : X_LUT4
    generic map(
      INIT => X"BBBB",
      LOC => "SLICE_X24Y10"
    )
    port map (
      ADR0 => CU_stop_s_1511,
      ADR1 => enable_IBUF_1520,
      ADR2 => VCC,
      ADR3 => VCC,
      O => CU_next_state_mux0012_13_381_4641
    );
  CU_next_state_mux0012_13_382 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "SLICE_X24Y10"
    )
    port map (
      ADR0 => CU_current_state(6),
      ADR1 => CU_next_state_mux0012_13_14_0,
      ADR2 => CU_N10,
      ADR3 => CU_N18_0,
      O => CU_next_state_mux0012_13_382_4632
    );
  CU_next_state_mux0012_10_1 : X_LUT4
    generic map(
      INIT => X"FCF0",
      LOC => "SLICE_X18Y9"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_next_state(3),
      ADR2 => CU_current_state(2),
      ADR3 => CU_N9_0,
      O => CU_next_state_mux0012(10)
    );
  CU_Mcount_state_timer_eqn_291 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X3Y26"
    )
    port map (
      ADR0 => CU_state_timer_not0001_inv,
      ADR1 => VCC,
      ADR2 => CU_Result(29),
      ADR3 => VCC,
      O => CU_Mcount_state_timer_eqn_29
    );
  CU_state_timer_27 : X_FF
    generic map(
      LOC => "SLICE_X2Y25",
      INIT => '0'
    )
    port map (
      I => CU_state_timer_27_DXMUX_5788,
      CE => VCC,
      CLK => CU_state_timer_27_CLKINV_5761,
      SET => GND,
      RST => CU_state_timer_27_SRINV_5762,
      O => CU_state_timer(27)
    );
  CU_state_timer_26 : X_FF
    generic map(
      LOC => "SLICE_X2Y25",
      INIT => '0'
    )
    port map (
      I => CU_state_timer_27_DYMUX_5772,
      CE => VCC,
      CLK => CU_state_timer_27_CLKINV_5761,
      SET => GND,
      RST => CU_state_timer_27_SRINV_5762,
      O => CU_state_timer(26)
    );
  CU_Mcount_state_timer_eqn_251 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X3Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CU_state_timer_not0001_inv,
      ADR3 => CU_Result(25),
      O => CU_Mcount_state_timer_eqn_25
    );
  CU_next_state_mux0012_3_1 : X_LUT4
    generic map(
      INIT => X"FAAA",
      LOC => "SLICE_X25Y8"
    )
    port map (
      ADR0 => CU_current_state(6),
      ADR1 => VCC,
      ADR2 => CU_N9_0,
      ADR3 => CU_next_state(10),
      O => CU_next_state_mux0012(3)
    );
  CU_next_state_10 : X_FF
    generic map(
      LOC => "SLICE_X25Y8",
      INIT => '0'
    )
    port map (
      I => CU_next_state_11_DYMUX_1720,
      CE => VCC,
      CLK => CU_next_state_11_CLKINV_1710,
      SET => GND,
      RST => CU_next_state_11_SRINV_1711,
      O => CU_next_state(10)
    );
  CU_next_state_mux0012_2_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X25Y8"
    )
    port map (
      ADR0 => CU_next_state(11),
      ADR1 => exec_HLT,
      ADR2 => CU_N9_0,
      ADR3 => CU_current_state(3),
      O => CU_next_state_mux0012(2)
    );
  CU_next_state_11 : X_FF
    generic map(
      LOC => "SLICE_X25Y8",
      INIT => '0'
    )
    port map (
      I => CU_next_state_11_DXMUX_1734,
      CE => VCC,
      CLK => CU_next_state_11_CLKINV_1710,
      SET => GND,
      RST => CU_next_state_11_SRINV_1711,
      O => CU_next_state(11)
    );
  CU_next_state_mux0012_1_1 : X_LUT4
    generic map(
      INIT => X"AA08",
      LOC => "SLICE_X16Y12"
    )
    port map (
      ADR0 => CU_current_state(7),
      ADR1 => CU_next_state(12),
      ADR2 => exec_STA,
      ADR3 => CU_N7,
      O => CU_next_state_mux0012(1)
    );
  R_D_M_reg_0 : X_FF
    generic map(
      LOC => "SLICE_X24Y29",
      INIT => '0'
    )
    port map (
      I => R_D_M_reg_1_DYMUX_1805,
      CE => R_D_M_reg_1_CEINV_1794,
      CLK => R_D_M_reg_1_CLKINV_1795,
      SET => GND,
      RST => R_D_M_reg_1_SRINV_1796,
      O => R_D_M_reg(0)
    );
  CU_next_state_12 : X_FF
    generic map(
      LOC => "SLICE_X16Y12",
      INIT => '0'
    )
    port map (
      I => CU_next_state_13_DYMUX_1762,
      CE => VCC,
      CLK => CU_next_state_13_CLKINV_1753,
      SET => GND,
      RST => CU_next_state_13_SRINV_1754,
      O => CU_next_state(12)
    );
  CU_next_state_mux0012_0_17 : X_LUT4
    generic map(
      INIT => X"FEEE",
      LOC => "SLICE_X16Y12"
    )
    port map (
      ADR0 => CU_next_state_mux0012_0_8_0,
      ADR1 => CU_current_state(12),
      ADR2 => CU_N9_0,
      ADR3 => CU_next_state(13),
      O => CU_next_state_mux0012(0)
    );
  CU_next_state_13 : X_FF
    generic map(
      LOC => "SLICE_X16Y12",
      INIT => '0'
    )
    port map (
      I => CU_next_state_13_DXMUX_1776,
      CE => VCC,
      CLK => CU_next_state_13_CLKINV_1753,
      SET => GND,
      RST => CU_next_state_13_SRINV_1754,
      O => CU_next_state(13)
    );
  mux_rdm_S_1_1 : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X24Y29"
    )
    port map (
      ADR0 => AC_reg(1),
      ADR1 => VCC,
      ADR2 => MEM_output(1),
      ADR3 => CU_sel_mux_RDM_1453,
      O => muxrdm_output(1)
    );
  R_D_M_reg_1 : X_FF
    generic map(
      LOC => "SLICE_X24Y29",
      INIT => '0'
    )
    port map (
      I => R_D_M_reg_1_DXMUX_1821,
      CE => R_D_M_reg_1_CEINV_1794,
      CLK => R_D_M_reg_1_CLKINV_1795,
      SET => GND,
      RST => R_D_M_reg_1_SRINV_1796,
      O => R_D_M_reg(1)
    );
  CU_loadRDM_mux00004 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X24Y13"
    )
    port map (
      ADR0 => CU_current_state(10),
      ADR1 => CU_current_state(5),
      ADR2 => CU_current_state(2),
      ADR3 => CU_current_state(12),
      O => CU_loadRDM_mux00004_2190
    );
  CU_loadRDM_mux000016 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X27Y11"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_loadRDM_mux00004_0,
      ADR2 => VCC,
      ADR3 => CU_loadRDM_mux000015_0,
      O => CU_loadRDM_mux0000
    );
  CU_loadRDM : X_FF
    generic map(
      LOC => "SLICE_X27Y11",
      INIT => '0'
    )
    port map (
      I => CU_loadRDM_DYMUX_1845,
      CE => VCC,
      CLK => CU_loadRDM_CLKINV_1834,
      SET => GND,
      RST => CU_loadRDM_FFY_RSTAND_1850,
      O => CU_loadRDM_1452
    );
  CU_loadRDM_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X27Y11",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_loadRDM_FFY_RSTAND_1850
    );
  mux_rdm_S_2_1 : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X24Y32"
    )
    port map (
      ADR0 => MEM_output(2),
      ADR1 => VCC,
      ADR2 => AC_reg(2),
      ADR3 => CU_sel_mux_RDM_1453,
      O => muxrdm_output(2)
    );
  R_D_M_reg_2 : X_FF
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => '0'
    )
    port map (
      I => R_D_M_reg_3_DYMUX_1874,
      CE => R_D_M_reg_3_CEINV_1863,
      CLK => R_D_M_reg_3_CLKINV_1864,
      SET => GND,
      RST => R_D_M_reg_3_SRINV_1865,
      O => R_D_M_reg(2)
    );
  R_D_M_reg_3 : X_FF
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => '0'
    )
    port map (
      I => R_D_M_reg_3_DXMUX_1890,
      CE => R_D_M_reg_3_CEINV_1863,
      CLK => R_D_M_reg_3_CLKINV_1864,
      SET => GND,
      RST => R_D_M_reg_3_SRINV_1865,
      O => R_D_M_reg(3)
    );
  CU_sel_ula_0 : X_FF
    generic map(
      LOC => "SLICE_X23Y18",
      INIT => '0'
    )
    port map (
      I => CU_sel_ula_1_DYMUX_1919,
      CE => CU_sel_ula_1_CEINV_1910,
      CLK => CU_sel_ula_1_CLKINV_1911,
      SET => GND,
      RST => GND,
      O => CU_sel_ula(0)
    );
  CU_sel_ula_mux0000_2_Q : X_LUT4
    generic map(
      INIT => X"BAFD",
      LOC => "SLICE_X23Y18"
    )
    port map (
      ADR0 => RI_reg(6),
      ADR1 => RI_reg(4),
      ADR2 => RI_reg(7),
      ADR3 => RI_reg(5),
      O => CU_sel_ula_mux0000(2)
    );
  CU_sel_ula_mux0000_1_Q : X_LUT4
    generic map(
      INIT => X"FF27",
      LOC => "SLICE_X23Y18"
    )
    port map (
      ADR0 => RI_reg(6),
      ADR1 => RI_reg(4),
      ADR2 => RI_reg(5),
      ADR3 => RI_reg(7),
      O => CU_sel_ula_mux0000(1)
    );
  CU_sel_ula_1 : X_FF
    generic map(
      LOC => "SLICE_X23Y18",
      INIT => '0'
    )
    port map (
      I => CU_sel_ula_1_DXMUX_1931,
      CE => CU_sel_ula_1_CEINV_1910,
      CLK => CU_sel_ula_1_CLKINV_1911,
      SET => GND,
      RST => GND,
      O => CU_sel_ula(1)
    );
  mux_rdm_S_4_1 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X22Y32"
    )
    port map (
      ADR0 => AC_reg(4),
      ADR1 => VCC,
      ADR2 => CU_sel_mux_RDM_1453,
      ADR3 => MEM_output(4),
      O => muxrdm_output(4)
    );
  R_D_M_reg_5 : X_FF
    generic map(
      LOC => "SLICE_X22Y32",
      INIT => '0'
    )
    port map (
      I => R_D_M_reg_5_DXMUX_1974,
      CE => R_D_M_reg_5_CEINV_1947,
      CLK => R_D_M_reg_5_CLKINV_1948,
      SET => GND,
      RST => R_D_M_reg_5_SRINV_1949,
      O => R_D_M_reg(5)
    );
  CU_sel_ula_mux0000_0_1 : X_LUT4
    generic map(
      INIT => X"F8F7",
      LOC => "SLICE_X23Y13"
    )
    port map (
      ADR0 => RI_reg(5),
      ADR1 => RI_reg(4),
      ADR2 => RI_reg(7),
      ADR3 => RI_reg(6),
      O => CU_sel_ula_mux0000(0)
    );
  CU_sel_ula_2 : X_FF
    generic map(
      LOC => "SLICE_X23Y13",
      INIT => '0'
    )
    port map (
      I => CU_sel_ula_2_DYMUX_2003,
      CE => CU_sel_ula_2_CEINV_1994,
      CLK => CU_sel_ula_2_CLKINV_1995,
      SET => GND,
      RST => GND,
      O => CU_sel_ula(2)
    );
  dec_s_exec_NOP_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X23Y13"
    )
    port map (
      ADR0 => RI_reg(5),
      ADR1 => RI_reg(4),
      ADR2 => RI_reg(7),
      ADR3 => RI_reg(6),
      O => exec_NOP
    );
  mux_rdm_S_6_1 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X22Y28"
    )
    port map (
      ADR0 => AC_reg(6),
      ADR1 => MEM_output(6),
      ADR2 => VCC,
      ADR3 => CU_sel_mux_RDM_1453,
      O => muxrdm_output(6)
    );
  R_D_M_reg_7 : X_FF
    generic map(
      LOC => "SLICE_X22Y28",
      INIT => '0'
    )
    port map (
      I => R_D_M_reg_7_DXMUX_2053,
      CE => R_D_M_reg_7_CEINV_2026,
      CLK => R_D_M_reg_7_CLKINV_2027,
      SET => GND,
      RST => R_D_M_reg_7_SRINV_2028,
      O => R_D_M_reg(7)
    );
  CU_current_state_2 : X_FF
    generic map(
      LOC => "SLICE_X18Y8",
      INIT => '0'
    )
    port map (
      I => CU_current_state_3_DYMUX_2070,
      CE => CU_current_state_3_CEINV_2067,
      CLK => CU_current_state_3_CLKINV_2068,
      SET => GND,
      RST => GND,
      O => CU_current_state(2)
    );
  CU_current_state_3 : X_FF
    generic map(
      LOC => "SLICE_X18Y8",
      INIT => '0'
    )
    port map (
      I => CU_current_state_3_DXMUX_2076,
      CE => CU_current_state_3_CEINV_2067,
      CLK => CU_current_state_3_CLKINV_2068,
      SET => GND,
      RST => GND,
      O => CU_current_state(3)
    );
  CU_next_state_mux0012_6_SW1 : X_LUT4
    generic map(
      INIT => X"E271",
      LOC => "SLICE_X21Y9"
    )
    port map (
      ADR0 => RI_reg(5),
      ADR1 => RI_reg(4),
      ADR2 => RI_reg(7),
      ADR3 => RI_reg(6),
      O => N32_pack_2
    );
  CU_next_state_mux0012_6_Q : X_LUT4
    generic map(
      INIT => X"88F0",
      LOC => "SLICE_X21Y9"
    )
    port map (
      ADR0 => CU_current_state(7),
      ADR1 => CU_next_state(7),
      ADR2 => CU_current_state(10),
      ADR3 => N32,
      O => CU_next_state_mux0012(6)
    );
  CU_current_state_4 : X_FF
    generic map(
      LOC => "SLICE_X17Y10",
      INIT => '0'
    )
    port map (
      I => CU_current_state_5_DYMUX_2125,
      CE => CU_current_state_5_CEINV_2122,
      CLK => CU_current_state_5_CLKINV_2123,
      SET => GND,
      RST => GND,
      O => CU_current_state(4)
    );
  CU_current_state_5 : X_FF
    generic map(
      LOC => "SLICE_X17Y10",
      INIT => '0'
    )
    port map (
      I => CU_current_state_5_DXMUX_2131,
      CE => CU_current_state_5_CEINV_2122,
      CLK => CU_current_state_5_CLKINV_2123,
      SET => GND,
      RST => GND,
      O => CU_current_state(5)
    );
  CU_current_state_6 : X_FF
    generic map(
      LOC => "SLICE_X17Y11",
      INIT => '0'
    )
    port map (
      I => CU_current_state_7_DYMUX_2145,
      CE => CU_current_state_7_CEINV_2142,
      CLK => CU_current_state_7_CLKINV_2143,
      SET => GND,
      RST => GND,
      O => CU_current_state(6)
    );
  CU_current_state_7 : X_FF
    generic map(
      LOC => "SLICE_X17Y11",
      INIT => '0'
    )
    port map (
      I => CU_current_state_7_DXMUX_2151,
      CE => CU_current_state_7_CEINV_2142,
      CLK => CU_current_state_7_CLKINV_2143,
      SET => GND,
      RST => GND,
      O => CU_current_state(7)
    );
  CU_current_state_8 : X_FF
    generic map(
      LOC => "SLICE_X21Y10",
      INIT => '0'
    )
    port map (
      I => CU_current_state_9_DYMUX_2165,
      CE => CU_current_state_9_CEINV_2162,
      CLK => CU_current_state_9_CLKINV_2163,
      SET => GND,
      RST => GND,
      O => CU_current_state(8)
    );
  CU_next_state_mux0012_13_41 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X24Y13"
    )
    port map (
      ADR0 => CU_current_state(10),
      ADR1 => CU_current_state(5),
      ADR2 => CU_current_state(2),
      ADR3 => CU_current_state(12),
      O => CU_N18
    );
  CU_next_state_or000123_SW1 : X_LUT4
    generic map(
      INIT => X"BB0A",
      LOC => "SLICE_X23Y17"
    )
    port map (
      ADR0 => RI_reg(4),
      ADR1 => NZ_data_Z_1506,
      ADR2 => NZ_data_N_1484,
      ADR3 => RI_reg(5),
      O => N30
    );
  alu_MULTIPLICATION_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"8080",
      LOC => "SLICE_X28Y31"
    )
    port map (
      ADR0 => CU_sel_ula(1),
      ADR1 => CU_sel_ula(0),
      ADR2 => CU_sel_ula(2),
      ADR3 => VCC,
      O => alu_MULTIPLICATION_cmp_eq0000
    );
  CU_stop_s : X_FF
    generic map(
      LOC => "SLICE_X25Y9",
      INIT => '0'
    )
    port map (
      I => CU_stop_s_DYMUX_2233,
      CE => CU_stop_s_CEINV_2229,
      CLK => CU_stop_s_CLKINV_2230,
      SET => GND,
      RST => CU_stop_s_FFY_RSTAND_2239,
      O => CU_stop_s_1511
    );
  CU_stop_s_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X25Y9",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_stop_s_FFY_RSTAND_2239
    );
  CU_loadRI_mux0000_SW0 : X_LUT4
    generic map(
      INIT => X"FEFF",
      LOC => "SLICE_X23Y11"
    )
    port map (
      ADR0 => CU_current_state(11),
      ADR1 => CU_current_state(9),
      ADR2 => CU_current_state(6),
      ADR3 => CU_loadRI_1515,
      O => N10_pack_2
    );
  CU_loadRI_mux0000 : X_LUT4
    generic map(
      INIT => X"F0F1",
      LOC => "SLICE_X23Y11"
    )
    port map (
      ADR0 => CU_current_state(1),
      ADR1 => CU_current_state(13),
      ADR2 => CU_current_state(3),
      ADR3 => N10,
      O => CU_loadRI_mux0000_2266
    );
  CU_loadRI : X_FF
    generic map(
      LOC => "SLICE_X23Y11",
      INIT => '0'
    )
    port map (
      I => CU_loadRI_DXMUX_2269,
      CE => VCC,
      CLK => CU_loadRI_CLKINV_2253,
      SET => GND,
      RST => CU_loadRI_FFX_RSTAND_2274,
      O => CU_loadRI_1515
    );
  CU_loadRI_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X23Y11",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_loadRI_FFX_RSTAND_2274
    );
  CU_current_state_10 : X_FF
    generic map(
      LOC => "SLICE_X15Y12",
      INIT => '0'
    )
    port map (
      I => CU_current_state_11_DYMUX_2285,
      CE => CU_current_state_11_CEINV_2282,
      CLK => CU_current_state_11_CLKINV_2283,
      SET => GND,
      RST => GND,
      O => CU_current_state(10)
    );
  CU_current_state_11 : X_FF
    generic map(
      LOC => "SLICE_X15Y12",
      INIT => '0'
    )
    port map (
      I => CU_current_state_11_DXMUX_2291,
      CE => CU_current_state_11_CEINV_2282,
      CLK => CU_current_state_11_CLKINV_2283,
      SET => GND,
      RST => GND,
      O => CU_current_state(11)
    );
  CU_current_state_13 : X_FF
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => '0'
    )
    port map (
      I => CU_current_state_13_DXMUX_2311,
      CE => CU_current_state_13_CEINV_2302,
      CLK => CU_current_state_13_CLKINV_2303,
      SET => GND,
      RST => GND,
      O => CU_current_state(13)
    );
  alu_MULTIPLICATION_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X26Y29",
      INIT => '0'
    )
    port map (
      I => alu_MULTIPLICATION_3_DYMUX_2513,
      GE => VCC,
      CLK => NlwInverterSignal_alu_MULTIPLICATION_2_CLK,
      SET => GND,
      RST => GND,
      O => alu_MULTIPLICATION(2)
    );
  CU_next_state_mux0012_12_13_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X25Y11"
    )
    port map (
      ADR0 => CU_current_state(9),
      ADR1 => CU_current_state(13),
      ADR2 => CU_current_state(4),
      ADR3 => CU_current_state(8),
      O => N24_pack_1
    );
  CU_next_state_mux0012_12_13 : X_LUT4
    generic map(
      INIT => X"FF40",
      LOC => "SLICE_X25Y11"
    )
    port map (
      ADR0 => CU_stop_s_1511,
      ADR1 => enable_IBUF_1520,
      ADR2 => CU_current_state(0),
      ADR3 => N24,
      O => CU_next_state_mux0012_12_13_2349
    );
  RI_reg_4 : X_FF
    generic map(
      LOC => "SLICE_X23Y15",
      INIT => '0'
    )
    port map (
      I => RI_reg_5_DYMUX_2363,
      CE => RI_reg_5_CEINV_2359,
      CLK => RI_reg_5_CLKINV_2360,
      SET => GND,
      RST => RI_reg_5_SRINV_2361,
      O => RI_reg(4)
    );
  RI_reg_5 : X_FF
    generic map(
      LOC => "SLICE_X23Y15",
      INIT => '0'
    )
    port map (
      I => RI_reg_5_DXMUX_2372,
      CE => RI_reg_5_CEINV_2359,
      CLK => RI_reg_5_CLKINV_2360,
      SET => GND,
      RST => RI_reg_5_SRINV_2361,
      O => RI_reg(5)
    );
  RI_reg_6 : X_FF
    generic map(
      LOC => "SLICE_X22Y17",
      INIT => '0'
    )
    port map (
      I => RI_reg_7_DYMUX_2391,
      CE => RI_reg_7_CEINV_2387,
      CLK => RI_reg_7_CLKINV_2388,
      SET => GND,
      RST => RI_reg_7_SRINV_2389,
      O => RI_reg(6)
    );
  RI_reg_7 : X_FF
    generic map(
      LOC => "SLICE_X22Y17",
      INIT => '0'
    )
    port map (
      I => RI_reg_7_DXMUX_2400,
      CE => RI_reg_7_CEINV_2387,
      CLK => RI_reg_7_CLKINV_2388,
      SET => GND,
      RST => RI_reg_7_SRINV_2389,
      O => RI_reg(7)
    );
  CU_current_state_and00001 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X16Y11"
    )
    port map (
      ADR0 => rst_IBUF_1438,
      ADR1 => VCC,
      ADR2 => CU_state_timer_not0001_inv,
      ADR3 => VCC,
      O => CU_current_state_not0001_inv
    );
  PC_data_not00011 : X_LUT4
    generic map(
      INIT => X"FFAA",
      LOC => "SLICE_X25Y14"
    )
    port map (
      ADR0 => CU_loadPC_1524,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => CU_PC_inc_1525,
      O => PC_data_not0001
    );
  CU_loadPC : X_FF
    generic map(
      LOC => "SLICE_X25Y14",
      INIT => '0'
    )
    port map (
      I => CU_loadPC_DXMUX_2448,
      CE => VCC,
      CLK => CU_loadPC_CLKINV_2429,
      SET => GND,
      RST => CU_loadPC_FFX_RSTAND_2453,
      O => CU_loadPC_1524
    );
  CU_loadPC_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X25Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_loadPC_FFX_RSTAND_2453
    );
  CU_next_state_mux0012_13_14 : X_LUT4
    generic map(
      INIT => X"0011",
      LOC => "SLICE_X23Y10"
    )
    port map (
      ADR0 => CU_current_state(9),
      ADR1 => CU_current_state(4),
      ADR2 => VCC,
      ADR3 => CU_current_state(13),
      O => CU_next_state_mux0012_13_14_2472
    );
  CU_wr_enable_mem_0_mux00001 : X_LUT4
    generic map(
      INIT => X"CCEE",
      LOC => "SLICE_X23Y10"
    )
    port map (
      ADR0 => CU_wr_enable_mem(0),
      ADR1 => CU_current_state(4),
      ADR2 => VCC,
      ADR3 => CU_current_state(1),
      O => CU_wr_enable_mem_0_mux0000
    );
  CU_wr_enable_mem_0 : X_FF
    generic map(
      LOC => "SLICE_X23Y10",
      INIT => '0'
    )
    port map (
      I => CU_wr_enable_mem_0_DXMUX_2483,
      CE => VCC,
      CLK => CU_wr_enable_mem_0_CLKINV_2465,
      SET => GND,
      RST => CU_wr_enable_mem_0_FFX_RSTAND_2488,
      O => CU_wr_enable_mem(0)
    );
  CU_wr_enable_mem_0_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X23Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_wr_enable_mem_0_FFX_RSTAND_2488
    );
  alu_MULTIPLICATION_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X26Y31",
      INIT => '0'
    )
    port map (
      I => alu_MULTIPLICATION_1_DYMUX_2497,
      GE => VCC,
      CLK => NlwInverterSignal_alu_MULTIPLICATION_0_CLK,
      SET => GND,
      RST => GND,
      O => alu_MULTIPLICATION(0)
    );
  alu_MULTIPLICATION_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X26Y29",
      INIT => '0'
    )
    port map (
      I => alu_MULTIPLICATION_3_DXMUX_2518,
      GE => VCC,
      CLK => NlwInverterSignal_alu_MULTIPLICATION_3_CLK,
      SET => GND,
      RST => GND,
      O => alu_MULTIPLICATION(3)
    );
  PC_data_2 : X_FF
    generic map(
      LOC => "SLICE_X27Y20",
      INIT => '0'
    )
    port map (
      I => PC_data_2_DXMUX_3427,
      CE => PC_data_2_CEINV_3388,
      CLK => PC_data_2_CLKINV_3389,
      SET => GND,
      RST => PC_data_2_SRINV_3390,
      O => PC_data(2)
    );
  alu_MULTIPLICATION_4 : X_LATCHE
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => '0'
    )
    port map (
      I => alu_MULTIPLICATION_5_DYMUX_2529,
      GE => VCC,
      CLK => NlwInverterSignal_alu_MULTIPLICATION_4_CLK,
      SET => GND,
      RST => GND,
      O => alu_MULTIPLICATION(4)
    );
  alu_MULTIPLICATION_5 : X_LATCHE
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => '0'
    )
    port map (
      I => alu_MULTIPLICATION_5_DXMUX_2534,
      GE => VCC,
      CLK => NlwInverterSignal_alu_MULTIPLICATION_5_CLK,
      SET => GND,
      RST => GND,
      O => alu_MULTIPLICATION(5)
    );
  alu_MULTIPLICATION_6 : X_LATCHE
    generic map(
      LOC => "SLICE_X26Y32",
      INIT => '0'
    )
    port map (
      I => alu_MULTIPLICATION_7_DYMUX_2545,
      GE => VCC,
      CLK => NlwInverterSignal_alu_MULTIPLICATION_6_CLK,
      SET => GND,
      RST => GND,
      O => alu_MULTIPLICATION(6)
    );
  alu_MULTIPLICATION_7 : X_LATCHE
    generic map(
      LOC => "SLICE_X26Y32",
      INIT => '0'
    )
    port map (
      I => alu_MULTIPLICATION_7_DXMUX_2550,
      GE => VCC,
      CLK => NlwInverterSignal_alu_MULTIPLICATION_7_CLK,
      SET => GND,
      RST => GND,
      O => alu_MULTIPLICATION(7)
    );
  CU_current_state_0 : X_FF
    generic map(
      LOC => "SLICE_X16Y10",
      INIT => '1'
    )
    port map (
      I => CU_current_state_1_DYMUX_2563,
      CE => CU_current_state_1_CEINV_2560,
      CLK => CU_current_state_1_CLKINV_2561,
      SET => GND,
      RST => GND,
      O => CU_current_state(0)
    );
  CU_current_state_1 : X_FF
    generic map(
      LOC => "SLICE_X16Y10",
      INIT => '0'
    )
    port map (
      I => CU_current_state_1_DXMUX_2569,
      CE => CU_current_state_1_CEINV_2560,
      CLK => CU_current_state_1_CLKINV_2561,
      SET => GND,
      RST => GND,
      O => CU_current_state(1)
    );
  alu_Madd_result_addsub0000_lut_1_Q : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X25Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => AC_reg(1),
      ADR2 => R_D_M_reg(1),
      ADR3 => VCC,
      O => alu_Madd_result_addsub0000_lut(1)
    );
  alu_Madd_result_addsub0000_lut_0_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X25Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => AC_reg(0),
      ADR2 => VCC,
      ADR3 => R_D_M_reg(0),
      O => alu_Madd_result_addsub0000_lut(0)
    );
  alu_Madd_result_addsub0000_lut_3_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X25Y30"
    )
    port map (
      ADR0 => AC_reg(3),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => R_D_M_reg(3),
      O => alu_Madd_result_addsub0000_lut(3)
    );
  alu_Madd_result_addsub0000_lut_2_Q : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X25Y30"
    )
    port map (
      ADR0 => VCC,
      ADR1 => AC_reg(2),
      ADR2 => R_D_M_reg(2),
      ADR3 => VCC,
      O => alu_Madd_result_addsub0000_lut(2)
    );
  alu_Madd_result_addsub0000_lut_5_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X25Y31"
    )
    port map (
      ADR0 => R_D_M_reg(5),
      ADR1 => AC_reg(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => alu_Madd_result_addsub0000_lut(5)
    );
  alu_Madd_result_addsub0000_lut_4_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X25Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => AC_reg(4),
      ADR2 => VCC,
      ADR3 => R_D_M_reg(4),
      O => alu_Madd_result_addsub0000_lut(4)
    );
  alu_Madd_result_addsub0000_lut_7_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X25Y32"
    )
    port map (
      ADR0 => R_D_M_reg(7),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => NZ_data_N_1484,
      O => alu_Madd_result_addsub0000_lut(7)
    );
  alu_Madd_result_addsub0000_lut_6_Q : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X25Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => AC_reg(6),
      ADR2 => R_D_M_reg(6),
      ADR3 => VCC,
      O => alu_Madd_result_addsub0000_lut(6)
    );
  CU_Mcount_state_timer_lut_1_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X1Y18"
    )
    port map (
      ADR0 => CU_state_timer(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => CU_Mcount_state_timer_lut(1)
    );
  CU_Mcount_state_timer_lut_3_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X1Y19"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CU_state_timer(3),
      ADR3 => VCC,
      O => CU_Mcount_state_timer_lut(3)
    );
  CU_Mcount_state_timer_lut_2_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X1Y19"
    )
    port map (
      ADR0 => CU_state_timer(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => CU_Mcount_state_timer_lut(2)
    );
  CU_Mcount_state_timer_lut_5_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X1Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_state_timer(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CU_Mcount_state_timer_lut(5)
    );
  CU_Mcount_state_timer_lut_4_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X1Y20"
    )
    port map (
      ADR0 => CU_state_timer(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => CU_Mcount_state_timer_lut(4)
    );
  CU_Mcount_state_timer_lut_7_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X1Y21"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_state_timer(7),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CU_Mcount_state_timer_lut(7)
    );
  CU_Mcount_state_timer_lut_6_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X1Y21"
    )
    port map (
      ADR0 => CU_state_timer(6),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => CU_Mcount_state_timer_lut(6)
    );
  CU_Mcount_state_timer_lut_9_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X1Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => CU_state_timer(9),
      O => CU_Mcount_state_timer_lut(9)
    );
  CU_Mcount_state_timer_lut_8_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X1Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CU_state_timer(8),
      ADR3 => VCC,
      O => CU_Mcount_state_timer_lut(8)
    );
  CU_Mcount_state_timer_lut_11_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X1Y23"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CU_state_timer(11),
      ADR3 => VCC,
      O => CU_Mcount_state_timer_lut(11)
    );
  CU_Mcount_state_timer_lut_10_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X1Y23"
    )
    port map (
      ADR0 => CU_state_timer(10),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => CU_Mcount_state_timer_lut(10)
    );
  CU_Mcount_state_timer_lut_13_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X1Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => CU_state_timer(13),
      O => CU_Mcount_state_timer_lut(13)
    );
  CU_Mcount_state_timer_lut_12_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X1Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_state_timer(12),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CU_Mcount_state_timer_lut(12)
    );
  CU_Mcount_state_timer_lut_15_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X1Y25"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_state_timer(15),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CU_Mcount_state_timer_lut(15)
    );
  CU_Mcount_state_timer_lut_14_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X1Y25"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CU_state_timer(14),
      ADR3 => VCC,
      O => CU_Mcount_state_timer_lut(14)
    );
  CU_Mcount_state_timer_lut_17_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X1Y26"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => CU_state_timer(17),
      O => CU_Mcount_state_timer_lut(17)
    );
  CU_Mcount_state_timer_lut_16_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X1Y26"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_state_timer(16),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CU_Mcount_state_timer_lut(16)
    );
  CU_Mcount_state_timer_lut_19_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X1Y27"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CU_state_timer(19),
      ADR3 => VCC,
      O => CU_Mcount_state_timer_lut(19)
    );
  CU_Mcount_state_timer_lut_18_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X1Y27"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CU_state_timer(18),
      ADR3 => VCC,
      O => CU_Mcount_state_timer_lut(18)
    );
  CU_Mcount_state_timer_lut_21_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X1Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_state_timer(21),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CU_Mcount_state_timer_lut(21)
    );
  CU_Mcount_state_timer_lut_20_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X1Y28"
    )
    port map (
      ADR0 => CU_state_timer(20),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => CU_Mcount_state_timer_lut(20)
    );
  CU_Mcount_state_timer_lut_23_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X1Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_state_timer(23),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CU_Mcount_state_timer_lut(23)
    );
  PC_Mcount_data_lut_5_Q : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X27Y21"
    )
    port map (
      ADR0 => VCC,
      ADR1 => R_D_M_reg(5),
      ADR2 => CU_loadPC_1524,
      ADR3 => PC_data(5),
      O => PC_Mcount_data_lut(5)
    );
  PC_data_5 : X_FF
    generic map(
      LOC => "SLICE_X27Y21",
      INIT => '0'
    )
    port map (
      I => PC_data_4_DYMUX_3469,
      CE => PC_data_4_CEINV_3448,
      CLK => PC_data_4_CLKINV_3449,
      SET => GND,
      RST => PC_data_4_SRINV_3450,
      O => PC_data(5)
    );
  PC_data_4 : X_FF
    generic map(
      LOC => "SLICE_X27Y21",
      INIT => '0'
    )
    port map (
      I => PC_data_4_DXMUX_3487,
      CE => PC_data_4_CEINV_3448,
      CLK => PC_data_4_CLKINV_3449,
      SET => GND,
      RST => PC_data_4_SRINV_3450,
      O => PC_data(4)
    );
  PC_Mcount_data_lut_7_Q : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X27Y22"
    )
    port map (
      ADR0 => R_D_M_reg(7),
      ADR1 => VCC,
      ADR2 => CU_loadPC_1524,
      ADR3 => PC_data(7),
      O => PC_Mcount_data_lut(7)
    );
  PC_data_7 : X_FF
    generic map(
      LOC => "SLICE_X27Y22",
      INIT => '0'
    )
    port map (
      I => PC_data_6_DYMUX_3520,
      CE => PC_data_6_CEINV_3507,
      CLK => PC_data_6_CLKINV_3508,
      SET => GND,
      RST => PC_data_6_SRINV_3509,
      O => PC_data(7)
    );
  PC_Mcount_data_lut_6_Q : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X27Y22"
    )
    port map (
      ADR0 => PC_data(6),
      ADR1 => R_D_M_reg(6),
      ADR2 => CU_loadPC_1524,
      ADR3 => VCC,
      O => PC_Mcount_data_lut(6)
    );
  CU_current_state_cmp_eq0000_wg_lut_1_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X3Y20"
    )
    port map (
      ADR0 => CU_state_timer(6),
      ADR1 => CU_state_timer(13),
      ADR2 => CU_state_timer(11),
      ADR3 => CU_state_timer(12),
      O => CU_current_state_cmp_eq0000_wg_lut(1)
    );
  CU_current_state_cmp_eq0000_wg_lut_0_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X3Y20"
    )
    port map (
      ADR0 => CU_state_timer(10),
      ADR1 => CU_state_timer(7),
      ADR2 => CU_state_timer(8),
      ADR3 => CU_state_timer(9),
      O => CU_current_state_cmp_eq0000_wg_lut(0)
    );
  CU_current_state_cmp_eq0000_wg_lut_3_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X3Y21"
    )
    port map (
      ADR0 => CU_state_timer(19),
      ADR1 => CU_state_timer(18),
      ADR2 => CU_state_timer(4),
      ADR3 => CU_state_timer(17),
      O => CU_current_state_cmp_eq0000_wg_lut(3)
    );
  CU_current_state_cmp_eq0000_wg_lut_2_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X3Y21"
    )
    port map (
      ADR0 => CU_state_timer(15),
      ADR1 => CU_state_timer(5),
      ADR2 => CU_state_timer(16),
      ADR3 => CU_state_timer(14),
      O => CU_current_state_cmp_eq0000_wg_lut(2)
    );
  alu_Mmux_result_5 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X25Y26"
    )
    port map (
      ADR0 => VCC,
      ADR1 => AC_reg(1),
      ADR2 => CU_sel_ula(0),
      ADR3 => R_D_M_reg(0),
      O => alu_Mmux_result_5_3691
    );
  AC_reg_0 : X_FF
    generic map(
      LOC => "SLICE_X25Y26",
      INIT => '0'
    )
    port map (
      I => AC_reg_0_DYMUX_3695,
      CE => AC_reg_0_CEINV_3682,
      CLK => AC_reg_0_CLKINV_3683,
      SET => GND,
      RST => AC_reg_0_FFY_RSTAND_3701,
      O => AC_reg(0)
    );
  AC_reg_0_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X25Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => AC_reg_0_FFY_RSTAND_3701
    );
  alu_Mmux_result_4 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X25Y26"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => alu_MULTIPLICATION(0),
      ADR3 => CU_sel_ula(0),
      O => alu_Mmux_result_4_3710
    );
  alu_Mmux_result_6 : X_LUT4
    generic map(
      INIT => X"CA0A",
      LOC => "SLICE_X25Y27"
    )
    port map (
      ADR0 => alu_result_addsub0000(0),
      ADR1 => AC_reg(0),
      ADR2 => CU_sel_ula(0),
      ADR3 => R_D_M_reg(0),
      O => alu_Mmux_result_6_3726
    );
  alu_Mmux_result_51 : X_LUT4
    generic map(
      INIT => X"5F5A",
      LOC => "SLICE_X25Y27"
    )
    port map (
      ADR0 => AC_reg(0),
      ADR1 => VCC,
      ADR2 => CU_sel_ula(0),
      ADR3 => R_D_M_reg(0),
      O => alu_Mmux_result_51_3734
    );
  alu_Mmux_result_52 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X27Y30"
    )
    port map (
      ADR0 => R_D_M_reg(1),
      ADR1 => AC_reg(2),
      ADR2 => CU_sel_ula(0),
      ADR3 => VCC,
      O => alu_Mmux_result_52_3762
    );
  AC_reg_1 : X_FF
    generic map(
      LOC => "SLICE_X27Y30",
      INIT => '0'
    )
    port map (
      I => AC_reg_1_DYMUX_3766,
      CE => AC_reg_1_CEINV_3753,
      CLK => AC_reg_1_CLKINV_3754,
      SET => GND,
      RST => AC_reg_1_FFY_RSTAND_3772,
      O => AC_reg(1)
    );
  AC_reg_1_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X27Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => AC_reg_1_FFY_RSTAND_3772
    );
  alu_Mmux_result_41 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X27Y30"
    )
    port map (
      ADR0 => AC_reg(0),
      ADR1 => alu_MULTIPLICATION(1),
      ADR2 => CU_sel_ula(0),
      ADR3 => VCC,
      O => alu_Mmux_result_41_3780
    );
  alu_Mmux_result_61 : X_LUT4
    generic map(
      INIT => X"D850",
      LOC => "SLICE_X27Y31"
    )
    port map (
      ADR0 => CU_sel_ula(0),
      ADR1 => R_D_M_reg(1),
      ADR2 => alu_result_addsub0000(1),
      ADR3 => AC_reg(1),
      O => alu_Mmux_result_61_3796
    );
  alu_Mmux_result_53 : X_LUT4
    generic map(
      INIT => X"0FFA",
      LOC => "SLICE_X27Y31"
    )
    port map (
      ADR0 => R_D_M_reg(1),
      ADR1 => VCC,
      ADR2 => CU_sel_ula(0),
      ADR3 => AC_reg(1),
      O => alu_Mmux_result_53_3804
    );
  alu_Mmux_result_42 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X27Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => alu_MULTIPLICATION(2),
      ADR2 => CU_sel_ula(0),
      ADR3 => AC_reg(1),
      O => alu_Mmux_result_42_3850
    );
  alu_Mmux_result_62 : X_LUT4
    generic map(
      INIT => X"88F0",
      LOC => "SLICE_X27Y33"
    )
    port map (
      ADR0 => R_D_M_reg(2),
      ADR1 => AC_reg(2),
      ADR2 => alu_result_addsub0000(2),
      ADR3 => CU_sel_ula(0),
      O => alu_Mmux_result_62_3866
    );
  alu_Mmux_result_55 : X_LUT4
    generic map(
      INIT => X"3F3C",
      LOC => "SLICE_X27Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => AC_reg(2),
      ADR2 => CU_sel_ula(0),
      ADR3 => R_D_M_reg(2),
      O => alu_Mmux_result_55_3874
    );
  alu_Mmux_result_56 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X23Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => AC_reg(4),
      ADR2 => CU_sel_ula(0),
      ADR3 => R_D_M_reg(3),
      O => alu_Mmux_result_56_3902
    );
  AC_reg_3 : X_FF
    generic map(
      LOC => "SLICE_X23Y28",
      INIT => '0'
    )
    port map (
      I => AC_reg_3_DYMUX_3906,
      CE => AC_reg_3_CEINV_3893,
      CLK => AC_reg_3_CLKINV_3894,
      SET => GND,
      RST => AC_reg_3_FFY_RSTAND_3912,
      O => AC_reg(3)
    );
  AC_reg_3_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X23Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => AC_reg_3_FFY_RSTAND_3912
    );
  alu_Mmux_result_63 : X_LUT4
    generic map(
      INIT => X"8F80",
      LOC => "SLICE_X23Y29"
    )
    port map (
      ADR0 => AC_reg(3),
      ADR1 => R_D_M_reg(3),
      ADR2 => CU_sel_ula(0),
      ADR3 => alu_result_addsub0000(3),
      O => alu_Mmux_result_63_3936
    );
  alu_Mmux_result_57 : X_LUT4
    generic map(
      INIT => X"5F5A",
      LOC => "SLICE_X23Y29"
    )
    port map (
      ADR0 => AC_reg(3),
      ADR1 => VCC,
      ADR2 => CU_sel_ula(0),
      ADR3 => R_D_M_reg(3),
      O => alu_Mmux_result_57_3944
    );
  alu_Mmux_result_58 : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X23Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_sel_ula(0),
      ADR2 => R_D_M_reg(4),
      ADR3 => AC_reg(5),
      O => alu_Mmux_result_58_3972
    );
  AC_reg_4 : X_FF
    generic map(
      LOC => "SLICE_X23Y32",
      INIT => '0'
    )
    port map (
      I => AC_reg_4_DYMUX_3976,
      CE => AC_reg_4_CEINV_3963,
      CLK => AC_reg_4_CLKINV_3964,
      SET => GND,
      RST => AC_reg_4_FFY_RSTAND_3982,
      O => AC_reg(4)
    );
  AC_reg_4_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X23Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => AC_reg_4_FFY_RSTAND_3982
    );
  alu_Mmux_result_44 : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X23Y32"
    )
    port map (
      ADR0 => alu_MULTIPLICATION(4),
      ADR1 => CU_sel_ula(0),
      ADR2 => VCC,
      ADR3 => AC_reg(3),
      O => alu_Mmux_result_44_3990
    );
  alu_Mmux_result_510 : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X23Y30"
    )
    port map (
      ADR0 => CU_sel_ula(0),
      ADR1 => VCC,
      ADR2 => AC_reg(6),
      ADR3 => R_D_M_reg(5),
      O => alu_Mmux_result_510_4042
    );
  AC_reg_5 : X_FF
    generic map(
      LOC => "SLICE_X23Y30",
      INIT => '0'
    )
    port map (
      I => AC_reg_5_DYMUX_4046,
      CE => AC_reg_5_CEINV_4033,
      CLK => AC_reg_5_CLKINV_4034,
      SET => GND,
      RST => AC_reg_5_FFY_RSTAND_4052,
      O => AC_reg(5)
    );
  AC_reg_5_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X23Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => AC_reg_5_FFY_RSTAND_4052
    );
  alu_Mmux_result_45 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X23Y30"
    )
    port map (
      ADR0 => CU_sel_ula(0),
      ADR1 => AC_reg(4),
      ADR2 => alu_MULTIPLICATION(5),
      ADR3 => VCC,
      O => alu_Mmux_result_45_4060
    );
  alu_Mmux_result_65 : X_LUT4
    generic map(
      INIT => X"AC0C",
      LOC => "SLICE_X23Y31"
    )
    port map (
      ADR0 => AC_reg(5),
      ADR1 => alu_result_addsub0000(5),
      ADR2 => CU_sel_ula(0),
      ADR3 => R_D_M_reg(5),
      O => alu_Mmux_result_65_4076
    );
  alu_Mmux_result_511 : X_LUT4
    generic map(
      INIT => X"7766",
      LOC => "SLICE_X23Y31"
    )
    port map (
      ADR0 => AC_reg(5),
      ADR1 => CU_sel_ula(0),
      ADR2 => VCC,
      ADR3 => R_D_M_reg(5),
      O => alu_Mmux_result_511_4084
    );
  alu_Mmux_result_46 : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X25Y34"
    )
    port map (
      ADR0 => alu_MULTIPLICATION(6),
      ADR1 => VCC,
      ADR2 => AC_reg(5),
      ADR3 => CU_sel_ula(0),
      O => alu_Mmux_result_46_4130
    );
  alu_Mmux_result_66 : X_LUT4
    generic map(
      INIT => X"8F80",
      LOC => "SLICE_X25Y35"
    )
    port map (
      ADR0 => R_D_M_reg(6),
      ADR1 => AC_reg(6),
      ADR2 => CU_sel_ula(0),
      ADR3 => alu_result_addsub0000(6),
      O => alu_Mmux_result_66_4146
    );
  alu_Mmux_result_513 : X_LUT4
    generic map(
      INIT => X"0FFA",
      LOC => "SLICE_X25Y35"
    )
    port map (
      ADR0 => R_D_M_reg(6),
      ADR1 => VCC,
      ADR2 => CU_sel_ula(0),
      ADR3 => AC_reg(6),
      O => alu_Mmux_result_513_4154
    );
  alu_Mmux_result_514 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X23Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CU_sel_ula(0),
      ADR3 => R_D_M_reg(7),
      O => alu_Mmux_result_514_4182
    );
  alu_Mmux_result_67 : X_LUT4
    generic map(
      INIT => X"D850",
      LOC => "SLICE_X23Y35"
    )
    port map (
      ADR0 => CU_sel_ula(0),
      ADR1 => NZ_data_N_1484,
      ADR2 => alu_result_addsub0000(7),
      ADR3 => R_D_M_reg(7),
      O => alu_Mmux_result_67_4216
    );
  alu_Mmux_result_515 : X_LUT4
    generic map(
      INIT => X"7766",
      LOC => "SLICE_X23Y35"
    )
    port map (
      ADR0 => CU_sel_ula(0),
      ADR1 => NZ_data_N_1484,
      ADR2 => VCC,
      ADR3 => R_D_M_reg(7),
      O => alu_Mmux_result_515_4224
    );
  enable_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 638 ps
    )
    port map (
      I => enable_INBUF,
      O => enable_IBUF_1520
    );
  rst_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_INBUF,
      O => rst_IBUF_1438
    );
  CU_PC_inc_mux00002 : X_LUT4
    generic map(
      INIT => X"FFFA",
      LOC => "SLICE_X24Y12"
    )
    port map (
      ADR0 => CU_current_state(10),
      ADR1 => VCC,
      ADR2 => CU_current_state(2),
      ADR3 => CU_current_state(9),
      O => CU_PC_inc_mux00002_4568
    );
  CU_PC_inc_mux00001 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X24Y12"
    )
    port map (
      ADR0 => CU_N10,
      ADR1 => CU_current_state(10),
      ADR2 => CU_current_state(2),
      ADR3 => CU_current_state(9),
      O => CU_PC_inc_mux00001_4575
    );
  CU_PC_inc : X_FF
    generic map(
      LOC => "SLICE_X24Y12",
      INIT => '0'
    )
    port map (
      I => CU_PC_inc_DXMUX_4579,
      CE => CU_PC_inc_CEINVNOT,
      CLK => CU_PC_inc_CLKINV_4562,
      SET => GND,
      RST => GND,
      O => CU_PC_inc_1525
    );
  CU_loadREM_mux00002 : X_LUT4
    generic map(
      INIT => X"FFEE",
      LOC => "SLICE_X25Y12"
    )
    port map (
      ADR0 => CU_current_state(1),
      ADR1 => CU_current_state(7),
      ADR2 => VCC,
      ADR3 => CU_current_state(6),
      O => CU_loadREM_mux00002_4602
    );
  CU_loadREM_mux00001 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X25Y12"
    )
    port map (
      ADR0 => CU_current_state(1),
      ADR1 => CU_current_state(7),
      ADR2 => CU_loadREM_1685,
      ADR3 => CU_current_state(6),
      O => CU_loadREM_mux00001_4609
    );
  CU_loadREM : X_FF
    generic map(
      LOC => "SLICE_X25Y12",
      INIT => '0'
    )
    port map (
      I => CU_loadREM_DXMUX_4613,
      CE => VCC,
      CLK => CU_loadREM_CLKINV_4595,
      SET => GND,
      RST => CU_loadREM_FFX_RSTAND_4618,
      O => CU_loadREM_1685
    );
  CU_loadREM_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X25Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_loadREM_FFX_RSTAND_4618
    );
  CU_sel_ula_and00001 : X_LUT4
    generic map(
      INIT => X"0C08",
      LOC => "SLICE_X22Y12"
    )
    port map (
      ADR0 => exec_NOT,
      ADR1 => CU_current_state(12),
      ADR2 => rst_IBUF_1438,
      ADR3 => CU_N7,
      O => CU_sel_ula_and0000
    );
  dec_s_exec_NOT1 : X_LUT4
    generic map(
      INIT => X"0200",
      LOC => "SLICE_X22Y10"
    )
    port map (
      ADR0 => RI_reg(6),
      ADR1 => RI_reg(7),
      ADR2 => RI_reg(4),
      ADR3 => RI_reg(5),
      O => exec_NOT_pack_1
    );
  CU_next_state_mux0012_0_8 : X_LUT4
    generic map(
      INIT => X"0200",
      LOC => "SLICE_X22Y10"
    )
    port map (
      ADR0 => CU_current_state(3),
      ADR1 => exec_NOP_0,
      ADR2 => exec_HLT,
      ADR3 => exec_NOT,
      O => CU_next_state_mux0012_0_8_4690
    );
  dec_s_exec_STA1 : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X20Y13"
    )
    port map (
      ADR0 => RI_reg(5),
      ADR1 => RI_reg(7),
      ADR2 => RI_reg(4),
      ADR3 => RI_reg(6),
      O => exec_STA_pack_1
    );
  CU_next_state_mux0012_4_11 : X_LUT4
    generic map(
      INIT => X"0202",
      LOC => "SLICE_X20Y13"
    )
    port map (
      ADR0 => CU_current_state(7),
      ADR1 => CU_N7,
      ADR2 => exec_STA,
      ADR3 => VCC,
      O => CU_N9
    );
  dec_s_exec_JN_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0020",
      LOC => "SLICE_X22Y18"
    )
    port map (
      ADR0 => RI_reg(7),
      ADR1 => RI_reg(5),
      ADR2 => RI_reg(4),
      ADR3 => RI_reg(6),
      O => exec_JN_pack_1
    );
  CU_next_state_mux0012_4_111 : X_LUT4
    generic map(
      INIT => X"4F44",
      LOC => "SLICE_X22Y18"
    )
    port map (
      ADR0 => NZ_data_Z_1506,
      ADR1 => exec_JZ,
      ADR2 => NZ_data_N_1484,
      ADR3 => exec_JN,
      O => CU_next_state_mux0012_4_11_4738
    );
  alu_Z_cmp_eq000028 : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X22Y30"
    )
    port map (
      ADR0 => ULA_output(6),
      ADR1 => ULA_N,
      ADR2 => alu_Z_cmp_eq00007_0,
      ADR3 => alu_Z_cmp_eq000028_SW0_O,
      O => ULA_Z
    );
  NZ_data_Z : X_FF
    generic map(
      LOC => "SLICE_X22Y30",
      INIT => '0'
    )
    port map (
      I => NZ_data_Z_DXMUX_4771,
      CE => NZ_data_Z_CEINV_4754,
      CLK => NZ_data_Z_CLKINV_4755,
      SET => GND,
      RST => NZ_data_Z_FFX_RSTAND_4777,
      O => NZ_data_Z_1506
    );
  NZ_data_Z_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X22Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => NZ_data_Z_FFX_RSTAND_4777
    );
  CU_next_state_mux0012_11_1 : X_LUT4
    generic map(
      INIT => X"EEAA",
      LOC => "SLICE_X18Y9"
    )
    port map (
      ADR0 => CU_current_state(1),
      ADR1 => CU_next_state(2),
      ADR2 => VCC,
      ADR3 => CU_N9_0,
      O => CU_next_state_mux0012(11)
    );
  CU_next_state_or000123 : X_LUT4
    generic map(
      INIT => X"0050",
      LOC => "SLICE_X23Y12"
    )
    port map (
      ADR0 => N30_0,
      ADR1 => VCC,
      ADR2 => RI_reg(7),
      ADR3 => RI_reg(6),
      O => CU_next_state_or0001_pack_1
    );
  CU_next_state_mux0012_5_SW0 : X_LUT4
    generic map(
      INIT => X"153F",
      LOC => "SLICE_X23Y12"
    )
    port map (
      ADR0 => CU_next_state(8),
      ADR1 => CU_current_state(10),
      ADR2 => CU_next_state_or0001,
      ADR3 => CU_current_state(7),
      O => N14
    );
  CU_next_state_mux0012_12_22 : X_LUT4
    generic map(
      INIT => X"3000",
      LOC => "SLICE_X20Y11"
    )
    port map (
      ADR0 => VCC,
      ADR1 => exec_HLT,
      ADR2 => exec_NOP_0,
      ADR3 => CU_current_state(3),
      O => CU_next_state_mux0012_12_22_O_pack_2
    );
  CU_next_state_mux0012_12_37 : X_LUT4
    generic map(
      INIT => X"FEFC",
      LOC => "SLICE_X20Y11"
    )
    port map (
      ADR0 => CU_next_state(1),
      ADR1 => CU_next_state_mux0012_12_13_0,
      ADR2 => CU_next_state_mux0012_12_22_O,
      ADR3 => CU_N9_0,
      O => CU_next_state_mux0012(12)
    );
  CU_next_state_1 : X_FF
    generic map(
      LOC => "SLICE_X20Y11",
      INIT => '0'
    )
    port map (
      I => CU_next_state_1_DXMUX_4831,
      CE => VCC,
      CLK => CU_next_state_1_CLKINV_4814,
      SET => GND,
      RST => CU_next_state_1_FFX_RSTAND_4836,
      O => CU_next_state(1)
    );
  CU_next_state_1_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X20Y11",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_next_state_1_FFX_RSTAND_4836
    );
  dec_s_exec_JZ_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"1000",
      LOC => "SLICE_X23Y19"
    )
    port map (
      ADR0 => RI_reg(6),
      ADR1 => RI_reg(4),
      ADR2 => RI_reg(7),
      ADR3 => RI_reg(5),
      O => exec_JZ_pack_1
    );
  CU_next_state_mux0012_7_11 : X_LUT4
    generic map(
      INIT => X"C4F5",
      LOC => "SLICE_X23Y19"
    )
    port map (
      ADR0 => exec_JN,
      ADR1 => NZ_data_Z_1506,
      ADR2 => NZ_data_N_1484,
      ADR3 => exec_JZ,
      O => CU_next_state_mux0012_7_11_4859
    );
  CU_next_state_mux0012_13_21 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X25Y10"
    )
    port map (
      ADR0 => CU_current_state(1),
      ADR1 => CU_current_state(8),
      ADR2 => CU_current_state(3),
      ADR3 => CU_current_state(7),
      O => CU_N10_pack_1
    );
  CU_loadRDM_mux000015 : X_LUT4
    generic map(
      INIT => X"0400",
      LOC => "SLICE_X25Y10"
    )
    port map (
      ADR0 => CU_current_state(13),
      ADR1 => CU_N10,
      ADR2 => CU_current_state(4),
      ADR3 => CU_loadRDM_1452,
      O => CU_loadRDM_mux000015_4883
    );
  dec_s_exec_HLT_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X22Y11"
    )
    port map (
      ADR0 => RI_reg(6),
      ADR1 => RI_reg(7),
      ADR2 => RI_reg(4),
      ADR3 => RI_reg(5),
      O => exec_HLT_pack_1
    );
  CU_next_state_mux0012_7_23 : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X22Y11"
    )
    port map (
      ADR0 => CU_current_state(3),
      ADR1 => exec_NOP_0,
      ADR2 => exec_HLT,
      ADR3 => exec_NOT,
      O => CU_next_state_mux0012_4_23
    );
  CU_next_state_mux0012_13_56 : X_LUT4
    generic map(
      INIT => X"BA30",
      LOC => "SLICE_X22Y13"
    )
    port map (
      ADR0 => CU_current_state(7),
      ADR1 => CU_next_state_or0001,
      ADR2 => CU_current_state(10),
      ADR3 => CU_next_state(0),
      O => CU_next_state_mux0012_13_56_O_pack_2
    );
  CU_next_state_mux0012_13_69 : X_LUT4
    generic map(
      INIT => X"FF10",
      LOC => "SLICE_X22Y13"
    )
    port map (
      ADR0 => CU_N7,
      ADR1 => exec_STA,
      ADR2 => CU_next_state_mux0012_13_56_O,
      ADR3 => CU_next_state_mux0012_13_38,
      O => CU_next_state_mux0012(13)
    );
  CU_next_state_0 : X_FF
    generic map(
      LOC => "SLICE_X22Y13",
      INIT => '1'
    )
    port map (
      I => CU_next_state_0_DXMUX_4938,
      CE => VCC,
      CLK => CU_next_state_0_CLKINV_4922,
      SET => CU_next_state_0_FFX_SET,
      RST => GND,
      O => CU_next_state(0)
    );
  CU_next_state_0_FFX_SETOR : X_BUF
    generic map(
      LOC => "SLICE_X22Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_next_state_0_FFX_SET
    );
  CU_sel : X_FF
    generic map(
      LOC => "SLICE_X25Y13",
      INIT => '0'
    )
    port map (
      I => CU_sel_mux_RDM_DYMUX_4965,
      CE => CU_sel_mux_RDM_CEINVNOT,
      CLK => CU_sel_mux_RDM_CLKINV_4957,
      SET => GND,
      RST => GND,
      O => CU_sel_1698
    );
  CU_sel_mux00001 : X_LUT4
    generic map(
      INIT => X"CCDC",
      LOC => "SLICE_X25Y13"
    )
    port map (
      ADR0 => CU_current_state(1),
      ADR1 => CU_current_state(7),
      ADR2 => CU_sel_1698,
      ADR3 => CU_current_state(6),
      O => CU_sel_mux0000
    );
  CU_sel_mux_RDM_mux00001 : X_LUT4
    generic map(
      INIT => X"FF04",
      LOC => "SLICE_X25Y13"
    )
    port map (
      ADR0 => CU_current_state(1),
      ADR1 => CU_sel_mux_RDM_1453,
      ADR2 => CU_current_state(4),
      ADR3 => CU_current_state(5),
      O => CU_sel_mux_RDM_mux0000
    );
  CU_sel_mux_RDM : X_FF
    generic map(
      LOC => "SLICE_X25Y13",
      INIT => '0'
    )
    port map (
      I => CU_sel_mux_RDM_DXMUX_4977,
      CE => CU_sel_mux_RDM_CEINVNOT,
      CLK => CU_sel_mux_RDM_CLKINV_4957,
      SET => GND,
      RST => GND,
      O => CU_sel_mux_RDM_1453
    );
  mpx_S_0_1 : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X25Y21"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_sel_1698,
      ADR2 => PC_data(0),
      ADR3 => R_D_M_reg(0),
      O => MPX_output(0)
    );
  R_E_M_reg_0 : X_FF
    generic map(
      LOC => "SLICE_X25Y21",
      INIT => '0'
    )
    port map (
      I => R_E_M_reg_1_DYMUX_5004,
      CE => R_E_M_reg_1_CEINV_4993,
      CLK => R_E_M_reg_1_CLKINV_4994,
      SET => GND,
      RST => R_E_M_reg_1_SRINV_4995,
      O => R_E_M_reg(0)
    );
  mpx_S_1_1 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X25Y21"
    )
    port map (
      ADR0 => PC_data(1),
      ADR1 => CU_sel_1698,
      ADR2 => VCC,
      ADR3 => R_D_M_reg(1),
      O => MPX_output(1)
    );
  R_E_M_reg_1 : X_FF
    generic map(
      LOC => "SLICE_X25Y21",
      INIT => '0'
    )
    port map (
      I => R_E_M_reg_1_DXMUX_5020,
      CE => R_E_M_reg_1_CEINV_4993,
      CLK => R_E_M_reg_1_CLKINV_4994,
      SET => GND,
      RST => R_E_M_reg_1_SRINV_4995,
      O => R_E_M_reg(1)
    );
  mpx_S_2_1 : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X25Y20"
    )
    port map (
      ADR0 => R_D_M_reg(2),
      ADR1 => CU_sel_1698,
      ADR2 => VCC,
      ADR3 => PC_data(2),
      O => MPX_output(2)
    );
  R_E_M_reg_2 : X_FF
    generic map(
      LOC => "SLICE_X25Y20",
      INIT => '0'
    )
    port map (
      I => R_E_M_reg_3_DYMUX_5050,
      CE => R_E_M_reg_3_CEINV_5039,
      CLK => R_E_M_reg_3_CLKINV_5040,
      SET => GND,
      RST => R_E_M_reg_3_SRINV_5041,
      O => R_E_M_reg(2)
    );
  mpx_S_3_1 : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X25Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_sel_1698,
      ADR2 => PC_data(3),
      ADR3 => R_D_M_reg(3),
      O => MPX_output(3)
    );
  R_E_M_reg_3 : X_FF
    generic map(
      LOC => "SLICE_X25Y20",
      INIT => '0'
    )
    port map (
      I => R_E_M_reg_3_DXMUX_5066,
      CE => R_E_M_reg_3_CEINV_5039,
      CLK => R_E_M_reg_3_CLKINV_5040,
      SET => GND,
      RST => R_E_M_reg_3_SRINV_5041,
      O => R_E_M_reg(3)
    );
  mpx_S_4_1 : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X24Y21"
    )
    port map (
      ADR0 => CU_sel_1698,
      ADR1 => VCC,
      ADR2 => R_D_M_reg(4),
      ADR3 => PC_data(4),
      O => MPX_output(4)
    );
  R_E_M_reg_4 : X_FF
    generic map(
      LOC => "SLICE_X24Y21",
      INIT => '0'
    )
    port map (
      I => R_E_M_reg_5_DYMUX_5096,
      CE => R_E_M_reg_5_CEINV_5085,
      CLK => R_E_M_reg_5_CLKINV_5086,
      SET => GND,
      RST => R_E_M_reg_5_SRINV_5087,
      O => R_E_M_reg(4)
    );
  mpx_S_5_1 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X24Y21"
    )
    port map (
      ADR0 => R_D_M_reg(5),
      ADR1 => VCC,
      ADR2 => CU_sel_1698,
      ADR3 => PC_data(5),
      O => MPX_output(5)
    );
  R_E_M_reg_5 : X_FF
    generic map(
      LOC => "SLICE_X24Y21",
      INIT => '0'
    )
    port map (
      I => R_E_M_reg_5_DXMUX_5112,
      CE => R_E_M_reg_5_CEINV_5085,
      CLK => R_E_M_reg_5_CLKINV_5086,
      SET => GND,
      RST => R_E_M_reg_5_SRINV_5087,
      O => R_E_M_reg(5)
    );
  mpx_S_6_1 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X24Y22"
    )
    port map (
      ADR0 => R_D_M_reg(6),
      ADR1 => PC_data(6),
      ADR2 => CU_sel_1698,
      ADR3 => VCC,
      O => MPX_output(6)
    );
  R_E_M_reg_6 : X_FF
    generic map(
      LOC => "SLICE_X24Y22",
      INIT => '0'
    )
    port map (
      I => R_E_M_reg_7_DYMUX_5142,
      CE => R_E_M_reg_7_CEINV_5131,
      CLK => R_E_M_reg_7_CLKINV_5132,
      SET => GND,
      RST => R_E_M_reg_7_SRINV_5133,
      O => R_E_M_reg(6)
    );
  mpx_S_7_1 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X24Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => R_D_M_reg(7),
      ADR2 => CU_sel_1698,
      ADR3 => PC_data(7),
      O => MPX_output(7)
    );
  R_E_M_reg_7 : X_FF
    generic map(
      LOC => "SLICE_X24Y22",
      INIT => '0'
    )
    port map (
      I => R_E_M_reg_7_DXMUX_5158,
      CE => R_E_M_reg_7_CEINV_5131,
      CLK => R_E_M_reg_7_CLKINV_5132,
      SET => GND,
      RST => R_E_M_reg_7_SRINV_5133,
      O => R_E_M_reg(7)
    );
  CU_Mcount_state_timer_eqn_01 : X_LUT4
    generic map(
      INIT => X"FAFA",
      LOC => "SLICE_X0Y18"
    )
    port map (
      ADR0 => CU_state_timer_not0001_inv,
      ADR1 => VCC,
      ADR2 => CU_Result(0),
      ADR3 => VCC,
      O => CU_Mcount_state_timer_eqn_0
    );
  CU_state_timer_0 : X_FF
    generic map(
      LOC => "SLICE_X0Y18",
      INIT => '1'
    )
    port map (
      I => CU_state_timer_1_DYMUX_5185,
      CE => VCC,
      CLK => CU_state_timer_1_CLKINV_5174,
      SET => CU_state_timer_1_SRINV_5175,
      RST => GND,
      O => CU_state_timer(0)
    );
  CU_Mcount_state_timer_eqn_110 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X0Y18"
    )
    port map (
      ADR0 => CU_state_timer_not0001_inv,
      ADR1 => CU_Result(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CU_Mcount_state_timer_eqn_1
    );
  CU_state_timer_1 : X_FF
    generic map(
      LOC => "SLICE_X0Y18",
      INIT => '0'
    )
    port map (
      I => CU_state_timer_1_DXMUX_5200,
      CE => VCC,
      CLK => CU_state_timer_1_CLKINV_5174,
      SET => GND,
      RST => CU_state_timer_1_SRINV_5175,
      O => CU_state_timer(1)
    );
  CU_Mcount_state_timer_eqn_210 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X2Y19"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_Result(2),
      ADR2 => VCC,
      ADR3 => CU_state_timer_not0001_inv,
      O => CU_Mcount_state_timer_eqn_2
    );
  CU_state_timer_2 : X_FF
    generic map(
      LOC => "SLICE_X2Y19",
      INIT => '0'
    )
    port map (
      I => CU_state_timer_3_DYMUX_5226,
      CE => VCC,
      CLK => CU_state_timer_3_CLKINV_5215,
      SET => GND,
      RST => CU_state_timer_3_SRINV_5216,
      O => CU_state_timer(2)
    );
  CU_Mcount_state_timer_eqn_32 : X_LUT4
    generic map(
      INIT => X"00AA",
      LOC => "SLICE_X2Y19"
    )
    port map (
      ADR0 => CU_Result(3),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => CU_state_timer_not0001_inv,
      O => CU_Mcount_state_timer_eqn_3
    );
  CU_state_timer_3 : X_FF
    generic map(
      LOC => "SLICE_X2Y19",
      INIT => '0'
    )
    port map (
      I => CU_state_timer_3_DXMUX_5242,
      CE => VCC,
      CLK => CU_state_timer_3_CLKINV_5215,
      SET => GND,
      RST => CU_state_timer_3_SRINV_5216,
      O => CU_state_timer(3)
    );
  CU_Mcount_state_timer_eqn_101 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X3Y18"
    )
    port map (
      ADR0 => CU_Result(10),
      ADR1 => CU_state_timer_not0001_inv,
      ADR2 => VCC,
      ADR3 => VCC,
      O => CU_Mcount_state_timer_eqn_10
    );
  CU_state_timer_10 : X_FF
    generic map(
      LOC => "SLICE_X3Y18",
      INIT => '0'
    )
    port map (
      I => CU_state_timer_11_DYMUX_5268,
      CE => VCC,
      CLK => CU_state_timer_11_CLKINV_5257,
      SET => GND,
      RST => CU_state_timer_11_SRINV_5258,
      O => CU_state_timer(10)
    );
  CU_Mcount_state_timer_eqn_111 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X3Y18"
    )
    port map (
      ADR0 => CU_state_timer_not0001_inv,
      ADR1 => CU_Result(11),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CU_Mcount_state_timer_eqn_11
    );
  CU_state_timer_11 : X_FF
    generic map(
      LOC => "SLICE_X3Y18",
      INIT => '0'
    )
    port map (
      I => CU_state_timer_11_DXMUX_5284,
      CE => VCC,
      CLK => CU_state_timer_11_CLKINV_5257,
      SET => GND,
      RST => CU_state_timer_11_SRINV_5258,
      O => CU_state_timer(11)
    );
  CU_Mcount_state_timer_eqn_41 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X2Y21"
    )
    port map (
      ADR0 => CU_state_timer_not0001_inv,
      ADR1 => VCC,
      ADR2 => CU_Result(4),
      ADR3 => VCC,
      O => CU_Mcount_state_timer_eqn_4
    );
  CU_state_timer_4 : X_FF
    generic map(
      LOC => "SLICE_X2Y21",
      INIT => '0'
    )
    port map (
      I => CU_state_timer_5_DYMUX_5310,
      CE => VCC,
      CLK => CU_state_timer_5_CLKINV_5299,
      SET => GND,
      RST => CU_state_timer_5_SRINV_5300,
      O => CU_state_timer(4)
    );
  CU_Mcount_state_timer_eqn_51 : X_LUT4
    generic map(
      INIT => X"5500",
      LOC => "SLICE_X2Y21"
    )
    port map (
      ADR0 => CU_state_timer_not0001_inv,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => CU_Result(5),
      O => CU_Mcount_state_timer_eqn_5
    );
  CU_state_timer_5 : X_FF
    generic map(
      LOC => "SLICE_X2Y21",
      INIT => '0'
    )
    port map (
      I => CU_state_timer_5_DXMUX_5326,
      CE => VCC,
      CLK => CU_state_timer_5_CLKINV_5299,
      SET => GND,
      RST => CU_state_timer_5_SRINV_5300,
      O => CU_state_timer(5)
    );
  CU_Mcount_state_timer_eqn_121 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X0Y22"
    )
    port map (
      ADR0 => CU_state_timer_not0001_inv,
      ADR1 => CU_Result(12),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CU_Mcount_state_timer_eqn_12
    );
  CU_state_timer_12 : X_FF
    generic map(
      LOC => "SLICE_X0Y22",
      INIT => '0'
    )
    port map (
      I => CU_state_timer_13_DYMUX_5352,
      CE => VCC,
      CLK => CU_state_timer_13_CLKINV_5341,
      SET => GND,
      RST => CU_state_timer_13_SRINV_5342,
      O => CU_state_timer(12)
    );
  CU_Mcount_state_timer_eqn_131 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X0Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_state_timer_not0001_inv,
      ADR2 => VCC,
      ADR3 => CU_Result(13),
      O => CU_Mcount_state_timer_eqn_13
    );
  CU_state_timer_13 : X_FF
    generic map(
      LOC => "SLICE_X0Y22",
      INIT => '0'
    )
    port map (
      I => CU_state_timer_13_DXMUX_5368,
      CE => VCC,
      CLK => CU_state_timer_13_CLKINV_5341,
      SET => GND,
      RST => CU_state_timer_13_SRINV_5342,
      O => CU_state_timer(13)
    );
  CU_Mcount_state_timer_eqn_201 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X0Y23"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_state_timer_not0001_inv,
      ADR2 => VCC,
      ADR3 => CU_Result(20),
      O => CU_Mcount_state_timer_eqn_20
    );
  CU_state_timer_20 : X_FF
    generic map(
      LOC => "SLICE_X0Y23",
      INIT => '0'
    )
    port map (
      I => CU_state_timer_21_DYMUX_5394,
      CE => VCC,
      CLK => CU_state_timer_21_CLKINV_5383,
      SET => GND,
      RST => CU_state_timer_21_SRINV_5384,
      O => CU_state_timer(20)
    );
  CU_Mcount_state_timer_eqn_211 : X_LUT4
    generic map(
      INIT => X"3030",
      LOC => "SLICE_X0Y23"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_state_timer_not0001_inv,
      ADR2 => CU_Result(21),
      ADR3 => VCC,
      O => CU_Mcount_state_timer_eqn_21
    );
  CU_state_timer_21 : X_FF
    generic map(
      LOC => "SLICE_X0Y23",
      INIT => '0'
    )
    port map (
      I => CU_state_timer_21_DXMUX_5410,
      CE => VCC,
      CLK => CU_state_timer_21_CLKINV_5383,
      SET => GND,
      RST => CU_state_timer_21_SRINV_5384,
      O => CU_state_timer(21)
    );
  CU_Mcount_state_timer_eqn_61 : X_LUT4
    generic map(
      INIT => X"5500",
      LOC => "SLICE_X0Y21"
    )
    port map (
      ADR0 => CU_state_timer_not0001_inv,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => CU_Result(6),
      O => CU_Mcount_state_timer_eqn_6
    );
  CU_state_timer_6 : X_FF
    generic map(
      LOC => "SLICE_X0Y21",
      INIT => '0'
    )
    port map (
      I => CU_state_timer_7_DYMUX_5436,
      CE => VCC,
      CLK => CU_state_timer_7_CLKINV_5425,
      SET => GND,
      RST => CU_state_timer_7_SRINV_5426,
      O => CU_state_timer(6)
    );
  CU_Mcount_state_timer_eqn_71 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X0Y21"
    )
    port map (
      ADR0 => CU_Result(7),
      ADR1 => CU_state_timer_not0001_inv,
      ADR2 => VCC,
      ADR3 => VCC,
      O => CU_Mcount_state_timer_eqn_7
    );
  CU_state_timer_7 : X_FF
    generic map(
      LOC => "SLICE_X0Y21",
      INIT => '0'
    )
    port map (
      I => CU_state_timer_7_DXMUX_5452,
      CE => VCC,
      CLK => CU_state_timer_7_CLKINV_5425,
      SET => GND,
      RST => CU_state_timer_7_SRINV_5426,
      O => CU_state_timer(7)
    );
  CU_Mcount_state_timer_eqn_141 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X2Y20"
    )
    port map (
      ADR0 => CU_state_timer_not0001_inv,
      ADR1 => CU_Result(14),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CU_Mcount_state_timer_eqn_14
    );
  CU_state_timer_14 : X_FF
    generic map(
      LOC => "SLICE_X2Y20",
      INIT => '0'
    )
    port map (
      I => CU_state_timer_15_DYMUX_5478,
      CE => VCC,
      CLK => CU_state_timer_15_CLKINV_5467,
      SET => GND,
      RST => CU_state_timer_15_SRINV_5468,
      O => CU_state_timer(14)
    );
  CU_Mcount_state_timer_eqn_151 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X2Y20"
    )
    port map (
      ADR0 => CU_state_timer_not0001_inv,
      ADR1 => VCC,
      ADR2 => CU_Result(15),
      ADR3 => VCC,
      O => CU_Mcount_state_timer_eqn_15
    );
  CU_state_timer_15 : X_FF
    generic map(
      LOC => "SLICE_X2Y20",
      INIT => '0'
    )
    port map (
      I => CU_state_timer_15_DXMUX_5494,
      CE => VCC,
      CLK => CU_state_timer_15_CLKINV_5467,
      SET => GND,
      RST => CU_state_timer_15_SRINV_5468,
      O => CU_state_timer(15)
    );
  CU_Mcount_state_timer_eqn_221 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X0Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_state_timer_not0001_inv,
      ADR2 => VCC,
      ADR3 => CU_Result(22),
      O => CU_Mcount_state_timer_eqn_22
    );
  CU_state_timer_22 : X_FF
    generic map(
      LOC => "SLICE_X0Y24",
      INIT => '0'
    )
    port map (
      I => CU_state_timer_23_DYMUX_5520,
      CE => VCC,
      CLK => CU_state_timer_23_CLKINV_5509,
      SET => GND,
      RST => CU_state_timer_23_SRINV_5510,
      O => CU_state_timer(22)
    );
  CU_Mcount_state_timer_eqn_231 : X_LUT4
    generic map(
      INIT => X"00AA",
      LOC => "SLICE_X0Y24"
    )
    port map (
      ADR0 => CU_Result(23),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => CU_state_timer_not0001_inv,
      O => CU_Mcount_state_timer_eqn_23
    );
  CU_state_timer_23 : X_FF
    generic map(
      LOC => "SLICE_X0Y24",
      INIT => '0'
    )
    port map (
      I => CU_state_timer_23_DXMUX_5536,
      CE => VCC,
      CLK => CU_state_timer_23_CLKINV_5509,
      SET => GND,
      RST => CU_state_timer_23_SRINV_5510,
      O => CU_state_timer(23)
    );
  CU_Mcount_state_timer_eqn_301 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X0Y26"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_state_timer_not0001_inv,
      ADR2 => VCC,
      ADR3 => CU_Result(30),
      O => CU_Mcount_state_timer_eqn_30
    );
  CU_state_timer_30 : X_FF
    generic map(
      LOC => "SLICE_X0Y26",
      INIT => '0'
    )
    port map (
      I => CU_state_timer_31_DYMUX_5562,
      CE => VCC,
      CLK => CU_state_timer_31_CLKINV_5551,
      SET => GND,
      RST => CU_state_timer_31_SRINV_5552,
      O => CU_state_timer(30)
    );
  CU_Mcount_state_timer_eqn_311 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X0Y26"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_Result(31),
      ADR2 => VCC,
      ADR3 => CU_state_timer_not0001_inv,
      O => CU_Mcount_state_timer_eqn_31
    );
  CU_state_timer_31 : X_FF
    generic map(
      LOC => "SLICE_X0Y26",
      INIT => '0'
    )
    port map (
      I => CU_state_timer_31_DXMUX_5578,
      CE => VCC,
      CLK => CU_state_timer_31_CLKINV_5551,
      SET => GND,
      RST => CU_state_timer_31_SRINV_5552,
      O => CU_state_timer(31)
    );
  CU_Mcount_state_timer_eqn_81 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X2Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_Result(8),
      ADR2 => VCC,
      ADR3 => CU_state_timer_not0001_inv,
      O => CU_Mcount_state_timer_eqn_8
    );
  CU_state_timer_8 : X_FF
    generic map(
      LOC => "SLICE_X2Y18",
      INIT => '0'
    )
    port map (
      I => CU_state_timer_9_DYMUX_5604,
      CE => VCC,
      CLK => CU_state_timer_9_CLKINV_5593,
      SET => GND,
      RST => CU_state_timer_9_SRINV_5594,
      O => CU_state_timer(8)
    );
  CU_Mcount_state_timer_eqn_91 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X2Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_state_timer_not0001_inv,
      ADR2 => VCC,
      ADR3 => CU_Result(9),
      O => CU_Mcount_state_timer_eqn_9
    );
  CU_state_timer_9 : X_FF
    generic map(
      LOC => "SLICE_X2Y18",
      INIT => '0'
    )
    port map (
      I => CU_state_timer_9_DXMUX_5620,
      CE => VCC,
      CLK => CU_state_timer_9_CLKINV_5593,
      SET => GND,
      RST => CU_state_timer_9_SRINV_5594,
      O => CU_state_timer(9)
    );
  CU_Mcount_state_timer_eqn_161 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X0Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_state_timer_not0001_inv,
      ADR2 => VCC,
      ADR3 => CU_Result(16),
      O => CU_Mcount_state_timer_eqn_16
    );
  CU_state_timer_16 : X_FF
    generic map(
      LOC => "SLICE_X0Y20",
      INIT => '0'
    )
    port map (
      I => CU_state_timer_17_DYMUX_5646,
      CE => VCC,
      CLK => CU_state_timer_17_CLKINV_5635,
      SET => GND,
      RST => CU_state_timer_17_SRINV_5636,
      O => CU_state_timer(16)
    );
  CU_Mcount_state_timer_eqn_171 : X_LUT4
    generic map(
      INIT => X"3030",
      LOC => "SLICE_X0Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_state_timer_not0001_inv,
      ADR2 => CU_Result(17),
      ADR3 => VCC,
      O => CU_Mcount_state_timer_eqn_17
    );
  CU_state_timer_17 : X_FF
    generic map(
      LOC => "SLICE_X0Y20",
      INIT => '0'
    )
    port map (
      I => CU_state_timer_17_DXMUX_5662,
      CE => VCC,
      CLK => CU_state_timer_17_CLKINV_5635,
      SET => GND,
      RST => CU_state_timer_17_SRINV_5636,
      O => CU_state_timer(17)
    );
  CU_next_state_3 : X_FF
    generic map(
      LOC => "SLICE_X18Y9",
      INIT => '0'
    )
    port map (
      I => CU_next_state_3_DXMUX_5872,
      CE => VCC,
      CLK => CU_next_state_3_CLKINV_5847,
      SET => GND,
      RST => CU_next_state_3_SRINV_5848,
      O => CU_next_state(3)
    );
  CU_next_state_mux0012_9_1 : X_LUT4
    generic map(
      INIT => X"EECC",
      LOC => "SLICE_X19Y10"
    )
    port map (
      ADR0 => CU_N9_0,
      ADR1 => CU_current_state(5),
      ADR2 => VCC,
      ADR3 => CU_next_state(4),
      O => CU_next_state_mux0012(9)
    );
  CU_next_state_4 : X_FF
    generic map(
      LOC => "SLICE_X19Y10",
      INIT => '0'
    )
    port map (
      I => CU_next_state_5_DYMUX_5900,
      CE => VCC,
      CLK => CU_next_state_5_CLKINV_5890,
      SET => GND,
      RST => CU_next_state_5_SRINV_5891,
      O => CU_next_state(4)
    );
  CU_next_state_mux0012_8_1 : X_LUT4
    generic map(
      INIT => X"5400",
      LOC => "SLICE_X19Y10"
    )
    port map (
      ADR0 => CU_N7,
      ADR1 => exec_STA,
      ADR2 => CU_next_state(5),
      ADR3 => CU_current_state(7),
      O => CU_next_state_mux0012(8)
    );
  CU_next_state_5 : X_FF
    generic map(
      LOC => "SLICE_X19Y10",
      INIT => '0'
    )
    port map (
      I => CU_next_state_5_DXMUX_5914,
      CE => VCC,
      CLK => CU_next_state_5_CLKINV_5890,
      SET => GND,
      RST => CU_next_state_5_SRINV_5891,
      O => CU_next_state(5)
    );
  CU_loadAC_mux00001 : X_LUT4
    generic map(
      INIT => X"BBAA",
      LOC => "SLICE_X24Y17"
    )
    port map (
      ADR0 => CU_current_state(13),
      ADR1 => CU_current_state(1),
      ADR2 => VCC,
      ADR3 => CU_loadAC_1652,
      O => CU_loadAC_mux0000
    );
  CU_loadAC : X_FF
    generic map(
      LOC => "SLICE_X24Y17",
      INIT => '0'
    )
    port map (
      I => CU_loadAC_DYMUX_5937,
      CE => VCC,
      CLK => CU_loadAC_CLKINV_5927,
      SET => GND,
      RST => CU_loadAC_FFY_RSTAND_5942,
      O => CU_loadAC_1652
    );
  CU_loadAC_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X24Y17",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_loadAC_FFY_RSTAND_5942
    );
  CU_next_state_mux0012_7_37 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X18Y13"
    )
    port map (
      ADR0 => CU_next_state_mux0012_7_11_0,
      ADR1 => CU_next_state_mux0012_4_23_0,
      ADR2 => CU_N9_0,
      ADR3 => CU_next_state(6),
      O => CU_next_state_mux0012(7)
    );
  CU_next_state_6 : X_FF
    generic map(
      LOC => "SLICE_X18Y13",
      INIT => '0'
    )
    port map (
      I => CU_next_state_6_DYMUX_5960,
      CE => VCC,
      CLK => CU_next_state_6_CLKINV_5951,
      SET => GND,
      RST => CU_next_state_6_FFY_RSTAND_5965,
      O => CU_next_state(6)
    );
  CU_next_state_6_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X18Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_1438,
      O => CU_next_state_6_FFY_RSTAND_5965
    );
  CU_next_state_mux0012_5_Q : X_LUT4
    generic map(
      INIT => X"0005",
      LOC => "SLICE_X23Y14"
    )
    port map (
      ADR0 => CU_N7,
      ADR1 => VCC,
      ADR2 => exec_STA,
      ADR3 => N14_0,
      O => CU_next_state_mux0012(5)
    );
  CU_next_state_8 : X_FF
    generic map(
      LOC => "SLICE_X23Y14",
      INIT => '0'
    )
    port map (
      I => CU_next_state_9_DYMUX_5988,
      CE => VCC,
      CLK => CU_next_state_9_CLKINV_5978,
      SET => GND,
      RST => CU_next_state_9_SRINV_5979,
      O => CU_next_state(8)
    );
  CU_next_state_mux0012_4_37 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X23Y14"
    )
    port map (
      ADR0 => CU_N9_0,
      ADR1 => CU_next_state_mux0012_4_23_0,
      ADR2 => CU_next_state(9),
      ADR3 => CU_next_state_mux0012_4_11_0,
      O => CU_next_state_mux0012(4)
    );
  CU_next_state_9 : X_FF
    generic map(
      LOC => "SLICE_X23Y14",
      INIT => '0'
    )
    port map (
      I => CU_next_state_9_DXMUX_6002,
      CE => VCC,
      CLK => CU_next_state_9_CLKINV_5978,
      SET => GND,
      RST => CU_next_state_9_SRINV_5979,
      O => CU_next_state(9)
    );
  CU_Result_0_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X1Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CU_state_timer(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CU_Result_0_F
    );
  debug_out_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 638 ps
    )
    port map (
      I => CU_stop_s_1511,
      O => debug_out_O
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_A_17_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => NZ_data_N_1484,
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(17)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_A_16_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => NZ_data_N_1484,
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(16)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_A_15_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => NZ_data_N_1484,
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(15)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_A_14_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => NZ_data_N_1484,
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(14)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_A_13_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => NZ_data_N_1484,
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(13)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_A_12_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => NZ_data_N_1484,
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(12)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_A_11_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => NZ_data_N_1484,
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(11)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_A_10_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => NZ_data_N_1484,
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(10)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_A_9_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => NZ_data_N_1484,
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(9)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_A_8_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => NZ_data_N_1484,
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(8)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_A_7_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => NZ_data_N_1484,
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(7)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_A_6_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg(6),
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(6)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_A_5_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg(5),
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(5)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_A_4_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg(4),
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(4)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_A_3_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg(3),
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(3)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_A_2_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg(2),
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(2)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_A_1_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg(1),
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(1)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_A_0_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => AC_reg(0),
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_A(0)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_B_17_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_D_M_reg(7),
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(17)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_B_16_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_D_M_reg(7),
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(16)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_B_15_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_D_M_reg(7),
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(15)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_B_14_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_D_M_reg(7),
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(14)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_B_13_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_D_M_reg(7),
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(13)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_B_12_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_D_M_reg(7),
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(12)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_B_11_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_D_M_reg(7),
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(11)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_B_10_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_D_M_reg(7),
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(10)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_B_9_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_D_M_reg(7),
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(9)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_B_8_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_D_M_reg(7),
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(8)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_B_7_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_D_M_reg(7),
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(7)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_B_6_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_D_M_reg(6),
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(6)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_B_5_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_D_M_reg(5),
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(5)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_B_4_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_D_M_reg(4),
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(4)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_B_3_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_D_M_reg(3),
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(3)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_B_2_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_D_M_reg(2),
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(2)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_B_1_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_D_M_reg(1),
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(1)
    );
  NlwBufferBlock_alu_Mmult_MULTIPLICATION_mult0000_B_0_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_D_M_reg(0),
      O => NlwBufferSignal_alu_Mmult_MULTIPLICATION_mult0000_B(0)
    );
  NlwBufferBlock_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_7_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_E_M_reg(7),
      O => 
NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_7_Q
    );
  NlwBufferBlock_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_6_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_E_M_reg(6),
      O => 
NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_6_Q
    );
  NlwBufferBlock_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_5_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_E_M_reg(5),
      O => 
NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_5_Q
    );
  NlwBufferBlock_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_4_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_E_M_reg(4),
      O => 
NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_4_Q
    );
  NlwBufferBlock_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_3_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_E_M_reg(3),
      O => 
NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_3_Q
    );
  NlwBufferBlock_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_2_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_E_M_reg(2),
      O => 
NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_2_Q
    );
  NlwBufferBlock_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_1_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_E_M_reg(1),
      O => 
NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_1_Q
    );
  NlwBufferBlock_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_0_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_E_M_reg(0),
      O => 
NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_ADDRA_0_Q
    );
  NlwBufferBlock_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_0_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_D_M_reg(0),
      O => NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_0_Q
    );
  NlwBufferBlock_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_1_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_D_M_reg(1),
      O => NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_1_Q
    );
  NlwBufferBlock_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_8_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_D_M_reg(2),
      O => NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_8_Q
    );
  NlwBufferBlock_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_9_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_D_M_reg(3),
      O => NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_9_Q
    );
  NlwBufferBlock_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_16_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_D_M_reg(4),
      O => 
NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_16_Q
    );
  NlwBufferBlock_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_17_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_D_M_reg(5),
      O => 
NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_17_Q
    );
  NlwBufferBlock_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_24_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_D_M_reg(6),
      O => 
NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_24_Q
    );
  NlwBufferBlock_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_25_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => R_D_M_reg(7),
      O => 
NlwBufferSignal_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_s3_init_ram_dpram_dp36x36_ram_DIA_25_Q
    );
  NlwBlock_neander_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_neander_GND : X_ZERO
    port map (
      O => GND
    );
  NlwInverterBlock_alu_MULTIPLICATION_1_CLK : X_INV
    port map (
      I => alu_MULTIPLICATION_1_CLKINVNOT,
      O => NlwInverterSignal_alu_MULTIPLICATION_1_CLK
    );
  NlwInverterBlock_alu_MULTIPLICATION_2_CLK : X_INV
    port map (
      I => alu_MULTIPLICATION_3_CLKINVNOT,
      O => NlwInverterSignal_alu_MULTIPLICATION_2_CLK
    );
  NlwInverterBlock_alu_MULTIPLICATION_0_CLK : X_INV
    port map (
      I => alu_MULTIPLICATION_1_CLKINVNOT,
      O => NlwInverterSignal_alu_MULTIPLICATION_0_CLK
    );
  NlwInverterBlock_alu_MULTIPLICATION_3_CLK : X_INV
    port map (
      I => alu_MULTIPLICATION_3_CLKINVNOT,
      O => NlwInverterSignal_alu_MULTIPLICATION_3_CLK
    );
  NlwInverterBlock_alu_MULTIPLICATION_4_CLK : X_INV
    port map (
      I => alu_MULTIPLICATION_5_CLKINVNOT,
      O => NlwInverterSignal_alu_MULTIPLICATION_4_CLK
    );
  NlwInverterBlock_alu_MULTIPLICATION_5_CLK : X_INV
    port map (
      I => alu_MULTIPLICATION_5_CLKINVNOT,
      O => NlwInverterSignal_alu_MULTIPLICATION_5_CLK
    );
  NlwInverterBlock_alu_MULTIPLICATION_6_CLK : X_INV
    port map (
      I => alu_MULTIPLICATION_7_CLKINVNOT,
      O => NlwInverterSignal_alu_MULTIPLICATION_6_CLK
    );
  NlwInverterBlock_alu_MULTIPLICATION_7_CLK : X_INV
    port map (
      I => alu_MULTIPLICATION_7_CLKINVNOT,
      O => NlwInverterSignal_alu_MULTIPLICATION_7_CLK
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

