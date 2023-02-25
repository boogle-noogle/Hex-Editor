onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+Hex_Editor -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.Hex_Editor xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {Hex_Editor.udo}

run -all

endsim

quit -force
