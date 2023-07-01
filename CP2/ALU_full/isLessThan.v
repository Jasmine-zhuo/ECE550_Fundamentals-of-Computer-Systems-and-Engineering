module isLessThan(signa,signb,signr,isLessThan);

   input signa,signb,signr;
	output isLessThan;

//CSA_32 CSA_321(data_operandA[31:0],~data_operandB[31:0],cin,diff[31:0],cout);
and andl1(and1,~signa,~signb,signr);
and andl2(and2,signa,~signb);
and andl3(and3,signa,signb,signr);
or or2(isLessThan,and1,and2,and3);

//assign isLessThan=(sub_result[31])? 0:1;

endmodule
