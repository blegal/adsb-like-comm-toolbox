onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+my_module2_0 -L xil_defaultlib -L secureip -O5 xil_defaultlib.my_module2_0

do {wave.do}

view wave
view structure

do {my_module2_0.udo}

run -all

endsim

quit -force
