# command: vsim -c -do .\name.tcl

puts "MYINFO criando biblioteca work"
vlib work

# puts "MYINFO testando somador"
# vcom -2008 somador.vhdl
# vcom -2008 test_somador.vhdl
# vsim work.test_somador
# run 1 ms;
# 
# puts "MYINFO testando somador4"
# vcom -2008 somador4.vhdl
# vcom -2008 test_somador4.vhdl
# vsim work.test_somador4
# run 1 ms
# 
# puts "MYINFO testando inversor"
# vcom -2008 inversor.vhdl
# vcom -2008 test_inversor.vhdl
# vsim work.test_inversor
# run 1 ms
# 
# puts "MYINFO testando inversor4"
# vcom -2008 inversor4.vhdl
# vcom -2008 test_inversor4.vhdl
# vsim work.test_inversor4
# run 1ms
# 
# puts "MYINFO compilando sumsub"
# vcom -2008 sumsub.vhdl
# 
# puts "MYINFO compilando hex_to_7"
# vcom -2008 hex_to_7.vhdl
# 
# 
# puts "MYINFO testando lab1"
# vcom -2008 lab1.vhdl
# vcom -2008 test_lab1.vhdl
# vsim work.test_lab1
# run 1ms

#puts "MYINFO testando sr_latch"
#vcom -2008 sr_latch.vhdl
#vcom -2008 test_sr_latch.vhdl
#vsim work.test_sr_latch
#run 1ms

puts "MYINFO testando d_latch"
vcom -2008 sr_latch.vhdl
vcom -2008 d_latch.vhdl
vcom -2008 test_d_latch.vhdl
vsim work.test_d_latch
run 1ms

exit
