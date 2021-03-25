onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib my_module1_0_opt

do {wave.do}

view wave
view structure
view signals

do {my_module1_0.udo}

run -all

quit -force
