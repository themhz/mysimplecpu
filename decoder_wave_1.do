onerror {resume}
quietly virtual signal -install /decoder_tb { (context /decoder_tb )(RAM & ALU_S0 & ALU_S1 & ALU_S2 & ALU_S3 & ALU_S4 & MUXA & MUXB & MUXC & EN_IN & EN_DA & EN_PC )} result
quietly virtual signal -install /decoder_tb { (context /decoder_tb )(EN_IN & EN_DA & EN_PC & MUXA & MUXB & MUXC & ALU_S4 & ALU_S3 & ALU_S2 & ALU_S1 & ALU_S0 & RAM )} result001
quietly WaveActivateNextPane {} 0
add wave -noupdate /decoder_tb/Zero
add wave -noupdate /decoder_tb/IR
add wave -noupdate /decoder_tb/CLR
add wave -noupdate /decoder_tb/CLK
add wave -noupdate /decoder_tb/CE
add wave -noupdate /decoder_tb/Carry
add wave -noupdate /decoder_tb/EN_IN
add wave -noupdate /decoder_tb/EN_DA
add wave -noupdate /decoder_tb/EN_PC
add wave -noupdate /decoder_tb/MUXA
add wave -noupdate /decoder_tb/MUXB
add wave -noupdate /decoder_tb/MUXC
add wave -noupdate /decoder_tb/ALU_S4
add wave -noupdate /decoder_tb/ALU_S3
add wave -noupdate /decoder_tb/ALU_S2
add wave -noupdate /decoder_tb/ALU_S1
add wave -noupdate /decoder_tb/ALU_S0
add wave -noupdate /decoder_tb/RAM
add wave -noupdate /decoder_tb/result001
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {780 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 126
configure wave -valuecolwidth 119
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
WaveRestoreZoom {645 ps} {808 ps}
