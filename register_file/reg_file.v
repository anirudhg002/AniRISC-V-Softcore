module reg_file(
  input clk,
module reg_file(
    input clk,
    input we,
    input [4:0] rs1, rs2, rd,
    input [31:0] wd,
    output [31:0] rd1, rd2
);
    reg [31:0] reg_array [31:0];

    // Read ports
    assign rd1 = reg_array[rs1];
    assign rd2 = reg_array[rs2];

    // Write port (edge triggered)
    always @(posedge clk) begin
        if (we && rd != 0)
            reg_array[rd] <= wd;
    end
endmodule

