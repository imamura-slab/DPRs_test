`default_nettype none
module cntdown_seg7
   (
    input wire 	      clk,
    input wire 	      n_rst,
    input wire 	      one_sec_flag,
    output wire [3:0] seg7val_out
    );

   reg [3:0] 		     seg7val_reg;


   always_ff@(posedge clk) begin
      if(!n_rst) begin
	 seg7val_reg <= '0;
      end
      else begin
	 if(one_sec_flag) begin
	    if(seg7val_reg == 'd0) begin
	       seg7val_reg <= 'd9;
	    end
	    else begin
	       seg7val_reg <= seg7val_reg - 'd1;
	    end
	 end
	 else begin
	    seg7val_reg[0] <= seg7val_reg[0];
	 end // else: !if(one_sec_flag)
      end // else: !if(!n_rst)
   end // always_ff@ (posedge clk)

   assign seg7val_out = seg7val_reg;
   
endmodule // cntdown_seg7
`default_nettype wire
