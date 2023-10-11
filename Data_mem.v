module data_mem #(parameter Addr = 32,WIDTH = 32,DEPTH = 100) (
    input wire clk,
    input wire WE,
    input wire [Addr-1:0] address,
    input wire [WIDTH-1:0] write_data,
    output wire [WIDTH-1:0] read_data
);

reg [WIDTH-1:0] mem [DEPTH:0];

always @(posedge clk) begin
    if(WE) begin
        mem[address] <= write_data;
    end   
end

assign read_data = mem[address];

endmodule

