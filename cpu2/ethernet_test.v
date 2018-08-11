`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    ethernet_test
// 描述：此程序用于千兆以太网udp通信测试，千兆以太网通信时，FPGA和RTL8211之间通信接口为GMII
//      此程序不适用百兆以太网数据通信，百兆以太网MII接口udp通信的程序参考ethernet_100
//////////////////////////////////////////////////////////////////////////////////
module ethernet_test(
					input reset_n,                           
					input  fpga_gclk,                   
					output e_reset,
//                  output CLK_25_ASIC,
                    output e_mdc,                      //MDIO的时钟信号，用于读写PHY的寄存器
					inout  e_mdio,                     //MDIO的数据信号，用于读写PHY的寄存器
		
            
					input	 e_rxc,                      //125Mhz ethernet gmii rx clock
					input	 e_rxdv,	                    //GMII 接收数据有效信号
					input	 e_rxer,	                    //GMII 接收数据错误信号					
					input  [7:0] e_rxd,                //GMII 接收数据	      

					input	 e_txc,                      //25Mhz ethernet mii tx clock         
					output e_gtxc,                     //25Mhz ethernet gmii tx clock  
					output e_txen,                     //GMII 发送数据有效信号	
					output e_txer,                     //GMII 发送数据错误信号	
					output [3:0]led,
					output [7:0] e_txd	              //GMII 发送数据 
  
    );
                

wire [31:0] ram_wr_data;
wire [31:0] ram_rd_data;
wire [8:0] ram_wr_addr;
wire [8:0] ram_rd_addr;
wire [8:0] ram_rd_addr_sel;//ram读地址二选一
reg  [8:0] ram_rd_addr_temp;//修改这一地址
reg [8:0] read_addr;
wire [31:0] ram_wr_data_out;
wire [31:0] ram_rd_data_out;
wire [8:0] ram_wr_addr_out;
wire [8:0] ram_rd_addr_out;
reg [8:0] ram_rd_addr_out_temp;
reg [3:0] led;

assign e_gtxc=e_rxc;	 
assign e_reset = 1'b1; 

wire [31:0] datain_reg;
         
wire [3:0] tx_state;
wire [3:0] rx_state;
wire [3:0] rx_debug;
wire [15:0] rx_total_length;          //rx 的IP包的长度
reg [15:0] tx_total_length;          //tx 的IP包的长度
wire [15:0] rx_data_length;           //rx 的UDP的数据包长度
reg [15:0] tx_data_length;           //rx 的UDP的数据包长度

wire data_receive;
reg ram_wr_finish;
reg ram_self;//1:使用send的地址 0:用自己定义的地址
wire data_receive_out;
reg ram_wr_finish_out;

reg [31:0] udp_data [63:0];                        //存储发送字符
reg ram_wren_i;
reg [8:0] ram_wr_addr_i;
reg [31:0] ram_wr_data_i;
reg ram_wren_i_out;
reg [8:0] ram_addr_i_out;
reg [31:0] ram_data_i_out;
reg [4:0] i;
reg [4:0] k;
reg [2:0] finish_number;
reg [2:0] finish_number_1;
reg [31:0] ram_temp_1;

wire data_o_valid;
wire data_o_valid_out;
wire wea;
wire wea_out;
wire [8:0] addra;
wire [31:0] dina;
wire [8:0] addra_out;
wire [31:0] dina_out;

wire [31:0] send_counter;
wire [31:0] receive_counter;
reg [31:0] my_counter=0;
reg [31:0] other_counter=0;
reg [31:0] other_time_counter=0;
reg [31:0] time_counter=0;

assign wea=ram_wr_finish?data_o_valid:ram_wren_i;          //ram 写使能信号选择
assign addra=ram_wr_finish?ram_wr_addr:ram_wr_addr_i;         //ram 写地址选择
assign dina=ram_wr_finish?ram_wr_data:ram_wr_data_i;          //ram 写数据选择

assign wea_out=ram_wr_finish_out?data_o_valid:ram_wren_i_out;          //ram 写使能信号选择
assign addra_out=ram_wr_finish_out?ram_wr_addr:ram_addr_i_out;         //ram 写地址选择
assign dina_out=ram_wr_finish_out?ram_wr_data:ram_data_i_out;          //ram 写数据选择

assign ram_rd_addr_sel=ram_self?ram_rd_addr:ram_rd_addr_temp;
assign ram_rd_addr_out=ram_rd_addr_out_temp;

//assign tx_data_length=data_receive?rx_data_length:16'd28;  //发送数据长度选择，判断是否接收到数据包，是的话，按接收到的数据长度发送
//assign tx_total_length=data_receive?rx_total_length:16'd48;//发送Frame长度选择，判断是否接收到数据包，是的话，按接收到的Frame长度发送

////////udp发送和接收程序/////////////////// 
udp u1(
	.reset_n(reset_n),
	.e_rxc(e_rxc),
	.e_rxd(e_rxd),
    .e_rxdv(e_rxdv),
	.e_txen(e_txen),
	.e_txd(e_txd),
	.e_txer(e_txer),		
	
	.data_o_valid(data_o_valid),                    //数据接收有效信号,写入RAM/
	.ram_wr_data(ram_wr_data),                      //接收到的32bit数据写入RAM/	
	.rx_total_length(rx_total_length),              //接收IP包的总长度/
	.rx_state(rx_state),                            //for chipscope test
	.rx_debug(rx_debug),
	.rx_data_length(rx_data_length),                //接收IP包的数据长度/	
	.ram_wr_addr(ram_wr_addr),                      //ram写数据地址
	.data_receive(data_receive),                    //接收到以太网数据包标志

	.ram_rd_data(ram_rd_data),                      //RAM读出的32bit数据/
	.tx_state(tx_state),                            //for chipscope test

	.tx_data_length(tx_data_length),                //发送IP包的数据长度/	
	.tx_total_length(tx_total_length),              //接发送IP包的总长度/
	.ram_rd_addr(ram_rd_addr),                       //ram读数据地址
	.send_counter(send_counter),
	.receive_counter(receive_counter)
	);


//////////ram用于存储以太网接收到的数据或测试数据///////////////////
ram ram_inst (
  .clka(e_rxc),           // input clka
  .wea(wea),     // input [0 : 0] wea
  .addra(addra),    // input [8 : 0] addra
  .dina(dina),     // input [31 : 0] dina
  .clkb(e_rxc),           // input clkb
  .addrb(ram_rd_addr_sel),    // input [8 : 0] addrb
  .doutb(ram_rd_data)     // output [31 : 0] doutb
);

ram ram_inst_out (
  .clka(e_rxc),           // input clka
  .wea(wea_out),     // input [0 : 0] wea
  .addra(addra_out),    // input [8 : 0] addra
  .dina(dina_out),     // input [31 : 0] dina
  .clkb(e_rxc),           // input clkb
  .addrb(ram_rd_addr_out),    // input [8 : 0] addrb
  .doutb(ram_rd_data_out)     // output [31 : 0] doutb
);

/********************************************/
//存储待发送的字符
/********************************************/
initial
begin     //定义发送的字符
	udp_data[0]<={8'h11,8'h11,8'h11,8'h11};   //存储字符HELL 
	udp_data[1]<={8'h11,8'h11,8'h11,8'h11};   //存储字符O空格AL 
    udp_data[2]<={8'h11,8'h11,8'h11,8'h11};   //存储字符INX空格
	udp_data[3]<={8'h11,8'h11,8'h11,8'h11};   //存储字符AX51 	 
	udp_data[4]<={8'h11,8'h11,8'h11,8'h11};   //存储字符6空格换行符回车符 
	udp_data[5]<={8'h11,8'h11,8'h11,8'h11};   //存储字符6空格换行符回车符	
	udp_data[6]<={8'h22,8'h22,8'h22,8'h22};
	udp_data[7]<={8'h22,8'h22,8'h22,8'h22};
	udp_data[8]<={8'h22,8'h22,8'h22,8'h22};
	udp_data[9]<={8'h22,8'h22,8'h22,8'h22};
	udp_data[10]<={8'h22,8'h22,8'h22,8'h22};
	udp_data[11]<={8'h22,8'h22,8'h22,8'h22};
	udp_data[12]<={8'h33,8'h33,8'h33,8'h33};
	udp_data[13]<={8'h33,8'h33,8'h33,8'h33};
	udp_data[14]<={8'h33,8'h33,8'h33,8'h33};
	udp_data[15]<={8'h33,8'h33,8'h33,8'h33};
	udp_data[16]<={8'h33,8'h33,8'h33,8'h33};
	udp_data[17]<={8'h33,8'h33,8'h33,8'h33};
	ram_wr_finish<=1'b0;
	ram_wr_finish_out<=1'b0;
	ram_wr_addr_i<=0;
	ram_wr_data_i<=0;
	i<=0;
	k<=0;
	finish_number<=0;
	finish_number_1<=0;
	ram_self<=1;
	led<=4'b1111;
	tx_total_length<=16'd52;
	 tx_data_length<=16'd32;
end 


//////////RAM写入默认发送的数据//////////////////
always@(posedge e_rxc)
begin	
	time_counter <= time_counter+1;
	//led <= send_counter[3:0];
	if(reset_n==1'b0) begin
		ram_wr_finish<=1'b0;
		ram_wr_addr_i<=0;
		ram_wr_data_i<=0;
		i<=0;
		k<=0;
		finish_number<=0;
		ram_self<=1;
	end
	else begin
		case(finish_number)
		0:begin
			if(i==18) begin
			ram_wr_finish<=1'b1;        //ram写入完毕
			ram_wren_i<=1'b0;
			finish_number<=1;
			end
			else begin                    //ram写入udp_data[0]~udp[4]的数据
				ram_wren_i<=1'b1;
				ram_wr_addr_i<=ram_wr_addr_i+1'b1;
				ram_wr_data_i<=udp_data[i];
				i<=i+1'b1;
			end
		end
		/*1:begin
			if(ram_wren_i==0)
				begin
				ram_wr_finish<=1'b0;
				ram_wren_i<=1'b1;
				ram_self<=1'b0;
				ram_rd_addr_temp<=8;
				ram_wr_addr_i<=2;
				//ram_wr_data_i<=udp_data[7];
				ram_temp_1<=ram_rd_data;
				//ram_wr_data_i<=ram_rd_data;
				end
			else
				begin
				ram_wr_data_i<=ram_temp_1;
				ram_wren_i<=1'b0;
				ram_self<=1'b1;
				ram_wr_finish<=1'b1;
				ram_wr_addr_i<=0;
				ram_wr_data_i<=0;
				finish_number<=2;
				end
		end*/
		1:begin
			//ram_self<=1'b0;
			//ram_rd_addr_temp<=9;
			finish_number<=2;
		end
		2:begin
			//ram_temp_1<=ram_rd_data;
			ram_wr_finish<=1'b0;
			ram_wren_i<=1'b1;
			if(send_counter!=my_counter)begin
				if(k==0)begin
					if(send_counter%2==0)begin
						ram_wr_addr_i<=2;
					end
					else begin
						ram_wr_addr_i<=8;
					end
					ram_wr_data_i<=time_counter;
					k<=1;
				end
				else if(k==1)begin
					if(send_counter%2==0)begin
						ram_wr_addr_i<=4;
					end
					else begin
						ram_wr_addr_i<=10;
					end
					ram_wr_data_i<=send_counter;
					k<=2;
				end
				else if(k==2)begin
					k<=0;
					finish_number<=3;
				end
				//finish_number<=3;
				ram_self<=1'b1;
			end
		end
		3:begin
			my_counter <= my_counter + 1;
			//ram_self<=1'b1;
			finish_number<=1;
		end
		/*3:begin
			ram_wren_i<=1'b0;
			ram_wr_finish<=1'b1;
			ram_wr_addr_i<=0;
			ram_wr_data_i<=0;
			finish_number<=4;
		end*/
		default:begin
			//ram_wr_finish<=1'b1;
		end
		endcase
	end
	if(other_counter!=receive_counter)begin
		case(finish_number_1)
		0:begin
			ram_wr_finish_out<=1'b1;
			ram_rd_addr_out_temp<=3;
			finish_number_1<=1;
			other_time_counter<=0;
		end
		1:begin
			led <=ram_rd_data_out[3:0];
			time_counter<=ram_rd_data_out;
			finish_number_1<=2;
		end
		2:begin
			finish_number_1<=0;
			other_counter<=other_counter+1;
		end
		default:;
		endcase
	end
end 

always@(posedge e_rxc)
begin
	/*if(reset_n==1'b0) begin
		led <= 4'b1111;
	end
	if(rx_debug==4'd1)
	begin
		led <= 4'b0000;
	end
	if(rx_debug==4'd2)
	begin
		led <= 4'b0001;
	end
	if(rx_debug==4'd3)
	begin
		led <= 4'b0010;
	end
	if(rx_debug==4'd4)
	begin
		led <= 4'b0011;
	end
	if(rx_debug==4'd5)
	begin
		led <= 4'b0100;
	end
	if(rx_debug==4'd6)
	begin
		led <= 4'b0101;
	end
	if(rx_debug==4'd7)
	begin
		led <= 4'b0110;
	end
	if(rx_debug==4'd8)
	begin
		led <= 4'b0111;
	end*/
	/*if(rx_debug==4'd9)
	begin
		led <= 4'b1000;
	end
	case(rx_debug)
		4'd1:led <= 4'b0000;		
		4'd2:led <= 4'b0001;
		4'd3:led <= 4'b0010;
		4'd4:led <= 4'b0011;
		4'd5:led <= 4'b0100;
		4'd6:led <= 4'b0101;
		4'd7:led <= 4'b0110;
		4'd8:led <= 4'b0111;
		4'd9:led <= 4'b1000;
		default;
	endcase*/
	//led<=ram_rd_data_out;
	/*if(reset_n==1'b0) begin
		finish_number_1<=0;
	end
	case(finish_number_1)
	0:begin
		led <= 4'b1111;
		ram_wr_finish_out<=1'b1;
		ram_rd_addr_out_temp<=3;
		finish_number_1<=1;
	end
	1:begin
		finish_number_1<=2;
	end
	2:begin
		if(ram_rd_data_out==32'h33333333) begin
			//led <= ram_rd_data_out[3:0];
			led <= 4'b1100;
		end
		//led <= ram_wr_data;
	end
	default:;
	endcase*/
	//led <= receive_counter[3:0];
	/*if(other_counter!=receive_counter)begin
		case(finish_number_1)
		0:begin
			ram_wr_finish_out<=1'b1;
			ram_rd_addr_out_temp<=3;
			finish_number_1<=1;
		end
		1:begin
			led <=ram_rd_data_out[3:0];
			finish_number_1<=2;
		end
		2:begin
			finish_number_1<=0;
			other_counter<=other_counter+1;
		end
		default:;
		endcase
	end*/
end

//////////发送Frame长度选择，判断是否接收到数据包，是的话，按接收到的Frame长度发送//////////////////
always@(negedge e_rxc)
begin	
  if(reset_n==1'b0) begin
     tx_total_length<=16'd52;
	 tx_data_length<=16'd32;
  end
  else begin
     if(data_receive==1'b1) begin
        tx_total_length<=rx_total_length; 
		tx_data_length<=rx_data_length;
     end
  end
end

endmodule
