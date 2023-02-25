onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Hex_Editor_opt

do {wave.do}

view wave
view structure
view signals

do {Hex_Editor.udo}

run -all

quit -force
