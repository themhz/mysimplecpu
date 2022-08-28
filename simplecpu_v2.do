onerror {resume}
quietly virtual signal -install /simple_cpu_tb/TB/b2v_PC_PROGRAM_COUNTER { (context /simple_cpu_tb/TB/b2v_PC_PROGRAM_COUNTER )(D0 & D1 & D2 & D3 & D4 & D5 & D6 & D7 & CLK & CE & CLR & Q0 & Q1 & Q2 & Q3 & Q4 & Q5 & Q6 & Q7 )} PC
quietly virtual signal -install /simple_cpu_tb/TB/b2v_PC_PROGRAM_COUNTER { (concat_range (0 to 18) )( (context /simple_cpu_tb/TB/b2v_PC_PROGRAM_COUNTER )(D0 & D1 & D2 & D3 & D4 & D5 & D6 & D7 & CLK & CE & CLR & Q0 & Q1 & Q2 & Q3 & Q4 & Q5 & Q6 & Q7 ) )} PC2
quietly virtual signal -install /simple_cpu_tb/TB/b2v_PC_PROGRAM_COUNTER { (context /simple_cpu_tb/TB/b2v_PC_PROGRAM_COUNTER )(Q7 & Q6 & Q5 & Q4 & Q3 & Q2 & Q1 & Q0 & CLR & CE & CLK & D7 & D6 & D5 & D4 & D3 & D2 & D1 & D0 )} dd
quietly virtual signal -install /simple_cpu_tb/TB/b2v_PC_PROGRAM_COUNTER { (context /simple_cpu_tb/TB/b2v_PC_PROGRAM_COUNTER )(Q7 & Q6 & Q5 & Q4 & Q3 & Q2 & Q1 & Q0 )} PC001
quietly WaveActivateNextPane {} 0
add wave -noupdate /simple_cpu_tb/dout
add wave -noupdate /simple_cpu_tb/CLR
add wave -noupdate /simple_cpu_tb/CLK
add wave -noupdate /simple_cpu_tb/ACC
add wave -noupdate /simple_cpu_tb/TB/b2v_decoder_v2/b2v_instruction_decoder/LOAD
add wave -noupdate /simple_cpu_tb/TB/b2v_decoder_v2/b2v_instruction_decoder/IR
add wave -noupdate /simple_cpu_tb/TB/b2v_decoder_v2/b2v_sequence_generator/FETCH
add wave -noupdate /simple_cpu_tb/TB/b2v_decoder_v2/b2v_sequence_generator/DECODE
add wave -noupdate /simple_cpu_tb/TB/b2v_decoder_v2/b2v_sequence_generator/EXECUTE
add wave -noupdate /simple_cpu_tb/TB/b2v_decoder_v2/b2v_sequence_generator/INCREMENT
add wave -noupdate -radix decimal /simple_cpu_tb/TB/b2v_PC_PROGRAM_COUNTER/PC001
add wave -noupdate /simple_cpu_tb/TB/b2v_PC_PROGRAM_COUNTER/Q7
add wave -noupdate /simple_cpu_tb/TB/b2v_PC_PROGRAM_COUNTER/Q6
add wave -noupdate /simple_cpu_tb/TB/b2v_PC_PROGRAM_COUNTER/Q5
add wave -noupdate /simple_cpu_tb/TB/b2v_PC_PROGRAM_COUNTER/Q4
add wave -noupdate /simple_cpu_tb/TB/b2v_PC_PROGRAM_COUNTER/Q3
add wave -noupdate /simple_cpu_tb/TB/b2v_PC_PROGRAM_COUNTER/Q2
add wave -noupdate /simple_cpu_tb/TB/b2v_PC_PROGRAM_COUNTER/Q1
add wave -noupdate /simple_cpu_tb/TB/b2v_PC_PROGRAM_COUNTER/Q0
add wave -noupdate /simple_cpu_tb/TB/b2v_decoder_v2/Zero
add wave -noupdate /simple_cpu_tb/TB/b2v_decoder_v2/Carry
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6717 ps} 0}
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
WaveRestoreZoom {6300 ps} {7087 ps}
