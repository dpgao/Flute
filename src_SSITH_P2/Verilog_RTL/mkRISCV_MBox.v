//
// Generated by Bluespec Compiler (build 39ae402)
//
//
//
//
// Ports:
// Name                         I/O  size props
// RDY_set_verbosity              O     1 const
// RDY_req_reset                  O     1 const
// RDY_rsp_reset                  O     1 const
// valid                          O     1
// word                           O    64
// CLK                            I     1 clock
// RST_N                          I     1 reset
// set_verbosity_verbosity        I     4 reg
// req_is_OP_not_OP_32            I     1
// req_f3                         I     3
// req_v1                         I    64
// req_v2                         I    64
// EN_set_verbosity               I     1
// EN_req_reset                   I     1 unused
// EN_rsp_reset                   I     1 unused
// EN_req                         I     1
//
// No combinational paths from inputs to outputs
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

module mkRISCV_MBox(CLK,
		    RST_N,

		    set_verbosity_verbosity,
		    EN_set_verbosity,
		    RDY_set_verbosity,

		    EN_req_reset,
		    RDY_req_reset,

		    EN_rsp_reset,
		    RDY_rsp_reset,

		    req_is_OP_not_OP_32,
		    req_f3,
		    req_v1,
		    req_v2,
		    EN_req,

		    valid,

		    word);
  input  CLK;
  input  RST_N;

  // action method set_verbosity
  input  [3 : 0] set_verbosity_verbosity;
  input  EN_set_verbosity;
  output RDY_set_verbosity;

  // action method req_reset
  input  EN_req_reset;
  output RDY_req_reset;

  // action method rsp_reset
  input  EN_rsp_reset;
  output RDY_rsp_reset;

  // action method req
  input  req_is_OP_not_OP_32;
  input  [2 : 0] req_f3;
  input  [63 : 0] req_v1;
  input  [63 : 0] req_v2;
  input  EN_req;

  // value method valid
  output valid;

  // value method word
  output [63 : 0] word;

  // signals for module outputs
  wire [63 : 0] word;
  wire RDY_req_reset, RDY_rsp_reset, RDY_set_verbosity, valid;

  // inlined wires
  wire dw_valid$whas;

  // register cfg_verbosity
  reg [3 : 0] cfg_verbosity;
  wire [3 : 0] cfg_verbosity$D_IN;
  wire cfg_verbosity$EN;

  // register intDiv_rg_denom2
  reg [63 : 0] intDiv_rg_denom2;
  reg [63 : 0] intDiv_rg_denom2$D_IN;
  wire intDiv_rg_denom2$EN;

  // register intDiv_rg_denom_is_signed
  reg intDiv_rg_denom_is_signed;
  wire intDiv_rg_denom_is_signed$D_IN, intDiv_rg_denom_is_signed$EN;

  // register intDiv_rg_n
  reg [63 : 0] intDiv_rg_n;
  reg [63 : 0] intDiv_rg_n$D_IN;
  wire intDiv_rg_n$EN;

  // register intDiv_rg_numer_is_signed
  reg intDiv_rg_numer_is_signed;
  wire intDiv_rg_numer_is_signed$D_IN, intDiv_rg_numer_is_signed$EN;

  // register intDiv_rg_quo
  reg [63 : 0] intDiv_rg_quo;
  reg [63 : 0] intDiv_rg_quo$D_IN;
  wire intDiv_rg_quo$EN;

  // register intDiv_rg_quoIsNeg
  reg intDiv_rg_quoIsNeg;
  wire intDiv_rg_quoIsNeg$D_IN, intDiv_rg_quoIsNeg$EN;

  // register intDiv_rg_remIsNeg
  reg intDiv_rg_remIsNeg;
  wire intDiv_rg_remIsNeg$D_IN, intDiv_rg_remIsNeg$EN;

  // register intDiv_rg_state
  reg [2 : 0] intDiv_rg_state;
  reg [2 : 0] intDiv_rg_state$D_IN;
  wire intDiv_rg_state$EN;

  // register rg_f3
  reg [2 : 0] rg_f3;
  wire [2 : 0] rg_f3$D_IN;
  wire rg_f3$EN;

  // register rg_is_OP_not_OP_32
  reg rg_is_OP_not_OP_32;
  wire rg_is_OP_not_OP_32$D_IN, rg_is_OP_not_OP_32$EN;

  // register rg_result
  reg [63 : 0] rg_result;
  wire [63 : 0] rg_result$D_IN;
  wire rg_result$EN;

  // register rg_state
  reg [1 : 0] rg_state;
  wire [1 : 0] rg_state$D_IN;
  wire rg_state$EN;

  // register rg_v1
  reg [63 : 0] rg_v1;
  reg [63 : 0] rg_v1$D_IN;
  wire rg_v1$EN;

  // register rg_v2
  reg [63 : 0] rg_v2;
  wire [63 : 0] rg_v2$D_IN;
  wire rg_v2$EN;

  // rule scheduling signals
  wire CAN_FIRE_RL_intDiv_rl_loop1,
       CAN_FIRE_RL_intDiv_rl_loop2,
       CAN_FIRE_RL_intDiv_rl_start_div_by_zero,
       CAN_FIRE_RL_intDiv_rl_start_overflow,
       CAN_FIRE_RL_intDiv_rl_start_s,
       CAN_FIRE_RL_rg_div_rem,
       CAN_FIRE_RL_rl_mul,
       CAN_FIRE_RL_rl_mul2,
       CAN_FIRE_req,
       CAN_FIRE_req_reset,
       CAN_FIRE_rsp_reset,
       CAN_FIRE_set_verbosity,
       WILL_FIRE_RL_intDiv_rl_loop1,
       WILL_FIRE_RL_intDiv_rl_loop2,
       WILL_FIRE_RL_intDiv_rl_start_div_by_zero,
       WILL_FIRE_RL_intDiv_rl_start_overflow,
       WILL_FIRE_RL_intDiv_rl_start_s,
       WILL_FIRE_RL_rg_div_rem,
       WILL_FIRE_RL_rl_mul,
       WILL_FIRE_RL_rl_mul2,
       WILL_FIRE_req,
       WILL_FIRE_req_reset,
       WILL_FIRE_rsp_reset,
       WILL_FIRE_set_verbosity;

  // inputs to muxes for submodule ports
  wire [63 : 0] MUX_dw_result$wset_1__VAL_2,
		MUX_intDiv_rg_denom2$write_1__VAL_1,
		MUX_intDiv_rg_denom2$write_1__VAL_2,
		MUX_intDiv_rg_denom2$write_1__VAL_3,
		MUX_intDiv_rg_n$write_1__VAL_1,
		MUX_intDiv_rg_n$write_1__VAL_2,
		MUX_intDiv_rg_quo$write_1__VAL_1,
		MUX_rg_v1$write_1__VAL_1,
		MUX_rg_v1$write_1__VAL_2,
		MUX_rg_v1$write_1__VAL_3,
		MUX_rg_v2$write_1__VAL_1;
  wire [1 : 0] MUX_rg_state$write_1__VAL_1;
  wire MUX_intDiv_rg_denom2$write_1__SEL_1,
       MUX_intDiv_rg_denom2$write_1__SEL_2,
       MUX_intDiv_rg_quo$write_1__SEL_1,
       MUX_intDiv_rg_state$write_1__SEL_1,
       MUX_intDiv_rg_state$write_1__SEL_2,
       MUX_intDiv_rg_state$write_1__SEL_3,
       MUX_rg_v1$write_1__SEL_2;

  // declarations used by system tasks
  // synopsys translate_off
  reg [31 : 0] v__h5568;
  reg [31 : 0] v__h5562;
  // synopsys translate_on

  // remaining internal signals
  wire [127 : 0] IF_rg_v1_BIT_63_5_EQ_rg_v2_BIT_63_0_6_THEN_pro_ETC__q8,
		 IF_rg_v1_BIT_63_THEN_prod___1166_ELSE_prod098__q6,
		 SEXT_rg_v1_BITS_31_TO_0_49_87_MUL_SEXT_rg_v2_B_ETC___d189,
		 _0x0_CONCAT_IF_rg_v1_BIT_63_5_THEN_INV_rg_v1_08_ETC___d118,
		 _0x0_CONCAT_IF_rg_v1_BIT_63_5_THEN_INV_rg_v1_08_ETC___d123,
		 _0x0_CONCAT_IF_rg_v1_BIT_63_5_THEN_INV_rg_v1_08_ETC___d129,
		 _0x0_CONCAT_IF_rg_v1_BIT_63_5_THEN_INV_rg_v1_08_ETC___d133,
		 _0x0_CONCAT_IF_rg_v1_BIT_63_5_THEN_INV_rg_v1_08_ETC___d167,
		 _0x0_CONCAT_IF_rg_v1_BIT_63_5_THEN_INV_rg_v1_08_ETC___d170,
		 _0x0_CONCAT_IF_rg_v1_BIT_63_5_THEN_INV_rg_v1_08_ETC___d174,
		 _0x0_CONCAT_IF_rg_v1_BIT_63_5_THEN_INV_rg_v1_08_ETC___d178,
		 _0x0_CONCAT_rg_v1_BITS_31_TO_0_49_50_MUL_0x0_CO_ETC___d151,
		 _0x0_CONCAT_rg_v1_BITS_31_TO_0_49_50_MUL_0x0_CO_ETC___d161,
		 _0x0_CONCAT_rg_v1_BITS_63_TO_32_42_43_MUL_0x0_C_ETC___d146,
		 _0x0_CONCAT_rg_v1_BITS_63_TO_32_42_43_MUL_0x0_C_ETC___d157,
		 prod___1__h4488,
		 prod___1__h5166,
		 prod__h4378,
		 prod__h5098,
		 rg_v1_MUL_rg_v2___d105,
		 x864_PLUS_y865__q7,
		 x__h4490,
		 x__h4520,
		 x__h4522,
		 x__h4524,
		 x__h4864,
		 x__h4866,
		 x__h4868,
		 x__h5168,
		 x__h5198,
		 x__h5200,
		 x__h5202,
		 y__h4521,
		 y__h4523,
		 y__h4525,
		 y__h4865,
		 y__h4867,
		 y__h4869,
		 y__h5199,
		 y__h5201,
		 y__h5203;
  wire [63 : 0] IF_rg_f3_4_BIT_1_02_THEN_rg_v1_ELSE_intDiv_rg__ETC___d203,
		IF_rg_v1_BIT_63_5_THEN_INV_rg_v1_08_PLUS_1_09__ETC___d110,
		IF_rg_v2_BIT_63_0_THEN_INV_rg_v2_13_PLUS_1_14__ETC___d115,
		_theResult___fst__h6025,
		_theResult___fst__h6055,
		_theResult___fst__h6081,
		_theResult___fst__h727,
		_theResult___snd__h6026,
		_theResult___snd__h6056,
		_theResult___snd__h6082,
		_theResult___snd_fst__h722,
		b__h4477,
		b__h5156,
		denom___1__h669,
		numer___1__h668,
		result___1__h5820,
		v__h4358,
		v__h4799,
		v__h5078,
		v__h5445,
		v__h5462,
		x__h3895,
		x__h3981,
		x__h4051,
		x__h4066,
		x__h4624,
		x__h4975,
		x__h5026,
		x__h5206,
		x__h5248,
		x__h5290,
		y__h3774,
		y__h4529,
		y__h4696,
		y__h5291,
		y__h5393;
  wire [31 : 0] IF_rg_f3_4_BIT_1_02_THEN_rg_v1_ELSE_intDiv_rg__ETC__q9,
		SEXT_rg_v1_BITS_31_TO_0_49_87_MUL_SEXT_rg_v2_B_ETC__q5,
		req_v1_BITS_31_TO_0__q1,
		req_v2_BITS_31_TO_0__q2,
		rg_v1_BITS_31_TO_0__q3,
		rg_v2_BITS_31_TO_0__q4;
  wire IF_intDiv_rg_numer_is_signed_THEN_rg_v1_BIT_63_ETC___d39,
       intDiv_rg_denom2_4_ULE_0_CONCAT_rg_v1_BITS_63__ETC___d47,
       rg_v1_BIT_63_5_EQ_rg_v2_BIT_63_0___d36,
       rg_v1_ULT_intDiv_rg_denom2_4___d59,
       rg_v1_ULT_rg_v2___d55;

  // action method set_verbosity
  assign RDY_set_verbosity = 1'd1 ;
  assign CAN_FIRE_set_verbosity = 1'd1 ;
  assign WILL_FIRE_set_verbosity = EN_set_verbosity ;

  // action method req_reset
  assign RDY_req_reset = 1'd1 ;
  assign CAN_FIRE_req_reset = 1'd1 ;
  assign WILL_FIRE_req_reset = EN_req_reset ;

  // action method rsp_reset
  assign RDY_rsp_reset = 1'd1 ;
  assign CAN_FIRE_rsp_reset = 1'd1 ;
  assign WILL_FIRE_rsp_reset = EN_rsp_reset ;

  // action method req
  assign CAN_FIRE_req = 1'd1 ;
  assign WILL_FIRE_req = EN_req ;

  // value method valid
  assign valid = dw_valid$whas ;

  // value method word
  assign word =
	     WILL_FIRE_RL_rl_mul2 ? rg_result : MUX_dw_result$wset_1__VAL_2 ;

  // rule RL_rl_mul
  assign CAN_FIRE_RL_rl_mul = rg_state == 2'd0 ;
  assign WILL_FIRE_RL_rl_mul = rg_state == 2'd0 ;

  // rule RL_rl_mul2
  assign CAN_FIRE_RL_rl_mul2 = rg_state == 2'd1 ;
  assign WILL_FIRE_RL_rl_mul2 = CAN_FIRE_RL_rl_mul2 ;

  // rule RL_rg_div_rem
  assign CAN_FIRE_RL_rg_div_rem =
	     rg_state == 2'd2 && intDiv_rg_state == 3'd4 ;
  assign WILL_FIRE_RL_rg_div_rem = CAN_FIRE_RL_rg_div_rem ;

  // rule RL_intDiv_rl_start_div_by_zero
  assign CAN_FIRE_RL_intDiv_rl_start_div_by_zero =
	     intDiv_rg_state == 3'd1 && rg_v2 == 64'd0 ;
  assign WILL_FIRE_RL_intDiv_rl_start_div_by_zero =
	     CAN_FIRE_RL_intDiv_rl_start_div_by_zero ;

  // rule RL_intDiv_rl_start_overflow
  assign CAN_FIRE_RL_intDiv_rl_start_overflow =
	     intDiv_rg_state == 3'd1 && intDiv_rg_numer_is_signed &&
	     rg_v1 == 64'h8000000000000000 &&
	     intDiv_rg_denom_is_signed &&
	     rg_v2 == 64'hFFFFFFFFFFFFFFFF ;
  assign WILL_FIRE_RL_intDiv_rl_start_overflow =
	     CAN_FIRE_RL_intDiv_rl_start_overflow ;

  // rule RL_intDiv_rl_start_s
  assign CAN_FIRE_RL_intDiv_rl_start_s =
	     intDiv_rg_state == 3'd1 && rg_v2 != 64'd0 &&
	     (!intDiv_rg_numer_is_signed || rg_v1 != 64'h8000000000000000 ||
	      !intDiv_rg_denom_is_signed ||
	      rg_v2 != 64'hFFFFFFFFFFFFFFFF) ;
  assign WILL_FIRE_RL_intDiv_rl_start_s = CAN_FIRE_RL_intDiv_rl_start_s ;

  // rule RL_intDiv_rl_loop1
  assign CAN_FIRE_RL_intDiv_rl_loop1 = intDiv_rg_state == 3'd2 ;
  assign WILL_FIRE_RL_intDiv_rl_loop1 = CAN_FIRE_RL_intDiv_rl_loop1 ;

  // rule RL_intDiv_rl_loop2
  assign CAN_FIRE_RL_intDiv_rl_loop2 = intDiv_rg_state == 3'd3 ;
  assign WILL_FIRE_RL_intDiv_rl_loop2 = CAN_FIRE_RL_intDiv_rl_loop2 ;

  // inputs to muxes for submodule ports
  assign MUX_intDiv_rg_denom2$write_1__SEL_1 =
	     WILL_FIRE_RL_intDiv_rl_loop1 &&
	     intDiv_rg_denom2_4_ULE_0_CONCAT_rg_v1_BITS_63__ETC___d47 ;
  assign MUX_intDiv_rg_denom2$write_1__SEL_2 =
	     WILL_FIRE_RL_intDiv_rl_loop2 && !rg_v1_ULT_rg_v2___d55 &&
	     rg_v1_ULT_intDiv_rg_denom2_4___d59 ;
  assign MUX_intDiv_rg_quo$write_1__SEL_1 =
	     WILL_FIRE_RL_intDiv_rl_loop2 &&
	     (rg_v1_ULT_rg_v2___d55 && intDiv_rg_quoIsNeg ||
	      !rg_v1_ULT_rg_v2___d55 && !rg_v1_ULT_intDiv_rg_denom2_4___d59) ;
  assign MUX_intDiv_rg_state$write_1__SEL_1 = EN_req && req_f3[2] ;
  assign MUX_intDiv_rg_state$write_1__SEL_2 =
	     WILL_FIRE_RL_intDiv_rl_loop2 && rg_v1_ULT_rg_v2___d55 ;
  assign MUX_intDiv_rg_state$write_1__SEL_3 =
	     WILL_FIRE_RL_intDiv_rl_loop1 &&
	     !intDiv_rg_denom2_4_ULE_0_CONCAT_rg_v1_BITS_63__ETC___d47 ;
  assign MUX_rg_v1$write_1__SEL_2 =
	     WILL_FIRE_RL_intDiv_rl_loop2 &&
	     (rg_v1_ULT_rg_v2___d55 && intDiv_rg_remIsNeg ||
	      !rg_v1_ULT_rg_v2___d55 && !rg_v1_ULT_intDiv_rg_denom2_4___d59) ;
  assign MUX_dw_result$wset_1__VAL_2 =
	     rg_is_OP_not_OP_32 ?
	       IF_rg_f3_4_BIT_1_02_THEN_rg_v1_ELSE_intDiv_rg__ETC___d203 :
	       result___1__h5820 ;
  assign MUX_intDiv_rg_denom2$write_1__VAL_1 =
	     { intDiv_rg_denom2[62:0], 1'd0 } ;
  assign MUX_intDiv_rg_denom2$write_1__VAL_2 =
	     { 1'd0, intDiv_rg_denom2[63:1] } ;
  assign MUX_intDiv_rg_denom2$write_1__VAL_3 =
	     (intDiv_rg_numer_is_signed && intDiv_rg_denom_is_signed) ?
	       denom___1__h669 :
	       _theResult___snd_fst__h722 ;
  assign MUX_intDiv_rg_n$write_1__VAL_1 = { intDiv_rg_n[62:0], 1'd0 } ;
  assign MUX_intDiv_rg_n$write_1__VAL_2 = { 1'd0, intDiv_rg_n[63:1] } ;
  assign MUX_intDiv_rg_quo$write_1__VAL_1 =
	     rg_v1_ULT_rg_v2___d55 ? x__h3981 : x__h4066 ;
  assign MUX_rg_state$write_1__VAL_1 = req_f3[2] ? 2'd2 : 2'd0 ;
  assign MUX_rg_v1$write_1__VAL_1 =
	     req_is_OP_not_OP_32 ? req_v1 : _theResult___fst__h6025 ;
  assign MUX_rg_v1$write_1__VAL_2 =
	     rg_v1_ULT_rg_v2___d55 ? x__h4051 : x__h3895 ;
  assign MUX_rg_v1$write_1__VAL_3 =
	     intDiv_rg_numer_is_signed ? numer___1__h668 : rg_v1 ;
  assign MUX_rg_v2$write_1__VAL_1 =
	     req_is_OP_not_OP_32 ? req_v2 : _theResult___snd__h6026 ;

  // inlined wires
  assign dw_valid$whas = WILL_FIRE_RL_rg_div_rem || WILL_FIRE_RL_rl_mul2 ;

  // register cfg_verbosity
  assign cfg_verbosity$D_IN = set_verbosity_verbosity ;
  assign cfg_verbosity$EN = EN_set_verbosity ;

  // register intDiv_rg_denom2
  always@(MUX_intDiv_rg_denom2$write_1__SEL_1 or
	  MUX_intDiv_rg_denom2$write_1__VAL_1 or
	  MUX_intDiv_rg_denom2$write_1__SEL_2 or
	  MUX_intDiv_rg_denom2$write_1__VAL_2 or
	  WILL_FIRE_RL_intDiv_rl_start_s or
	  MUX_intDiv_rg_denom2$write_1__VAL_3)
  begin
    case (1'b1) // synopsys parallel_case
      MUX_intDiv_rg_denom2$write_1__SEL_1:
	  intDiv_rg_denom2$D_IN = MUX_intDiv_rg_denom2$write_1__VAL_1;
      MUX_intDiv_rg_denom2$write_1__SEL_2:
	  intDiv_rg_denom2$D_IN = MUX_intDiv_rg_denom2$write_1__VAL_2;
      WILL_FIRE_RL_intDiv_rl_start_s:
	  intDiv_rg_denom2$D_IN = MUX_intDiv_rg_denom2$write_1__VAL_3;
      default: intDiv_rg_denom2$D_IN =
		   64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx /* unspecified value */ ;
    endcase
  end
  assign intDiv_rg_denom2$EN =
	     WILL_FIRE_RL_intDiv_rl_loop1 &&
	     intDiv_rg_denom2_4_ULE_0_CONCAT_rg_v1_BITS_63__ETC___d47 ||
	     WILL_FIRE_RL_intDiv_rl_loop2 && !rg_v1_ULT_rg_v2___d55 &&
	     rg_v1_ULT_intDiv_rg_denom2_4___d59 ||
	     WILL_FIRE_RL_intDiv_rl_start_s ;

  // register intDiv_rg_denom_is_signed
  assign intDiv_rg_denom_is_signed$D_IN = !req_f3[0] ;
  assign intDiv_rg_denom_is_signed$EN = MUX_intDiv_rg_state$write_1__SEL_1 ;

  // register intDiv_rg_n
  always@(MUX_intDiv_rg_denom2$write_1__SEL_1 or
	  MUX_intDiv_rg_n$write_1__VAL_1 or
	  MUX_intDiv_rg_denom2$write_1__SEL_2 or
	  MUX_intDiv_rg_n$write_1__VAL_2 or WILL_FIRE_RL_intDiv_rl_start_s)
  begin
    case (1'b1) // synopsys parallel_case
      MUX_intDiv_rg_denom2$write_1__SEL_1:
	  intDiv_rg_n$D_IN = MUX_intDiv_rg_n$write_1__VAL_1;
      MUX_intDiv_rg_denom2$write_1__SEL_2:
	  intDiv_rg_n$D_IN = MUX_intDiv_rg_n$write_1__VAL_2;
      WILL_FIRE_RL_intDiv_rl_start_s: intDiv_rg_n$D_IN = 64'd1;
      default: intDiv_rg_n$D_IN =
		   64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx /* unspecified value */ ;
    endcase
  end
  assign intDiv_rg_n$EN =
	     WILL_FIRE_RL_intDiv_rl_loop1 &&
	     intDiv_rg_denom2_4_ULE_0_CONCAT_rg_v1_BITS_63__ETC___d47 ||
	     WILL_FIRE_RL_intDiv_rl_loop2 && !rg_v1_ULT_rg_v2___d55 &&
	     rg_v1_ULT_intDiv_rg_denom2_4___d59 ||
	     WILL_FIRE_RL_intDiv_rl_start_s ;

  // register intDiv_rg_numer_is_signed
  assign intDiv_rg_numer_is_signed$D_IN = !req_f3[0] ;
  assign intDiv_rg_numer_is_signed$EN = MUX_intDiv_rg_state$write_1__SEL_1 ;

  // register intDiv_rg_quo
  always@(MUX_intDiv_rg_quo$write_1__SEL_1 or
	  MUX_intDiv_rg_quo$write_1__VAL_1 or
	  WILL_FIRE_RL_intDiv_rl_start_overflow or
	  rg_v1 or
	  WILL_FIRE_RL_intDiv_rl_start_s or
	  WILL_FIRE_RL_intDiv_rl_start_div_by_zero)
  begin
    case (1'b1) // synopsys parallel_case
      MUX_intDiv_rg_quo$write_1__SEL_1:
	  intDiv_rg_quo$D_IN = MUX_intDiv_rg_quo$write_1__VAL_1;
      WILL_FIRE_RL_intDiv_rl_start_overflow: intDiv_rg_quo$D_IN = rg_v1;
      WILL_FIRE_RL_intDiv_rl_start_s: intDiv_rg_quo$D_IN = 64'd0;
      WILL_FIRE_RL_intDiv_rl_start_div_by_zero:
	  intDiv_rg_quo$D_IN = 64'hFFFFFFFFFFFFFFFF;
      default: intDiv_rg_quo$D_IN =
		   64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx /* unspecified value */ ;
    endcase
  end
  assign intDiv_rg_quo$EN =
	     MUX_intDiv_rg_quo$write_1__SEL_1 ||
	     WILL_FIRE_RL_intDiv_rl_start_overflow ||
	     WILL_FIRE_RL_intDiv_rl_start_s ||
	     WILL_FIRE_RL_intDiv_rl_start_div_by_zero ;

  // register intDiv_rg_quoIsNeg
  assign intDiv_rg_quoIsNeg$D_IN =
	     (intDiv_rg_numer_is_signed && intDiv_rg_denom_is_signed) ?
	       !rg_v1_BIT_63_5_EQ_rg_v2_BIT_63_0___d36 :
	       IF_intDiv_rg_numer_is_signed_THEN_rg_v1_BIT_63_ETC___d39 ;
  assign intDiv_rg_quoIsNeg$EN = CAN_FIRE_RL_intDiv_rl_start_s ;

  // register intDiv_rg_remIsNeg
  assign intDiv_rg_remIsNeg$D_IN =
	     (intDiv_rg_numer_is_signed && intDiv_rg_denom_is_signed) ?
	       rg_v1[63] :
	       intDiv_rg_numer_is_signed && rg_v1[63] ;
  assign intDiv_rg_remIsNeg$EN = CAN_FIRE_RL_intDiv_rl_start_s ;

  // register intDiv_rg_state
  always@(MUX_intDiv_rg_state$write_1__SEL_1 or
	  MUX_intDiv_rg_state$write_1__SEL_2 or
	  MUX_intDiv_rg_state$write_1__SEL_3 or
	  WILL_FIRE_RL_intDiv_rl_start_s or
	  WILL_FIRE_RL_intDiv_rl_start_overflow or
	  WILL_FIRE_RL_intDiv_rl_start_div_by_zero)
  case (1'b1)
    MUX_intDiv_rg_state$write_1__SEL_1: intDiv_rg_state$D_IN = 3'd1;
    MUX_intDiv_rg_state$write_1__SEL_2: intDiv_rg_state$D_IN = 3'd4;
    MUX_intDiv_rg_state$write_1__SEL_3: intDiv_rg_state$D_IN = 3'd3;
    WILL_FIRE_RL_intDiv_rl_start_s: intDiv_rg_state$D_IN = 3'd2;
    WILL_FIRE_RL_intDiv_rl_start_overflow ||
    WILL_FIRE_RL_intDiv_rl_start_div_by_zero:
	intDiv_rg_state$D_IN = 3'd4;
    default: intDiv_rg_state$D_IN = 3'bxxx /* unspecified value */ ;
  endcase
  assign intDiv_rg_state$EN =
	     WILL_FIRE_RL_intDiv_rl_loop2 && rg_v1_ULT_rg_v2___d55 ||
	     EN_req && req_f3[2] ||
	     WILL_FIRE_RL_intDiv_rl_loop1 &&
	     !intDiv_rg_denom2_4_ULE_0_CONCAT_rg_v1_BITS_63__ETC___d47 ||
	     WILL_FIRE_RL_intDiv_rl_start_s ||
	     WILL_FIRE_RL_intDiv_rl_start_overflow ||
	     WILL_FIRE_RL_intDiv_rl_start_div_by_zero ;

  // register rg_f3
  assign rg_f3$D_IN = req_f3 ;
  assign rg_f3$EN = EN_req ;

  // register rg_is_OP_not_OP_32
  assign rg_is_OP_not_OP_32$D_IN = req_is_OP_not_OP_32 ;
  assign rg_is_OP_not_OP_32$EN = EN_req ;

  // register rg_result
  assign rg_result$D_IN =
	     (rg_is_OP_not_OP_32 && rg_f3 == 3'b0) ?
	       rg_v1_MUL_rg_v2___d105[63:0] :
	       v__h4358 ;
  assign rg_result$EN = rg_state == 2'd0 ;

  // register rg_state
  assign rg_state$D_IN = EN_req ? MUX_rg_state$write_1__VAL_1 : 2'd1 ;
  assign rg_state$EN = EN_req || WILL_FIRE_RL_rl_mul ;

  // register rg_v1
  always@(EN_req or
	  MUX_rg_v1$write_1__VAL_1 or
	  MUX_rg_v1$write_1__SEL_2 or
	  MUX_rg_v1$write_1__VAL_2 or
	  WILL_FIRE_RL_intDiv_rl_start_s or
	  MUX_rg_v1$write_1__VAL_3 or WILL_FIRE_RL_intDiv_rl_start_overflow)
  case (1'b1)
    EN_req: rg_v1$D_IN = MUX_rg_v1$write_1__VAL_1;
    MUX_rg_v1$write_1__SEL_2: rg_v1$D_IN = MUX_rg_v1$write_1__VAL_2;
    WILL_FIRE_RL_intDiv_rl_start_s: rg_v1$D_IN = MUX_rg_v1$write_1__VAL_3;
    WILL_FIRE_RL_intDiv_rl_start_overflow: rg_v1$D_IN = 64'd0;
    default: rg_v1$D_IN =
		 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx /* unspecified value */ ;
  endcase
  assign rg_v1$EN =
	     MUX_rg_v1$write_1__SEL_2 || EN_req ||
	     WILL_FIRE_RL_intDiv_rl_start_s ||
	     WILL_FIRE_RL_intDiv_rl_start_overflow ;

  // register rg_v2
  assign rg_v2$D_IN =
	     EN_req ?
	       MUX_rg_v2$write_1__VAL_1 :
	       MUX_intDiv_rg_denom2$write_1__VAL_3 ;
  assign rg_v2$EN = EN_req || WILL_FIRE_RL_intDiv_rl_start_s ;

  // remaining internal signals
  assign IF_intDiv_rg_numer_is_signed_THEN_rg_v1_BIT_63_ETC___d39 =
	     intDiv_rg_numer_is_signed ?
	       rg_v1[63] :
	       intDiv_rg_denom_is_signed && rg_v2[63] ;
  assign IF_rg_f3_4_BIT_1_02_THEN_rg_v1_ELSE_intDiv_rg__ETC___d203 =
	     rg_f3[1] ? rg_v1 : intDiv_rg_quo ;
  assign IF_rg_f3_4_BIT_1_02_THEN_rg_v1_ELSE_intDiv_rg__ETC__q9 =
	     IF_rg_f3_4_BIT_1_02_THEN_rg_v1_ELSE_intDiv_rg__ETC___d203[31:0] ;
  assign IF_rg_v1_BIT_63_5_EQ_rg_v2_BIT_63_0_6_THEN_pro_ETC__q8 =
	     rg_v1_BIT_63_5_EQ_rg_v2_BIT_63_0___d36 ?
	       prod__h4378 :
	       prod___1__h4488 ;
  assign IF_rg_v1_BIT_63_5_THEN_INV_rg_v1_08_PLUS_1_09__ETC___d110 =
	     rg_v1[63] ? b__h5156 : rg_v1 ;
  assign IF_rg_v1_BIT_63_THEN_prod___1166_ELSE_prod098__q6 =
	     rg_v1[63] ? prod___1__h5166 : prod__h5098 ;
  assign IF_rg_v2_BIT_63_0_THEN_INV_rg_v2_13_PLUS_1_14__ETC___d115 =
	     rg_v2[63] ? b__h4477 : rg_v2 ;
  assign SEXT_rg_v1_BITS_31_TO_0_49_87_MUL_SEXT_rg_v2_B_ETC___d189 =
	     { {32{rg_v1_BITS_31_TO_0__q3[31]}}, rg_v1_BITS_31_TO_0__q3 } *
	     { {32{rg_v2_BITS_31_TO_0__q4[31]}}, rg_v2_BITS_31_TO_0__q4 } ;
  assign SEXT_rg_v1_BITS_31_TO_0_49_87_MUL_SEXT_rg_v2_B_ETC__q5 =
	     SEXT_rg_v1_BITS_31_TO_0_49_87_MUL_SEXT_rg_v2_B_ETC___d189[31:0] ;
  assign _0x0_CONCAT_IF_rg_v1_BIT_63_5_THEN_INV_rg_v1_08_ETC___d118 =
	     x__h5206 * y__h4529 ;
  assign _0x0_CONCAT_IF_rg_v1_BIT_63_5_THEN_INV_rg_v1_08_ETC___d123 =
	     x__h5290 * y__h4529 ;
  assign _0x0_CONCAT_IF_rg_v1_BIT_63_5_THEN_INV_rg_v1_08_ETC___d129 =
	     x__h5206 * y__h4696 ;
  assign _0x0_CONCAT_IF_rg_v1_BIT_63_5_THEN_INV_rg_v1_08_ETC___d133 =
	     x__h5290 * y__h4696 ;
  assign _0x0_CONCAT_IF_rg_v1_BIT_63_5_THEN_INV_rg_v1_08_ETC___d167 =
	     x__h5206 * y__h5291 ;
  assign _0x0_CONCAT_IF_rg_v1_BIT_63_5_THEN_INV_rg_v1_08_ETC___d170 =
	     x__h5290 * y__h5291 ;
  assign _0x0_CONCAT_IF_rg_v1_BIT_63_5_THEN_INV_rg_v1_08_ETC___d174 =
	     x__h5206 * y__h5393 ;
  assign _0x0_CONCAT_IF_rg_v1_BIT_63_5_THEN_INV_rg_v1_08_ETC___d178 =
	     x__h5290 * y__h5393 ;
  assign _0x0_CONCAT_rg_v1_BITS_31_TO_0_49_50_MUL_0x0_CO_ETC___d151 =
	     x__h5026 * y__h5291 ;
  assign _0x0_CONCAT_rg_v1_BITS_31_TO_0_49_50_MUL_0x0_CO_ETC___d161 =
	     x__h5026 * y__h5393 ;
  assign _0x0_CONCAT_rg_v1_BITS_63_TO_32_42_43_MUL_0x0_C_ETC___d146 =
	     x__h4975 * y__h5291 ;
  assign _0x0_CONCAT_rg_v1_BITS_63_TO_32_42_43_MUL_0x0_C_ETC___d157 =
	     x__h4975 * y__h5393 ;
  assign _theResult___fst__h6025 =
	     req_f3[0] ? _theResult___fst__h6081 : _theResult___fst__h6055 ;
  assign _theResult___fst__h6055 =
	     { {32{req_v1_BITS_31_TO_0__q1[31]}}, req_v1_BITS_31_TO_0__q1 } ;
  assign _theResult___fst__h6081 = { 32'd0, req_v1[31:0] } ;
  assign _theResult___fst__h727 =
	     intDiv_rg_denom_is_signed ? denom___1__h669 : rg_v2 ;
  assign _theResult___snd__h6026 =
	     req_f3[0] ? _theResult___snd__h6082 : _theResult___snd__h6056 ;
  assign _theResult___snd__h6056 =
	     { {32{req_v2_BITS_31_TO_0__q2[31]}}, req_v2_BITS_31_TO_0__q2 } ;
  assign _theResult___snd__h6082 = { 32'd0, req_v2[31:0] } ;
  assign _theResult___snd_fst__h722 =
	     intDiv_rg_numer_is_signed ? rg_v2 : _theResult___fst__h727 ;
  assign b__h4477 = x__h4624 + 64'd1 ;
  assign b__h5156 = x__h5248 + 64'd1 ;
  assign denom___1__h669 = rg_v2[63] ? -rg_v2 : rg_v2 ;
  assign intDiv_rg_denom2_4_ULE_0_CONCAT_rg_v1_BITS_63__ETC___d47 =
	     intDiv_rg_denom2 <= y__h3774 ;
  assign numer___1__h668 = rg_v1[63] ? x__h4051 : rg_v1 ;
  assign prod___1__h4488 = x__h4490 + 128'd1 ;
  assign prod___1__h5166 = x__h5168 + 128'd1 ;
  assign prod__h4378 = x__h4520 + y__h4521 ;
  assign prod__h5098 = x__h5198 + y__h5199 ;
  assign req_v1_BITS_31_TO_0__q1 = req_v1[31:0] ;
  assign req_v2_BITS_31_TO_0__q2 = req_v2[31:0] ;
  assign result___1__h5820 =
	     { {32{IF_rg_f3_4_BIT_1_02_THEN_rg_v1_ELSE_intDiv_rg__ETC__q9[31]}},
	       IF_rg_f3_4_BIT_1_02_THEN_rg_v1_ELSE_intDiv_rg__ETC__q9 } ;
  assign rg_v1_BITS_31_TO_0__q3 = rg_v1[31:0] ;
  assign rg_v1_BIT_63_5_EQ_rg_v2_BIT_63_0___d36 = rg_v1[63] == rg_v2[63] ;
  assign rg_v1_MUL_rg_v2___d105 = rg_v1 * rg_v2 ;
  assign rg_v1_ULT_intDiv_rg_denom2_4___d59 = rg_v1 < intDiv_rg_denom2 ;
  assign rg_v1_ULT_rg_v2___d55 = rg_v1 < rg_v2 ;
  assign rg_v2_BITS_31_TO_0__q4 = rg_v2[31:0] ;
  assign v__h4358 =
	     (rg_is_OP_not_OP_32 && rg_f3 == 3'b001) ?
	       IF_rg_v1_BIT_63_5_EQ_rg_v2_BIT_63_0_6_THEN_pro_ETC__q8[127:64] :
	       v__h4799 ;
  assign v__h4799 =
	     (rg_is_OP_not_OP_32 && rg_f3 == 3'b011) ?
	       x864_PLUS_y865__q7[127:64] :
	       v__h5078 ;
  assign v__h5078 =
	     (rg_is_OP_not_OP_32 && rg_f3 == 3'b010) ?
	       IF_rg_v1_BIT_63_THEN_prod___1166_ELSE_prod098__q6[127:64] :
	       v__h5445 ;
  assign v__h5445 =
	     (!rg_is_OP_not_OP_32 && rg_f3 == 3'b0) ?
	       v__h5462 :
	       64'hFFFFFFFFFFFFFFFF ;
  assign v__h5462 =
	     { {32{SEXT_rg_v1_BITS_31_TO_0_49_87_MUL_SEXT_rg_v2_B_ETC__q5[31]}},
	       SEXT_rg_v1_BITS_31_TO_0_49_87_MUL_SEXT_rg_v2_B_ETC__q5 } ;
  assign x864_PLUS_y865__q7 = x__h4864 + y__h4865 ;
  assign x__h3895 = rg_v1 - intDiv_rg_denom2 ;
  assign x__h3981 = -intDiv_rg_quo ;
  assign x__h4051 = -rg_v1 ;
  assign x__h4066 = intDiv_rg_quo + intDiv_rg_n ;
  assign x__h4490 = ~prod__h4378 ;
  assign x__h4520 = x__h4522 + y__h4523 ;
  assign x__h4522 = x__h4524 + y__h4525 ;
  assign x__h4524 =
	     { _0x0_CONCAT_IF_rg_v1_BIT_63_5_THEN_INV_rg_v1_08_ETC___d118[63:0],
	       64'h0 } ;
  assign x__h4624 = ~rg_v2 ;
  assign x__h4864 = x__h4866 + y__h4867 ;
  assign x__h4866 = x__h4868 + y__h4869 ;
  assign x__h4868 =
	     { _0x0_CONCAT_rg_v1_BITS_63_TO_32_42_43_MUL_0x0_C_ETC___d146[63:0],
	       64'h0 } ;
  assign x__h4975 = { 32'h0, rg_v1[63:32] } ;
  assign x__h5026 = { 32'h0, rg_v1[31:0] } ;
  assign x__h5168 = ~prod__h5098 ;
  assign x__h5198 = x__h5200 + y__h5201 ;
  assign x__h5200 = x__h5202 + y__h5203 ;
  assign x__h5202 =
	     { _0x0_CONCAT_IF_rg_v1_BIT_63_5_THEN_INV_rg_v1_08_ETC___d167[63:0],
	       64'h0 } ;
  assign x__h5206 =
	     { 32'h0,
	       IF_rg_v1_BIT_63_5_THEN_INV_rg_v1_08_PLUS_1_09__ETC___d110[63:32] } ;
  assign x__h5248 = ~rg_v1 ;
  assign x__h5290 =
	     { 32'h0,
	       IF_rg_v1_BIT_63_5_THEN_INV_rg_v1_08_PLUS_1_09__ETC___d110[31:0] } ;
  assign y__h3774 = { 1'd0, rg_v1[63:1] } ;
  assign y__h4521 =
	     { 64'h0,
	       _0x0_CONCAT_IF_rg_v1_BIT_63_5_THEN_INV_rg_v1_08_ETC___d133[63:0] } ;
  assign y__h4523 =
	     { 32'h0,
	       _0x0_CONCAT_IF_rg_v1_BIT_63_5_THEN_INV_rg_v1_08_ETC___d129[63:0],
	       32'h0 } ;
  assign y__h4525 =
	     { 32'h0,
	       _0x0_CONCAT_IF_rg_v1_BIT_63_5_THEN_INV_rg_v1_08_ETC___d123[63:0],
	       32'h0 } ;
  assign y__h4529 =
	     { 32'h0,
	       IF_rg_v2_BIT_63_0_THEN_INV_rg_v2_13_PLUS_1_14__ETC___d115[63:32] } ;
  assign y__h4696 =
	     { 32'h0,
	       IF_rg_v2_BIT_63_0_THEN_INV_rg_v2_13_PLUS_1_14__ETC___d115[31:0] } ;
  assign y__h4865 =
	     { 64'h0,
	       _0x0_CONCAT_rg_v1_BITS_31_TO_0_49_50_MUL_0x0_CO_ETC___d161[63:0] } ;
  assign y__h4867 =
	     { 32'h0,
	       _0x0_CONCAT_rg_v1_BITS_63_TO_32_42_43_MUL_0x0_C_ETC___d157[63:0],
	       32'h0 } ;
  assign y__h4869 =
	     { 32'h0,
	       _0x0_CONCAT_rg_v1_BITS_31_TO_0_49_50_MUL_0x0_CO_ETC___d151[63:0],
	       32'h0 } ;
  assign y__h5199 =
	     { 64'h0,
	       _0x0_CONCAT_IF_rg_v1_BIT_63_5_THEN_INV_rg_v1_08_ETC___d178[63:0] } ;
  assign y__h5201 =
	     { 32'h0,
	       _0x0_CONCAT_IF_rg_v1_BIT_63_5_THEN_INV_rg_v1_08_ETC___d174[63:0],
	       32'h0 } ;
  assign y__h5203 =
	     { 32'h0,
	       _0x0_CONCAT_IF_rg_v1_BIT_63_5_THEN_INV_rg_v1_08_ETC___d170[63:0],
	       32'h0 } ;
  assign y__h5291 = { 32'h0, rg_v2[63:32] } ;
  assign y__h5393 = { 32'h0, rg_v2[31:0] } ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        cfg_verbosity <= `BSV_ASSIGNMENT_DELAY 4'd0;
	intDiv_rg_state <= `BSV_ASSIGNMENT_DELAY 3'd0;
      end
    else
      begin
        if (cfg_verbosity$EN)
	  cfg_verbosity <= `BSV_ASSIGNMENT_DELAY cfg_verbosity$D_IN;
	if (intDiv_rg_state$EN)
	  intDiv_rg_state <= `BSV_ASSIGNMENT_DELAY intDiv_rg_state$D_IN;
      end
    if (intDiv_rg_denom2$EN)
      intDiv_rg_denom2 <= `BSV_ASSIGNMENT_DELAY intDiv_rg_denom2$D_IN;
    if (intDiv_rg_denom_is_signed$EN)
      intDiv_rg_denom_is_signed <= `BSV_ASSIGNMENT_DELAY
	  intDiv_rg_denom_is_signed$D_IN;
    if (intDiv_rg_n$EN) intDiv_rg_n <= `BSV_ASSIGNMENT_DELAY intDiv_rg_n$D_IN;
    if (intDiv_rg_numer_is_signed$EN)
      intDiv_rg_numer_is_signed <= `BSV_ASSIGNMENT_DELAY
	  intDiv_rg_numer_is_signed$D_IN;
    if (intDiv_rg_quo$EN)
      intDiv_rg_quo <= `BSV_ASSIGNMENT_DELAY intDiv_rg_quo$D_IN;
    if (intDiv_rg_quoIsNeg$EN)
      intDiv_rg_quoIsNeg <= `BSV_ASSIGNMENT_DELAY intDiv_rg_quoIsNeg$D_IN;
    if (intDiv_rg_remIsNeg$EN)
      intDiv_rg_remIsNeg <= `BSV_ASSIGNMENT_DELAY intDiv_rg_remIsNeg$D_IN;
    if (rg_f3$EN) rg_f3 <= `BSV_ASSIGNMENT_DELAY rg_f3$D_IN;
    if (rg_is_OP_not_OP_32$EN)
      rg_is_OP_not_OP_32 <= `BSV_ASSIGNMENT_DELAY rg_is_OP_not_OP_32$D_IN;
    if (rg_result$EN) rg_result <= `BSV_ASSIGNMENT_DELAY rg_result$D_IN;
    if (rg_state$EN) rg_state <= `BSV_ASSIGNMENT_DELAY rg_state$D_IN;
    if (rg_v1$EN) rg_v1 <= `BSV_ASSIGNMENT_DELAY rg_v1$D_IN;
    if (rg_v2$EN) rg_v2 <= `BSV_ASSIGNMENT_DELAY rg_v2$D_IN;
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    cfg_verbosity = 4'hA;
    intDiv_rg_denom2 = 64'hAAAAAAAAAAAAAAAA;
    intDiv_rg_denom_is_signed = 1'h0;
    intDiv_rg_n = 64'hAAAAAAAAAAAAAAAA;
    intDiv_rg_numer_is_signed = 1'h0;
    intDiv_rg_quo = 64'hAAAAAAAAAAAAAAAA;
    intDiv_rg_quoIsNeg = 1'h0;
    intDiv_rg_remIsNeg = 1'h0;
    intDiv_rg_state = 3'h2;
    rg_f3 = 3'h2;
    rg_is_OP_not_OP_32 = 1'h0;
    rg_result = 64'hAAAAAAAAAAAAAAAA;
    rg_state = 2'h2;
    rg_v1 = 64'hAAAAAAAAAAAAAAAA;
    rg_v2 = 64'hAAAAAAAAAAAAAAAA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on

  // handling of system tasks

  // synopsys translate_off
  always@(negedge CLK)
  begin
    #0;
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_mul && cfg_verbosity > 4'd1)
	$display("    RISCV_MBox.rl_mul");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_mul && (!rg_is_OP_not_OP_32 || rg_f3 != 3'b0) &&
	  (!rg_is_OP_not_OP_32 || rg_f3 != 3'b001) &&
	  (!rg_is_OP_not_OP_32 || rg_f3 != 3'b011) &&
	  (!rg_is_OP_not_OP_32 || rg_f3 != 3'b010) &&
	  (rg_is_OP_not_OP_32 || rg_f3 != 3'b0))
	begin
	  v__h5568 = $stime;
	  #0;
	end
    v__h5562 = v__h5568 / 32'd10;
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_mul && (!rg_is_OP_not_OP_32 || rg_f3 != 3'b0) &&
	  (!rg_is_OP_not_OP_32 || rg_f3 != 3'b001) &&
	  (!rg_is_OP_not_OP_32 || rg_f3 != 3'b011) &&
	  (!rg_is_OP_not_OP_32 || rg_f3 != 3'b010) &&
	  (rg_is_OP_not_OP_32 || rg_f3 != 3'b0))
	$display("%0d: ERROR: RISCV_MBox.rl_mul: illegal f3.", v__h5562);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_mul && (!rg_is_OP_not_OP_32 || rg_f3 != 3'b0) &&
	  (!rg_is_OP_not_OP_32 || rg_f3 != 3'b001) &&
	  (!rg_is_OP_not_OP_32 || rg_f3 != 3'b011) &&
	  (!rg_is_OP_not_OP_32 || rg_f3 != 3'b010) &&
	  (rg_is_OP_not_OP_32 || rg_f3 != 3'b0))
	$display("    f3 0x%0h  v1 0x%0h  v2 0x%0h", rg_f3, rg_v1, rg_v2);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_mul && (!rg_is_OP_not_OP_32 || rg_f3 != 3'b0) &&
	  (!rg_is_OP_not_OP_32 || rg_f3 != 3'b001) &&
	  (!rg_is_OP_not_OP_32 || rg_f3 != 3'b011) &&
	  (!rg_is_OP_not_OP_32 || rg_f3 != 3'b010) &&
	  (rg_is_OP_not_OP_32 || rg_f3 != 3'b0))
	$finish(32'd1);
  end
  // synopsys translate_on
endmodule  // mkRISCV_MBox

