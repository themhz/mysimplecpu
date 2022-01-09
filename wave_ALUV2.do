onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /alu_v2_tb/S5
add wave -noupdate /alu_v2_tb/S4
add wave -noupdate /alu_v2_tb/S3
add wave -noupdate /alu_v2_tb/S2
add wave -noupdate /alu_v2_tb/S1
add wave -noupdate /alu_v2_tb/S0
add wave -noupdate /alu_v2_tb/Cout
add wave -noupdate /alu_v2_tb/A
add wave -noupdate /alu_v2_tb/B
add wave -noupdate /alu_v2_tb/Z
TreeUpdate [SetDefaultTree]
WaveRestoreCursors
quietly wave cursor active 0
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
WaveRestoreZoom {490 ps} {1027 ps}
