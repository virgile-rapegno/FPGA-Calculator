transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/virgi/Desktop/test/register_file.vhd}
vcom -93 -work work {C:/Users/virgi/Desktop/test/ALU.vhd}
vcom -93 -work work {C:/Users/virgi/Desktop/test/Rom.vhd}
vcom -93 -work work {C:/Users/virgi/Desktop/test/Fetch.vhd}
vcom -93 -work work {C:/Users/virgi/Desktop/test/dig2dec.vhd}
vcom -93 -work work {C:/Users/virgi/Desktop/test/SEG7_LUT.vhd}
vcom -93 -work work {C:/Users/virgi/Desktop/test/Event_Detect.vhd}
vcom -93 -work work {C:/Users/virgi/Desktop/test/CPU.vhd}

