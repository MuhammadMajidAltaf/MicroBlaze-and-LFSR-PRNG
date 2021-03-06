onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L unisims_ver -L unimacro_ver -L secureip -L microblaze_v9_5_3 -L xil_defaultlib -L lmb_v10_v3_0_7 -L lmb_bram_if_cntlr_v4_0_7 -L blk_mem_gen_v8_3_1 -L axi_lite_ipif_v3_0_3 -L mdm_v3_2_4 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_8 -L interrupt_control_v3_1_3 -L axi_gpio_v2_0_9 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_7 -L fifo_generator_v13_0_1 -L axi_data_fifo_v2_1_6 -L axi_crossbar_v2_1_8 -L util_vector_logic_v2_0 -lib xil_defaultlib xil_defaultlib.design_gpio_led xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {design_gpio_led.udo}

run -all

quit -force
