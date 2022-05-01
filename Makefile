VERILOG = iverilog
TARGET = BCD_Counter.vcd

$(TARGET) : BCD_Counter.vvp
	vvp BCD_Counter.vvp

BCD_Counter.vvp: BCD_Counter_tb.v BCD_Counter.v
	$(VERILOG) -o BCD_Counter.vvp BCD_Counter_tb.v BCD_Counter.v

clean:
	-del $(TARGET)