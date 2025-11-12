module regarray_tb ;
    reg clk, we;
    reg [4:0] rs1, rs2, rd;
    reg [31:0] wd;
    wire [31:0] d1, d2;

    reg_file uut (.clk(clk), .we(we), .rs1(rs1), .rs2(rs2), .rd(rd), .wd(wd), .rd1(rd1), .rd2(rd2));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
initial begin
  clk = 0;
  we = 0;
  rs1 = 0;
  rs2 = 0;
  rd = 0;
  wd = 0;
end


    initial begin
        we = 1; rd = rd1; wd = 32'hAAAA_AAAA; #10;
        we = 1; rd = rd2; wd = 32'h5555_5555; #10;
        we = 0; rs1 = rd1; rs2 =  rd2; #10;
        $finish;
    end


endmodule
