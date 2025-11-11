module tb_immgen;
  reg [31:0] instr;
  wire [31:0] imm_out;

  immgen DUT (.instr(instr), .imm_out(imm_out));

  initial begin
    $display("Testing IMMGEN...");

    instr = 32'h00510113; #10; // addi
    $display("addi imm = %d", imm_out);

    instr = 32'h02012023; #10; // sw
    $display("sw imm = %d", imm_out);

    instr = 32'hFE211CE3; #10; // beq
    $display("beq imm = %d", imm_out);

    $finish;
  end
endmodule

