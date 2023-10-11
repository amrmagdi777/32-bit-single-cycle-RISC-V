library verilog;
use verilog.vl_types.all;
entity data_mem is
    generic(
        Addr            : integer := 32;
        WIDTH           : integer := 32;
        DEPTH           : integer := 100
    );
    port(
        clk             : in     vl_logic;
        WE              : in     vl_logic;
        address         : in     vl_logic_vector;
        write_data      : in     vl_logic_vector;
        read_data       : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Addr : constant is 1;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DEPTH : constant is 1;
end data_mem;
