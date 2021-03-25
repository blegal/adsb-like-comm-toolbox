onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xil_defaultlib -L secureip -lib xil_defaultlib xil_defaultlib.my_module2_0

do {wave.do}

view wave
view structure
view signals

do {my_module2_0.udo}

run -all

quit -force
