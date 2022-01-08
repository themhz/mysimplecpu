onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /sequence_generator/INCREMENT
add wave -noupdate /sequence_generator/FETCH
add wave -noupdate /sequence_generator/EXECUTE
add wave -noupdate /sequence_generator/DFFE_inst
add wave -noupdate /sequence_generator/DECODE
add wave -noupdate /sequence_generator/CLR
add wave -noupdate /sequence_generator/CLK
add wave -noupdate /sequence_generator/CE
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {9450 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {9450 ps} {10450 ps}
