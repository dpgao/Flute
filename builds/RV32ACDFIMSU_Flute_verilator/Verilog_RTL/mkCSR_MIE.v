//
// Generated by Bluespec Compiler, version 2017.07.A (build 1da80f1, 2017-07-21)
//
// On Fri Jan 18 19:53:55 EST 2019
//
//
// Ports:
// Name                         I/O  size props
// fv_read                        O    32
// fav_write                      O    32
// fv_sie_read                    O    32
// fav_sie_write                  O    32
// CLK                            I     1 clock
// RST_N                          I     1 reset
// fav_write_misa                 I    28
// fav_write_wordxl               I    32
// fav_sie_write_misa             I    28
// fav_sie_write_wordxl           I    32
// EN_reset                       I     1
// EN_fav_write                   I     1
// EN_fav_sie_write               I     1
//
// Combinational paths from inputs to outputs:
//   (fav_write_misa, fav_write_wordxl) -> fav_write
//   (fav_sie_write_misa, fav_sie_write_wordxl) -> fav_sie_write
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif

module mkCSR_MIE(CLK,
		 RST_N,

		 EN_reset,

		 fv_read,

		 fav_write_misa,
		 fav_write_wordxl,
		 EN_fav_write,
		 fav_write,

		 fv_sie_read,

		 fav_sie_write_misa,
		 fav_sie_write_wordxl,
		 EN_fav_sie_write,
		 fav_sie_write);
  input  CLK;
  input  RST_N;

  // action method reset
  input  EN_reset;

  // value method fv_read
  output [31 : 0] fv_read;

  // actionvalue method fav_write
  input  [27 : 0] fav_write_misa;
  input  [31 : 0] fav_write_wordxl;
  input  EN_fav_write;
  output [31 : 0] fav_write;

  // value method fv_sie_read
  output [31 : 0] fv_sie_read;

  // actionvalue method fav_sie_write
  input  [27 : 0] fav_sie_write_misa;
  input  [31 : 0] fav_sie_write_wordxl;
  input  EN_fav_sie_write;
  output [31 : 0] fav_sie_write;

  // signals for module outputs
  wire [31 : 0] fav_sie_write, fav_write, fv_read, fv_sie_read;

  // register rg_mie
  reg [11 : 0] rg_mie;
  reg [11 : 0] rg_mie$D_IN;
  wire rg_mie$EN;

  // rule scheduling signals
  wire CAN_FIRE_fav_sie_write,
       CAN_FIRE_fav_write,
       CAN_FIRE_reset,
       WILL_FIRE_fav_sie_write,
       WILL_FIRE_fav_write,
       WILL_FIRE_reset;

  // inputs to muxes for submodule ports
  wire [11 : 0] MUX_rg_mie$write_1__VAL_3;

  // remaining internal signals
  wire [11 : 0] mie__h92, x__h458, x__h883;
  wire seie__h123,
       seie__h544,
       ssie__h117,
       ssie__h538,
       stie__h120,
       stie__h541,
       ueie__h122,
       ueie__h543,
       usie__h116,
       usie__h537,
       utie__h119,
       utie__h540;

  // action method reset
  assign CAN_FIRE_reset = 1'd1 ;
  assign WILL_FIRE_reset = EN_reset ;

  // value method fv_read
  assign fv_read = { 20'd0, rg_mie } ;

  // actionvalue method fav_write
  assign fav_write = { 20'd0, mie__h92 } ;
  assign CAN_FIRE_fav_write = 1'd1 ;
  assign WILL_FIRE_fav_write = EN_fav_write ;

  // value method fv_sie_read
  assign fv_sie_read = { 20'd0, x__h458 } ;

  // actionvalue method fav_sie_write
  assign fav_sie_write = { 20'd0, x__h883 } ;
  assign CAN_FIRE_fav_sie_write = 1'd1 ;
  assign WILL_FIRE_fav_sie_write = EN_fav_sie_write ;

  // inputs to muxes for submodule ports
  assign MUX_rg_mie$write_1__VAL_3 =
	     { rg_mie[11],
	       1'b0,
	       seie__h544,
	       ueie__h543,
	       rg_mie[7],
	       1'b0,
	       stie__h541,
	       utie__h540,
	       rg_mie[3],
	       1'b0,
	       ssie__h538,
	       usie__h537 } ;

  // register rg_mie
  always@(EN_fav_write or
	  mie__h92 or
	  EN_reset or EN_fav_sie_write or MUX_rg_mie$write_1__VAL_3)
  case (1'b1)
    EN_fav_write: rg_mie$D_IN = mie__h92;
    EN_reset: rg_mie$D_IN = 12'd0;
    EN_fav_sie_write: rg_mie$D_IN = MUX_rg_mie$write_1__VAL_3;
    default: rg_mie$D_IN = 12'b101010101010 /* unspecified value */ ;
  endcase
  assign rg_mie$EN = EN_fav_write || EN_fav_sie_write || EN_reset ;

  // remaining internal signals
  assign mie__h92 =
	     { fav_write_wordxl[11],
	       1'b0,
	       seie__h123,
	       ueie__h122,
	       fav_write_wordxl[7],
	       1'b0,
	       stie__h120,
	       utie__h119,
	       fav_write_wordxl[3],
	       1'b0,
	       ssie__h117,
	       usie__h116 } ;
  assign seie__h123 = fav_write_misa[18] && fav_write_wordxl[9] ;
  assign seie__h544 = fav_sie_write_misa[18] && fav_sie_write_wordxl[9] ;
  assign ssie__h117 = fav_write_misa[18] && fav_write_wordxl[1] ;
  assign ssie__h538 = fav_sie_write_misa[18] && fav_sie_write_wordxl[1] ;
  assign stie__h120 = fav_write_misa[18] && fav_write_wordxl[5] ;
  assign stie__h541 = fav_sie_write_misa[18] && fav_sie_write_wordxl[5] ;
  assign ueie__h122 = fav_write_misa[13] && fav_write_wordxl[8] ;
  assign ueie__h543 = fav_sie_write_misa[13] && fav_sie_write_wordxl[8] ;
  assign usie__h116 = fav_write_misa[13] && fav_write_wordxl[0] ;
  assign usie__h537 = fav_sie_write_misa[13] && fav_sie_write_wordxl[0] ;
  assign utie__h119 = fav_write_misa[13] && fav_write_wordxl[4] ;
  assign utie__h540 = fav_sie_write_misa[13] && fav_sie_write_wordxl[4] ;
  assign x__h458 =
	     { 2'd0, rg_mie[9:8], 2'd0, rg_mie[5:4], 2'd0, rg_mie[1:0] } ;
  assign x__h883 =
	     { 2'd0,
	       seie__h544,
	       ueie__h543,
	       2'd0,
	       stie__h541,
	       utie__h540,
	       2'd0,
	       ssie__h538,
	       usie__h537 } ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        rg_mie <= `BSV_ASSIGNMENT_DELAY 12'd0;
      end
    else
      begin
        if (rg_mie$EN) rg_mie <= `BSV_ASSIGNMENT_DELAY rg_mie$D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    rg_mie = 12'hAAA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkCSR_MIE

