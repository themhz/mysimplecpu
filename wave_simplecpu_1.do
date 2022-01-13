onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /simple_cpu_tb/CLR
add wave -noupdate /simple_cpu_tb/CLK
add wave -noupdate /simple_cpu_tb/ACC
add wave -noupdate /simple_cpu_tb/dout
add wave -noupdate /simple_cpu_tb/TB/Q
add wave -noupdate -radix hexadecimal -childformat {{/simple_cpu_tb/TB/Q(15) -radix hexadecimal} {/simple_cpu_tb/TB/Q(14) -radix hexadecimal} {/simple_cpu_tb/TB/Q(13) -radix hexadecimal} {/simple_cpu_tb/TB/Q(12) -radix hexadecimal} {/simple_cpu_tb/TB/Q(11) -radix hexadecimal} {/simple_cpu_tb/TB/Q(10) -radix hexadecimal} {/simple_cpu_tb/TB/Q(9) -radix hexadecimal} {/simple_cpu_tb/TB/Q(8) -radix hexadecimal} {/simple_cpu_tb/TB/Q(7) -radix hexadecimal} {/simple_cpu_tb/TB/Q(6) -radix hexadecimal} {/simple_cpu_tb/TB/Q(5) -radix hexadecimal} {/simple_cpu_tb/TB/Q(4) -radix hexadecimal} {/simple_cpu_tb/TB/Q(3) -radix hexadecimal} {/simple_cpu_tb/TB/Q(2) -radix hexadecimal} {/simple_cpu_tb/TB/Q(1) -radix hexadecimal} {/simple_cpu_tb/TB/Q(0) -radix hexadecimal}} -subitemconfig {/simple_cpu_tb/TB/Q(15) {-height 15 -radix hexadecimal} /simple_cpu_tb/TB/Q(14) {-height 15 -radix hexadecimal} /simple_cpu_tb/TB/Q(13) {-height 15 -radix hexadecimal} /simple_cpu_tb/TB/Q(12) {-height 15 -radix hexadecimal} /simple_cpu_tb/TB/Q(11) {-height 15 -radix hexadecimal} /simple_cpu_tb/TB/Q(10) {-height 15 -radix hexadecimal} /simple_cpu_tb/TB/Q(9) {-height 15 -radix hexadecimal} /simple_cpu_tb/TB/Q(8) {-height 15 -radix hexadecimal} /simple_cpu_tb/TB/Q(7) {-height 15 -radix hexadecimal} /simple_cpu_tb/TB/Q(6) {-height 15 -radix hexadecimal} /simple_cpu_tb/TB/Q(5) {-height 15 -radix hexadecimal} /simple_cpu_tb/TB/Q(4) {-height 15 -radix hexadecimal} /simple_cpu_tb/TB/Q(3) {-height 15 -radix hexadecimal} /simple_cpu_tb/TB/Q(2) {-height 15 -radix hexadecimal} /simple_cpu_tb/TB/Q(1) {-height 15 -radix hexadecimal} /simple_cpu_tb/TB/Q(0) {-height 15 -radix hexadecimal}} /simple_cpu_tb/TB/Q
add wave -noupdate /simple_cpu_tb/TB/Q
add wave -noupdate /simple_cpu_tb/ACC
add wave -noupdate /simple_cpu_tb/TB/QA
add wave -noupdate -radix hexadecimal /simple_cpu_tb/TB/Q
add wave -noupdate -radix hexadecimal /simple_cpu_tb/ACC
add wave -noupdate -radix unsigned /simple_cpu_tb/TB/QA
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Loop 1} {18741 ps} 0} {{Loop 2} {18284 ps} 0} {{Loop 3} {14150 ps} 0}
quietly wave cursor active 2
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
WaveRestoreZoom {0 ps} {9450 ps}
