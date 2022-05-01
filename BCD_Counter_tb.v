module BCD_Counter_tb;
reg clk,rst_asyn;    //input
wire [3:0] Q_out;   //output
initial begin
    #0;
    forever
    begin
        clk = 1'b0;
        #5 clk = 1'b1;
        #5;
    end
end
initial begin
    #0 rst_asyn=1'b1;   //歸零
    #5 rst_asyn=1'b0;
    #44 rst_asyn=1'b1;  //按下rst
    #1 rst_asyn=1'b0;
    #150 $finish;
end
BCD BCD_Counter_tb(.clk(clk), .rst_asyn(rst_asyn), .Q_out(Q_out));
initial begin
    $dumpfile("BCD_Counter.vcd");
    $dumpvars(0, BCD_Counter_tb);
end
endmodule