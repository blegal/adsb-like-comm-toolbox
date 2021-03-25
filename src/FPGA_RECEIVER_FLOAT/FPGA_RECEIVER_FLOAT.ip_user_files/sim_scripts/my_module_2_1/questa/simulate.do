onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib my_module_2_opt

do {wave.do}

view wave
view structure
view signals

do {my_module_2.udo}

run -all

quit -force
