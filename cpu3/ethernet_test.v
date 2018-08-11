`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    ethernet_test
// �������˳�������ǧ����̫��udpͨ�Ų��ԣ�ǧ����̫��ͨ��ʱ��FPGA��RTL8211֮��ͨ�Žӿ�ΪGMII
//      �˳������ð�����̫������ͨ�ţ�������̫��MII�ӿ�udpͨ�ŵĳ���ο�ethernet_100
//////////////////////////////////////////////////////////////////////////////////
module ethernet_test(
					input reset_n,                           
					input  fpga_gclk,                   
					output e_reset,
//                  output CLK_25_ASIC,
                    output e_mdc,                      //MDIO��ʱ���źţ����ڶ�дPHY�ļĴ���
					inout  e_mdio,                     //MDIO�������źţ����ڶ�дPHY�ļĴ���
		
            
					input	 e_rxc,                      //125Mhz ethernet gmii rx clock
					input	 e_rxdv,	                    //GMII ����������Ч�ź�
					input	 e_rxer,	                    //GMII �������ݴ����ź�					
					input  [7:0] e_rxd,                //GMII ��������	      

					input	 e_txc,                      //25Mhz ethernet mii tx clock         
					output e_gtxc,                     //25Mhz ethernet gmii tx clock  
					output e_txen,                     //GMII ����������Ч�ź�	
					output e_txer,                     //GMII �������ݴ����ź�	
					output [3:0]led,
					output [7:0] e_txd	              //GMII �������� 
  
    );
                

wire [31:0] ram_wr_data;
wire [31:0] ram_rd_data;
wire [8:0] ram_wr_addr;
wire [8:0] ram_rd_addr;
wire [8:0] ram_rd_addr_sel;//ram����ַ��ѡһ
reg  [8:0] ram_rd_addr_temp;//�޸���һ��ַ
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
wire [15:0] rx_total_length;          //rx ��IP���ĳ���
reg [15:0] tx_total_length;          //tx ��IP���ĳ���
wire [15:0] rx_data_length;           //rx ��UDP�����ݰ�����
reg [15:0] tx_data_length;           //rx ��UDP�����ݰ�����

wire data_receive;
reg ram_wr_finish;
reg ram_self;//1:ʹ��send�ĵ�ַ 0:���Լ�����ĵ�ַ
wire data_receive_out;
reg ram_wr_finish_out;

reg [31:0] udp_data [63:0];                        //�洢�����ַ�
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

assign wea=ram_wr_finish?data_o_valid:ram_wren_i;          //ram дʹ���ź�ѡ��
assign addra=ram_wr_finish?ram_wr_addr:ram_wr_addr_i;         //ram д��ַѡ��
assign dina=ram_wr_finish?ram_wr_data:ram_wr_data_i;          //ram д����ѡ��

assign wea_out=ram_wr_finish_out?data_o_valid:ram_wren_i_out;          //ram дʹ���ź�ѡ��
assign addra_out=ram_wr_finish_out?ram_wr_addr:ram_addr_i_out;         //ram д��ַѡ��
assign dina_out=ram_wr_finish_out?ram_wr_data:ram_data_i_out;          //ram д����ѡ��

assign ram_rd_addr_sel=ram_self?ram_rd_addr:ram_rd_addr_temp;
assign ram_rd_addr_out=ram_rd_addr_out_temp;

//assign tx_data_length=data_receive?rx_data_length:16'd28;  //�������ݳ���ѡ���ж��Ƿ���յ����ݰ����ǵĻ��������յ������ݳ��ȷ���
//assign tx_total_length=data_receive?rx_total_length:16'd48;//����Frame����ѡ���ж��Ƿ���յ����ݰ����ǵĻ��������յ���Frame���ȷ���

////////udp���ͺͽ��ճ���/////////////////// 
udp u1(
	.reset_n(reset_n),
	.e_rxc(e_rxc),
	.e_rxd(e_rxd),
    .e_rxdv(e_rxdv),
	.e_txen(e_txen),
	.e_txd(e_txd),
	.e_txer(e_txer),		
	
	.data_o_valid(data_o_valid),                    //���ݽ�����Ч�ź�,д��RAM/
	.ram_wr_data(ram_wr_data),                      //���յ���32bit����д��RAM/	
	.rx_total_length(rx_total_length),              //����IP�����ܳ���/
	.rx_state(rx_state),                            //for chipscope test
	.rx_debug(rx_debug),
	.rx_data_length(rx_data_length),                //����IP�������ݳ���/	
	.ram_wr_addr(ram_wr_addr),                      //ramд���ݵ�ַ
	.data_receive(data_receive),                    //���յ���̫�����ݰ���־

	.ram_rd_data(ram_rd_data),                      //RAM������32bit����/
	.tx_state(tx_state),                            //for chipscope test

	.tx_data_length(tx_data_length),                //����IP�������ݳ���/	
	.tx_total_length(tx_total_length),              //�ӷ���IP�����ܳ���/
	.ram_rd_addr(ram_rd_addr),                       //ram�����ݵ�ַ
	.send_counter(send_counter),
	.receive_counter(receive_counter)
	);


//////////ram���ڴ洢��̫�����յ������ݻ��������///////////////////
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
//�洢�����͵��ַ�
/********************************************/
initial
begin     //���巢�͵��ַ�
	udp_data[0]<={8'h11,8'h11,8'h11,8'h11};   //�洢�ַ�HELL 
	udp_data[1]<={8'h11,8'h11,8'h11,8'h11};   //�洢�ַ�O�ո�AL 
    udp_data[2]<={8'h11,8'h11,8'h11,8'h11};   //�洢�ַ�INX�ո�
	udp_data[3]<={8'h11,8'h11,8'h11,8'h11};   //�洢�ַ�AX51 	 
	udp_data[4]<={8'h11,8'h11,8'h11,8'h11};   //�洢�ַ�6�ո��з��س��� 
	udp_data[5]<={8'h11,8'h11,8'h11,8'h11};   //�洢�ַ�6�ո��з��س���	
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


//////////RAMд��Ĭ�Ϸ��͵�����//////////////////
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
			ram_wr_finish<=1'b1;        //ramд�����
			ram_wren_i<=1'b0;
			finish_number<=1;
			end
			else begin                    //ramд��udp_data[0]~udp[4]������
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

//////////����Frame����ѡ���ж��Ƿ���յ����ݰ����ǵĻ��������յ���Frame���ȷ���//////////////////
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
